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
import meetings.beans.Mailer;
import meetings.utilities.ConnectionProviderToDB;

/**
 *
 * @author Sanket
 */
public class Signup extends HttpServlet {

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
            String to = "exavalu@gmail.com";
            String empId = request.getParameter("empId");

            String empName = request.getParameter("empName");

            String deptName = request.getParameter("deptName");

            String email = request.getParameter("email");

            String password = request.getParameter("password");

            String phone = request.getParameter("phone");

            //Establish connection to DB
            InputStream inputFile = getServletContext().getResourceAsStream("/WEB-INF/db_param.properties");

            System.err.println("File Path = " + inputFile);

            Connection con = ConnectionProviderToDB.getConnection(inputFile);

            System.out.println("Connection established::" + con);

//Write SQL
            System.out.println("ID entered: " + empId);
            PreparedStatement stmt1 = con.prepareStatement("SELECT * FROM employee where empId=?");
            stmt1.setString(1, empId);
            System.out.println("Sql to execute=" + stmt1);
            ResultSet rs = stmt1.executeQuery();
            if (rs.next()) {

                System.out.println("Employee ID already exists. Please Login...........");
                request.setAttribute("error1", "Employee ID already exists. Please Login");
                RequestDispatcher rd = request.getRequestDispatcher("Signup.jsp");
                rd.include(request, response);

            } else {

                PreparedStatement stmt2 = con.prepareStatement("SELECT * FROM employee where empId=? and email=?");
                stmt2.setString(1, empId);
                stmt2.setString(2, email);
                System.out.println("Sql to execute=" + stmt2);
                ResultSet rs2 = stmt2.executeQuery();
                if (rs2.next()) {

                    System.out.println("Invalid Email. Please use a different one...........");
                    request.setAttribute("error1", "Invalid Email. Please use a different one");
                    RequestDispatcher rd = request.getRequestDispatcher("Signup.jsp");
                    rd.include(request, response);

                } else {

                    PreparedStatement stmt = con.prepareStatement("insert into employee values(?,?,?,?,?,?)");

                    stmt.setString(1, empId);

                    stmt.setString(2, empName);

                    stmt.setString(3, deptName);

                    stmt.setString(4, email);

                    stmt.setString(5, password);

                    stmt.setString(6, phone);

                    System.out.println("Sql to execute=" + stmt);

                    // execute SQL
                    int i = stmt.executeUpdate();

                    if (i > 0) {

                        //user present
                        System.out.println("SignUp Successful...........");
                        HttpSession session = request.getSession();
                        RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");

                        rd.forward(request, response);

                    } else {

                        //failed validation
                        System.out.println("Signup not Successful...........");

                        RequestDispatcher rd = request.getRequestDispatcher("Signup.jsp");

                        rd.forward(request, response);

                    }

                }
            }
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
            Logger.getLogger(Signup.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(Signup.class.getName()).log(Level.SEVERE, null, ex);
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
