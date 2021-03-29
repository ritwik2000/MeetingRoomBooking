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
import meetings.beans.Employee;
import meetings.utilities.ConnectionProviderToDB;

/**
 *
 * @author Sanket
 */
public class Login extends HttpServlet {

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
            
            
            String email = request.getParameter("email");
            
            String password = request.getParameter("password");
            

            //Establish connection to DB

          InputStream inputFile = getServletContext().getResourceAsStream("/WEB-INF/db_param.properties");

           System.err.println("File Path = "+inputFile);

            Connection con = ConnectionProviderToDB.getConnection(inputFile);

           

            System.out.println("Connection established::"+con);

//Write SQL

           

           PreparedStatement stmt = con.prepareStatement("SELECT * FROM employee where email=?");

            stmt.setString(1, email);

//            stmt.setString(2, password);
            System.out.println("Sql to execute=" + stmt);

            // execute SQL
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                PreparedStatement stmt1 = con.prepareStatement("SELECT * FROM employee where email=? and password=?");

                stmt1.setString(1, email);

                stmt1.setString(2, password);

                System.out.println("Sql to execute=" + stmt1);

                ResultSet rs1 = stmt1.executeQuery();

                if (rs1.next()) {

                    //user present
                    System.out.println("Login Successful...........");

                    HttpSession session = request.getSession();
                    Employee employee = new Employee();
                    employee.setEmpName(rs1.getString("empName"));
                    employee.setEmpId(rs1.getString("empID"));
                    employee.setEmail(rs1.getString("email"));
                    employee.setPhone(rs1.getString("phone"));
                    employee.setDeptId(rs1.getString("deptId"));
                    session.setAttribute("employee", employee);

                    RequestDispatcher rd = request.getRequestDispatcher("Home2.jsp");
                    rd.forward(request, response);

                } else {

                    //failed validation
                    System.out.println("Incorrect Password...........");
                    request.setAttribute("error", "Incorrect Password");
                    RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");

                    rd.include(request, response);

                }

            } else {

                //failed validation
                System.out.println("E-mail is not registered...........");
                request.setAttribute("error", "E-mail is not registered");
                RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");

                rd.include(request, response);

            }
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