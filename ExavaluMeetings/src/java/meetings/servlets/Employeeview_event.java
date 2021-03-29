/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package meetings.servlets;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import meetings.beans.CalendarDTO;
import meetings.utilities.ConnectionProviderToDB;

/**
 *
 * @author RITWIK
 */
public class Employeeview_event extends HttpServlet {

     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try 
        {
            ArrayList<CalendarDTO> list =new ArrayList<CalendarDTO>();
            //PrintWriter out = response.getWriter();
            //InputStream propFile = getServletContext().getResourceAsStream("");
            //System.err.println("File Path = "+propFile);
            //Connection con = ConnectionProviderToDB.getConnection("C:\\Users\\Sanket\\Documents\\NetBeansProjects\\ExavaluInsuranceApplication\\src\\java\\config\\db_params.properties");
            InputStream inputFile = getServletContext().getResourceAsStream("/WEB-INF/db_param.properties");

           System.err.println("File Path = "+inputFile);

            Connection con = ConnectionProviderToDB.getConnection(inputFile);

            System.out.println("Connection established::"+con);
            
            
            String fetchBookedMeetings="select * from calendar";
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(fetchBookedMeetings);
            while(rs.next())
            {
                CalendarDTO cal=new CalendarDTO ();
                cal.setId(rs.getString("id"));
                cal.setTitle(rs.getString("title"));
                cal.setStart(rs.getString("start"));
                cal.setEnd(rs.getString("end"));
                cal.setStartTime(rs.getString("startTime"));
                cal.setEndTime(rs.getString("endTime"));
                list.add(cal);
            }
            RequestDispatcher rd=request.getRequestDispatcher("EmployeeDisplay.jsp");
            HttpSession session=request.getSession();
            session.setAttribute("list", list);
            rd.forward(request, response);
            System.out.println("Operation successful!");
        }
        catch(Exception ex)
        {
            System.out.println(ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
   

}
