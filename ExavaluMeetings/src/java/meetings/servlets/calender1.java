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
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
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
public class calender1 extends HttpServlet {

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
            String evtID = request.getParameter("evtID");
            String evtCreatorID = request.getParameter("evtCreatorID");
            String evtStartDate = request.getParameter("evtStartDate");
            String evtEndDate = request.getParameter("evtEndDate");
            String evtDescription = request.getParameter("evtDescription");
            String evtBackgroundColor = request.getParameter("evtBackgroundColor");
            String evtForegroundColor = request.getParameter("evtForegroundColor");
            InputStream inputFile = getServletContext().getResourceAsStream("/WEB-INF/db_param.properties");
            System.err.println("File Path = " + inputFile);

            Connection con = ConnectionProviderToDB.getConnection(inputFile);

            System.out.println("Connection established::" + con);
            PreparedStatement stmt = con.prepareStatement("insert into calenderexam values(?,?,?,?,?,?,?)");
            stmt.setString(1, evtID);

            stmt.setString(2, evtCreatorID);

            stmt.setString(3, evtStartDate);

            stmt.setString(4, evtEndDate);

            stmt.setString(5, evtDescription);

            stmt.setString(6, evtBackgroundColor);

            stmt.setString(7, evtForegroundColor);
            System.out.println("Sql to execute=" + stmt);

            // execute SQL
            int i = stmt.executeUpdate();
            if (i > 0) {

                //user present
                System.out.println("Registration Successful...........");
                HttpSession session = request.getSession();
                RequestDispatcher rd = request.getRequestDispatcher("#");
             //   response.sendRedirect("add_event.jsp?message=succ");

                rd.forward(request, response);

            } else {

                //failed validation
                System.out.println("Registration not Successful...........");

                //  RequestDispatcher rd=request.getRequestDispatcher("RegistrationForm.jsp");
                RequestDispatcher rd = request.getRequestDispatcher("Home2.jsp");

                rd.forward(request, response);

            }

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
