<%@page import="meetings.beans.Employee"%>
<%@page import="meetings.beans.CalendarDTO"%>
<%@page import="java.util.Iterator"%>


<%@page import="java.util.Iterator"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html lang="en" class="h-100">
    <head>
        <script type="text/javascript">
            window.history.forward();
            function noBack()
            {
                window.onbeforeunload = function () {
                    return "Your work will be lost.";
                };
            }
        </script>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
        <meta name="generator" content="Hugo 0.80.0">
        <title>BookedMeetings</title>
        <link rel='stylesheet' id='sk-style-css'  href='https://cdn.meetingroomapp.com/website/themes/meetingroomapp/static/css/style.css?ver=1.3.6' type='text/css' media='screen' />
        <script type='text/javascript' src='https://cdn.meetingroomapp.com/website/themes/meetingroomapp/static/js/modernizr.min.js?ver=1.3.6'></script>
        <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/cover/">
        <!-- Bootstrap core CSS -->
        <link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <meta name="theme-color" content="#7952b3">
        <style>
            .bd-placeholder-img {
                font-size: 1.125rem;
                text-anchor: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                user-select: none;
            }

            @media (min-width: 768px) {
                .bd-placeholder-img-lg {
                    font-size: 3.5rem;
                }
            }
        </style>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <!-- Custom styles for this template -->
        <link href="css/DisplayPolicies.css" rel="stylesheet">
        <!--    <link href="css/substitute_home_css_2.css" rel="stylesheet">-->

    </head>
    <body class="page-template page-template-template-contact page-template-template-contact-php page page-id-18 en page-subpage" class="d-flex h-100 text-center">
        
 <% Employee employee = (Employee) request.getSession().getAttribute("employee");%>
        <div class="header">
            
            <div class="b-top-line">
                <div class="b-top-line__inner">
                    <p class="b-top-line__langs">
                        <a href="#langs" class="b-top-line__lang en" data-fancybox><span
                                class="b-top-line__lang-name">English</span></a>
                    </p>
                    <div class="b-top-line__controls">
                        <div class="m-controls">
                            <ul class="m-controls__list">
                                <!--                            <li class="m-controls__item is-help">
                                                                <a href="Signup.jsp"
                                                                    class="m-controls__link">SignUp</a>
                                                            </li>-->
                                <li class="m-controls__item is-login">
                                    <a href="Logout" title="Logout"><img alt="Logout" src="images/logooutLogo.jpg" height="50" width="50"></a>                    
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="header__inner">

                <p class="header__logo">
                    <a href="">
                        <img src="images/download (1).png" alt="MeetingRoomApp" width="271" height="32" />
                    </a>
                </p>

                <div id="menu-main" class="m-main">
                    <a href="#" class="m-main__toggle">
                        <span class="m-main__toggle-icon"></span>
                    </a>
                    
                    <ul id="menu-menu" class="m-main__list">
                        <li id="nav-menu-item-27"
                            class="m-main__item  menu-item-even menu-item-depth-0 menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="Home2.jsp" class="m-main__link">Home</a></li>
                        
<!--                        <li id="nav-menu-item-45537"
                            class="m-main__item  menu-item-even menu-item-depth-0 menu-item menu-item-type-post_type menu-item-object-sk_devices">
                            <a href="add_event.jsp"
                               class="m-main__link">Book Meeting</a></li>-->
                        <li id="nav-menu-item-25"
                            class="m-main__item  menu-item-even menu-item-depth-0 menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="CancelMeeting.jsp" class="m-main__link">Cancel Meeting</a></li>
                         <li id="nav-menu-item-26"
                            class="m-main__item  menu-item-even menu-item-depth-0 menu-item menu-item-type-post_type menu-item-object-page">
                             <a href="contrac.jsp" class="m-main__link">Contact</a></li>

                        <li id="nav-menu-item-17622"
                            class="m-main__item  menu-item-even menu-item-depth-0 hide-desktop menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="https://www.meetingroomapp.com/help-technical-support/" class="m-main__link">Help</a>
                        </li>
<!--                        <li id="nav-menu-item-22"
                            class="m-main__item  menu-item-even menu-item-depth-0 is-contact menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="view_event.jsp" class="m-main__link">Display Meeting</a>-->
                         <li class="m-main__item is-cta">
                            <a href="#" class="btn btn--green-border"><span class="btn__text">Hello <%=employee.getEmpName()%></span></a>
                        </li>
                        </li>
                    </ul>
                    
                </div>
            </div>
        </div>
        <%
            ArrayList<CalendarDTO> list = (ArrayList<CalendarDTO>) request.getSession().getAttribute("list");
            Iterator<CalendarDTO> itr = list.iterator();
        %>
        <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
            <div>
                <header>
                    <h4 class="float-md-start mb-0"><a href="SubstituteHome.jsp"></a><p><p><strong><span style="color:#44AF0B;font-weight:bold"><i>--:BOOKED MEETINGS:--</i></span></strong></p></p></h4>
                    <p> <nav class="nav nav-masthead justify-content-center float-md-end">

<!--                        <a class="btn btn-primary" aria-current="page" href="Admin.jsp">Back to HomePage</a>-->

                        <a class="nav-link" href="#">      </a>
<!--                        <a class="btn btn-danger" aria-current="page"  href="CancelMeeting.jsp">Cancel Meeting</a>-->
                    </nav></p>
                    <style>
                        body {
                            background-image: url('images/meeting-room.jpg');
                            background-repeat: no-repeat;
                            background-attachment: fixed;
                            background-size: cover;

                        }
                    </style>
                </header>
            </div>


            <div class="table-responsive" id="sailorTableArea">
                <table id="sailorTable" class="table table-striped table-bordered" width="100%">
                    <thead>
                    <th>-ID-</th>
                    <th>-TITLE- </th>
                    <th>-START-</th>
                    <th>-END-</th>
                    <th>-START TIME-</th>
                    <th>-END TIME-</th>

                    </thead>
                    <tbody>
                        <%
                            while (itr.hasNext()) {
                                CalendarDTO cal = (CalendarDTO) itr.next();
                                out.println("<tr>");
                                out.println("<td>");
                                out.println(cal.getId());
                                out.println("</td>");
                                out.println("<td>");
                                out.println(cal.getTitle());
                                out.println("</td>");
                                out.println("<td>");
                                out.println(cal.getStart());
                                out.println("</td>");
                                out.println("<td>");
                                out.println(cal.getEnd());
                                out.println("</td>");
                                out.println("<td>");
                                out.println(cal.getStartTime());
                                out.println("</td>");
                                out.println("<td>");
                                out.println(cal.getEndTime());
                                out.println("</td>");

                            }
                        %>
                    </tbody>
                </table>
                    
            </div>
                    <br><br>
<%@ include file = "footer.jsp" %>
    </body>
</html>