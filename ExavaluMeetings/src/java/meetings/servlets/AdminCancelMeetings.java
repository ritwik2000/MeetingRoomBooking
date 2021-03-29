/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package meetings.servlets;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//package meetings.servlets;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
public class AdminCancelMeetings extends HttpServlet {

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
            
            
            String id = request.getParameter("id");
            
            String title = request.getParameter("title");
            

            //Establish connection to DB

          InputStream inputFile = getServletContext().getResourceAsStream("/WEB-INF/db_param.properties");

           System.err.println("File Path = "+inputFile);

            Connection con = ConnectionProviderToDB.getConnection(inputFile);

           

            System.out.println("Connection established::"+con);

//Write SQL

           

            PreparedStatement stmt = con.prepareStatement("DELETE  FROM calendar where id=? and title=?");

            stmt.setString(1, id);
            
            stmt.setString(2, title);

            

            System.out.println("Sql to execute="+stmt);

            // execute SQL

            int i = stmt.executeUpdate();

           

            if(i>0)

            {

                //user present

                System.out.println("Cancellation Successful...........");
                HttpSession session=request.getSession(); 
                RequestDispatcher rd=request.getRequestDispatcher("Admincancelmeeting.jsp");
                
                rd.forward(request, response);

            }

            else

            {

                //failed validation

                System.out.println("Login not Successful...........");

                RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");

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

        }

        catch (SQLException ex) {

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

        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Signup.class.getName()).log(Level.SEVERE, null, ex);
        }

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

        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Signup.class.getName()).log(Level.SEVERE, null, ex);
        }

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