package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class example_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <title>Jquery FullCalendar Integration with Codeigniter using Ajax</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.4.0/fullcalendar.css\" />\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.6/css/bootstrap.css\" />\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js\"></script>\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js\"></script>\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.4.0/fullcalendar.min.js\"></script>\n");
      out.write("    <script>\n");
      out.write("    $(document).ready(function(){\n");
      out.write("        var calendar = $('#calendar').fullCalendar({\n");
      out.write("            editable:true,\n");
      out.write("            header:{\n");
      out.write("                left:'prev,next today',\n");
      out.write("                center:'title',\n");
      out.write("                right:'month,agendaWeek,agendaDay'\n");
      out.write("            },\n");
      out.write("            events:\"calender2\",\n");
      out.write("            selectable:true,\n");
      out.write("            selectHelper:true,\n");
      out.write("            select:function(start, end, allDay)\n");
      out.write("            {\n");
      out.write("                var title = prompt(\"Enter Event Title\");\n");
      out.write("                if(title)\n");
      out.write("                {\n");
      out.write("                    var start = $.fullCalendar.formatDate(start, \"Y-MM-DD HH:mm:ss\");\n");
      out.write("                    var end = $.fullCalendar.formatDate(end, \"Y-MM-DD HH:mm:ss\");\n");
      out.write("                    $.ajax({\n");
      out.write("                        url:\"calender1\",\n");
      out.write("                        type:\"POST\",\n");
      out.write("                        data:{evtDescription:title, evtStartDate:start, evtEndDate:end},\n");
      out.write("                        success:function()\n");
      out.write("                        {\n");
      out.write("                            calendar.fullCalendar('refetchEvents');\n");
      out.write("                            alert(\"Added Successfully\");\n");
      out.write("                        }\n");
      out.write("                    })\n");
      out.write("                }\n");
      out.write("            },\n");
      out.write("            editable:true,\n");
      out.write("            eventResize:function(event)\n");
      out.write("            {\n");
      out.write("                var start = $.fullCalendar.formatDate(event.start, \"Y-MM-DD HH:mm:ss\");\n");
      out.write("                var end = $.fullCalendar.formatDate(event.end, \"Y-MM-DD HH:mm:ss\");\n");
      out.write("\n");
      out.write("                var title = event.title;\n");
      out.write("\n");
      out.write("                var id = event.id;\n");
      out.write("\n");
      out.write("                $.ajax({\n");
      out.write("                    url:\"<?php echo base_url(); ?>fullcalendar/update\",\n");
      out.write("                    type:\"POST\",\n");
      out.write("                    data:{title:title, start:start, end:end, id:id},\n");
      out.write("                    success:function()\n");
      out.write("                    {\n");
      out.write("                        calendar.fullCalendar('refetchEvents');\n");
      out.write("                        alert(\"Event Update\");\n");
      out.write("                    }\n");
      out.write("                })\n");
      out.write("            },\n");
      out.write("            eventDrop:function(event)\n");
      out.write("            {\n");
      out.write("                var start = $.fullCalendar.formatDate(event.start, \"Y-MM-DD HH:mm:ss\");\n");
      out.write("                //alert(start);\n");
      out.write("                var end = $.fullCalendar.formatDate(event.end, \"Y-MM-DD HH:mm:ss\");\n");
      out.write("                //alert(end);\n");
      out.write("                var title = event.title;\n");
      out.write("                var id = event.id;\n");
      out.write("                $.ajax({\n");
      out.write("                    url:\"<?php echo base_url(); ?>fullcalendar/update\",\n");
      out.write("                    type:\"POST\",\n");
      out.write("                    data:{title:title, start:start, end:end, id:id},\n");
      out.write("                    success:function()\n");
      out.write("                    {\n");
      out.write("                        calendar.fullCalendar('refetchEvents');\n");
      out.write("                        alert(\"Event Updated\");\n");
      out.write("                    }\n");
      out.write("                })\n");
      out.write("            },\n");
      out.write("            eventClick:function(event)\n");
      out.write("            {\n");
      out.write("                if(confirm(\"Are you sure you want to remove it?\"))\n");
      out.write("                {\n");
      out.write("                    var id = event.id;\n");
      out.write("                    $.ajax({\n");
      out.write("                        url:\"<?php echo base_url(); ?>fullcalendar/delete\",\n");
      out.write("                        type:\"POST\",\n");
      out.write("                        data:{id:id},\n");
      out.write("                        success:function()\n");
      out.write("                        {\n");
      out.write("                            calendar.fullCalendar('refetchEvents');\n");
      out.write("                            alert('Event Removed');\n");
      out.write("                        }\n");
      out.write("                    })\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        });\n");
      out.write("    });\n");
      out.write("             \n");
      out.write("    </script>\n");
      out.write("</head>\n");
      out.write("    <body>\n");
      out.write("        <br />\n");
      out.write("        <h2 align=\"center\"><a href=\"#\">Jquery FullCalendar Integration with Codeigniter using Ajax</a></h2>\n");
      out.write("        <br />\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div id=\"calendar\"></div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
