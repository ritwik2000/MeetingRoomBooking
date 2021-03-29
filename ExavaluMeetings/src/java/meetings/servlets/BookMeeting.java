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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import meetings.utilities.ConnectionProviderToDB;

/**
 *
 * @author Sanket
 */
public class BookMeeting extends HttpServlet {

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
            throws ServletException, IOException, ClassNotFoundException {

        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {

            //Get the parameters from request
            String eventtitle = request.getParameter("event-title");

            String eventdesc = request.getParameter("event-desc");

            String eventallday = request.getParameter("event-all-day");

            String startinput = request.getParameter("start-input");
            String endinput = request.getParameter("end-input");
            String eventstatusbusy = request.getParameter("event-status-busy");
            String eventstatusfree = request.getParameter("event-status-free");

            //Establish connection to DB
            InputStream inputFile = getServletContext().getResourceAsStream("/WEB-INF/db_param.properties");

            System.err.println("File Path = " + inputFile);

            Connection con = ConnectionProviderToDB.getConnection(inputFile);

            System.out.println("Connection established::" + con);

//Write SQL
            PreparedStatement stmt = con.prepareStatement("insert into calender3 values(?,?,?,?,?,?,?)");

            stmt.setString(1, eventtitle);

            stmt.setString(2, eventdesc);

            stmt.setString(3, eventallday);

            stmt.setString(4, startinput);
            stmt.setString(5, endinput);
            stmt.setString(6, eventstatusbusy);
            stmt.setString(7, eventstatusfree);

            System.out.println("Sql to execute=" + stmt);

            // execute SQL
            int i = stmt.executeUpdate();

            if (i > 0) {

                //user present
                System.out.println("Registration Successful...........");
                HttpSession session = request.getSession();
                RequestDispatcher rd = request.getRequestDispatcher("#");

                rd.forward(request, response);

            } else {

                //failed validation
                System.out.println("Registration not Successful...........");

                RequestDispatcher rd = request.getRequestDispatcher("BookMeeting.jsp");

                rd.forward(request, response);

            }

//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet Login</title>");           
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Data Received  " + emailAddress+" and "+password + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
        } catch (SQLException ex) {

            System.out.println(ex.getMessage());

        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     *
     * Handles the HTTP <code>GET</code> method.
     *
     *
     *
     * @param request servlet request
     *
     * @param response servlet response
     *
     * @throws ServletException if a servlet-specific error occurs
     *
     * @throws IOException if an I/O error occurs
     *
     */
    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(BookMeeting.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    /**
     *
     * Handles the HTTP <code>POST</code> method.
     *
     *
     *
     * @param request servlet request
     *
     * @param response servlet response
     *
     * @throws ServletException if a servlet-specific error occurs
     *
     * @throws IOException if an I/O error occurs
     *
     */
    @Override

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(BookMeeting.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    /**
     *
     * Returns a short description of the servlet.
     *
     *
     *
     * @return a String containing servlet description
     *
     */
    @Override

    public String getServletInfo() {

        return "Short description";

    }// </editor-fold>

}
