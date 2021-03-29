/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package meetings.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import meetings.beans.CalendarDTO;

/**
 *
 * @author Saroj
 */
@WebServlet(name = "add_event_servlet", urlPatterns = {"/add_event_servlet"})
public class add_event_servlet extends HttpServlet {

    
      @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            CalendarDTO cd = new CalendarDTO();
            cd.setId(request.getParameter("id"));
            cd.setTitle(request.getParameter("title"));
            cd.setStart(request.getParameter("start"));
            cd.setEnd(request.getParameter("end"));
            cd.setStartTime(request.getParameter("startTime"));
            cd.setEndTime(request.getParameter("endTime"));
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exavalumeetings", "root", "root");
            int success = con.createStatement().executeUpdate("INSERT INTO `calendar`(`id`, `title`, `start`, `end`, `startTime`, `endTime`) VALUES ('" + cd.getId() + "','" + cd.getTitle() + "','" + cd.getStart() + "','" + cd.getEnd() + "','" + cd.getStartTime() + "','" + cd.getEndTime() + "')");
            if (success > 0) {
                response.sendRedirect("add_event.jsp?message=succ");
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CalendarJsonServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CalendarJsonServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
