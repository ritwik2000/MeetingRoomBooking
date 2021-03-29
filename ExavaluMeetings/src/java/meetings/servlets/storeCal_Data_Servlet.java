/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package meetings.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Darrel
 */
public class storeCal_Data_Servlet extends HttpServlet {

      
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Connection connection = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            String evtId = "";
            String username = request.getParameter("username");
            String evtStartDate = request.getParameter("start_date");
            String evtEndDate = request.getParameter("end_date");
            String evtDescription = request.getParameter("desc");
            String evtBackgroundColor = request.getParameter("bg_color");
            String evtForegroundColor = request.getParameter("fg_color");

             Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/exavalumeetings", "root", "root");

            ps = connection.prepareStatement("select MAX(evtID) + 1 FROM calenderexam");
            rs = ps.executeQuery();
            if(rs.next())
            {
                evtId = rs.getString(1);
            }

            ps = connection.prepareStatement("INSERT INTO calenderexam (evtID,evtCreatorID,evtStartDate,evtEndDate," +
                    "evtDescription,evtBackgroundColor,evtForegroundColor) VALUES (?,?,?,?,?,?,?)");
            ps.setString(1,evtId);
            ps.setString(2,username);
            ps.setString(3,evtStartDate);
            ps.setString(4,evtEndDate);
            ps.setString(5,evtDescription);
            ps.setString(6,evtBackgroundColor);
            ps.setString(7,evtForegroundColor);

            ps.executeUpdate();

            out.println("Record added with event id: " + evtId);
        } catch (Exception ex) {
            out.println("Error ->" + ex.getMessage());
        } finally {
            out.close();

            if(ps != null)
                ps.close();
            if(connection != null)
                connection.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
        } catch (SQLException ex) {
            Logger.getLogger(storeCal_Data_Servlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
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
        } catch (SQLException ex) {
            Logger.getLogger(storeCal_Data_Servlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
