/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package meetings.servlets;

import java.io.IOException;
import java.io.InputStream;
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
import meetings.utilities.ConnectionProviderToDB;

/**
 *
 * @author Darrel
 */
public class calender3 extends HttpServlet {

    

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
        StringBuilder sb = new StringBuilder();
        boolean enableDatabase = false;                        //Change to false in case you want to hard code the values

        try {
            if(enableDatabase)
            {
               // Class.forName("com.mysql.cj.jdbc.Driver");
                //connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/exavalumeetings", "root", "root");
                 InputStream inputFile = getServletContext().getResourceAsStream("/WEB-INF/db_param.properties");

           System.err.println("File Path = " + inputFile);

            Connection con = ConnectionProviderToDB.getConnection(inputFile);

            System.out.println("Connection established::" + con);
                String username = request.getParameter("evtCreatorID");
                ps = con.prepareStatement("select evtID,evtCreatorID,evtStartDate,evtEndDate,evtDescription,evtBackgroundColor," +
                        "evtForegroundColor FROM calenderexam WHERE evtCreatorID=?");
                ps.setString(1,username);
                rs = ps.executeQuery();

                while(rs.next()) {
                    sb.append("Event ID:").append(rs.getString("evtID")).append(";");
                    sb.append("Created By:").append(rs.getString("evtCreatorID")).append(";");
                    sb.append("Event Start Date:").append(rs.getString("evtStartDate")).append(";");
                    sb.append("Event End Date:").append(rs.getString("evtEndDate")).append(";");
                    sb.append("Event Description:").append(rs.getString("evtDescription")).append(";");
                    sb.append("BackgroundColor:").append(rs.getString("evtBackgroundColor")).append(";");
                    sb.append("ForegroundColor:").append(rs.getString("evtForegroundColor"));
                    sb.append("|");
                }
            }
            else
            {
                String evtID = "1";
                String evtCreatorID = "Darrel_Viegas";
                String evtStartDate = "2015-10-17 12:00:00";
                String evtEndDate = "2015-10-17 16:00:00";
                String evtDescription = "Hi this is a test event created by Me";
                String evtBackgroundColor = "#000000";
                String evtForegroundColor = "#ffffff";

                out.println("Event ID:" + evtID + ";Created By:" + evtCreatorID + ";Event Start Date:" + evtStartDate + ";" +
                        "Event End Date:" + evtEndDate + ";" + "Event Description:"+ evtDescription + ";" +
                        "BackgroundColor:" + evtBackgroundColor + ";ForegroundColor:"+ evtForegroundColor + "|");

                evtID = "2";
                evtCreatorID = "Darrel_Viegas";
                evtStartDate = "2015-10-18 12:00:00";
                evtEndDate = "2015-10-18 16:00:00";
                evtDescription = "Nothing fancy in this event. Only background and foreground colors have been changed";
                evtBackgroundColor = "#9E9E9E";
                evtForegroundColor = "#FFFFFF";

                out.println("Event ID:" + evtID + ";Created By:" + evtCreatorID + ";Event Start Date:" + evtStartDate + ";" +
                        "Event End Date:" + evtEndDate + ";" + "Event Description:"+ evtDescription + ";" +
                        "BackgroundColor:" + evtBackgroundColor + ";ForegroundColor:"+ evtForegroundColor + "|");

                evtID = "3";
                evtCreatorID = "Darrel_Viegas";
                evtStartDate = "2015-10-19 12:00:00";
                evtEndDate = "2015-10-19 16:00:00";
                evtDescription = "Go start your coding now!!!!!!!!";
                evtBackgroundColor = "#6699FF";
                evtForegroundColor = "#1A0000";

                out.println("Event ID:" + evtID + ";Created By:" + evtCreatorID + ";Event Start Date:" + evtStartDate + ";" +
                        "Event End Date:" + evtEndDate + ";" + "Event Description:"+ evtDescription + ";" +
                        "BackgroundColor:" + evtBackgroundColor + ";ForegroundColor:"+ evtForegroundColor + "|");
            }

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
            Logger.getLogger(getCal_Data_Servlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(getCal_Data_Servlet.class.getName()).log(Level.SEVERE, null, ex);
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
