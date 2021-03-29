/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package meetings.servlets;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import meetings.utilities.ConnectionProviderToDB;

/**
 *
 * @author RITWIK
 */
public class calender2 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            List progs = new ArrayList();
            String email = request.getParameter("email");

            String Event_ID = request.getParameter("evtID");
            String Created_By = request.getParameter("evtCreatorID");
            String Event_Start_Date = request.getParameter("evtStartDate");
            String Event_End_Date = request.getParameter("evtEndDate");
            String Event_Description = request.getParameter("evtDescription");
            String BackgroundColor = request.getParameter("evtBackgroundColor");
            String ForegroundColor = request.getParameter("evtForegroundColor");
            InputStream inputFile = getServletContext().getResourceAsStream("/WEB-INF/db_param.properties");

         //   System.err.println("File Path = " + inputFile);

            Connection con = ConnectionProviderToDB.getConnection(inputFile);

            System.out.println("Connection established::" + con);
            String username = "1";
            PreparedStatement stmt1 = con.prepareStatement("select * FROM calenderexam WHERE evtCreatorID=?");
                    
            stmt1.setString(1,username);
            System.out.println("Sql to execute=" + stmt1);
            ResultSet rs = stmt1.executeQuery();
            if (rs.next()) {
                HttpSession session = request.getSession();
                StringBuilder sb = new StringBuilder();
                sb.append("Event_ID").append(rs.getString("evtID")).append(";");
                sb.append("Created_By:").append(rs.getString("evtCreatorID")).append(";");
                sb.append("Event_Start_Date:").append(rs.getString("evtStartDate")).append(";");
                sb.append("Event_End_Date:").append(rs.getString("evtEndDate")).append(";");
                sb.append("Event_Description:").append(rs.getString("evtDescription")).append(";");
                sb.append("BackgroundColor:").append(rs.getString("evtBackgroundColor")).append(";");
                sb.append("ForegroundColor:").append(rs.getString("evtForegroundColor"));
                progs.add(sb);
            }
            else{
                 String evtID = "1";
                String evtCreatorID = "Darrel_Viegas";
                String evtStartDate = "2015-10-17 12:00:00";
                String evtEndDate = "2015-10-17 16:00:00";
                String evtDescription = "Hi this is a test event created by Me";
                String evtBackgroundColor = "#000000";
                String evtForegroundColor = "#ffffff";

                out.println("Event_ID:" + evtID + ";Created_By:" + evtCreatorID + ";Event_Start_Date:" + evtStartDate + ";" +
                        "Event_End_Date:" + evtEndDate + ";" + "Event_Description:"+ evtDescription + ";" +
                        "BackgroundColor:" + evtBackgroundColor + ";ForegroundColor:"+ evtForegroundColor + "|");
            }
             response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
           // PrintWriter out = response.getWriter();
            out.write(new Gson().toJson(progs));
        } catch (SQLException ex) {

            System.out.println(ex.getMessage());

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
