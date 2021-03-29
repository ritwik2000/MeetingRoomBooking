<%@page import="meetings.beans.Employee"%>
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">

<link href="css/myprofile.css" rel="stylesheet">
<html>
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

        <title>Exavalu Meeting Room App</title>

        <link rel='stylesheet' id='sk-style-css'
              href='https://cdn.meetingroomapp.com/website/themes/meetingroomapp/static/css/style.css?ver=1.3.6'
              type='text/css' media='screen' />
        <script type='text/javascript'
        src='https://cdn.meetingroomapp.com/website/themes/meetingroomapp/static/js/modernizr.min.js?ver=1.3.6'></script>
</head>

<!--<body class="home page-template page-template-template-homepage page-template-template-homepage-php page page-id-6 en page-homepage">-->
<body>

<!--    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KXWNQLB" height="0" width="0"
                          style="display:none;visibility:hidden"></iframe></noscript>-->

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
                        <li id="nav-menu-item-26"
                            class="m-main__item  menu-item-even menu-item-depth-0 menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="add_event.jsp" class="m-main__link">Book Meeting</a></li>
                        <li id="nav-menu-item-45537"
                            class="m-main__item  menu-item-even menu-item-depth-0 menu-item menu-item-type-post_type menu-item-object-sk_devices">
                            <a href="CancelMeeting.jsp"
                               class="m-main__link">Cancel Meeting</a></li>
                        <li id="nav-menu-item-25"
                            class="m-main__item  menu-item-even menu-item-depth-0 menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="Employeeview_event.jsp" class="m-main__link">Display Meeting</a></li>

                        <li id="nav-menu-item-17622"
                            class="m-main__item  menu-item-even menu-item-depth-0 hide-desktop menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="https://www.meetingroomapp.com/help-technical-support/" class="m-main__link">Help</a>
                        </li>
                        <li id="nav-menu-item-22"
                            class="m-main__item  menu-item-even menu-item-depth-0 is-contact menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="contrac.jsp" class="m-main__link">Contact</a>
                        <li class="m-main__item is-cta">
                            <a href="#" class="btn btn--green-border"><span class="btn__text">Hello <%=employee.getEmpName()%></span></a>
                        </li>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    
    <div style="background-image: url(images/myProfile.jpg)" class="main-content">
        
        <!-- Header -->
<!--        <div class="header pb-8 pt-5 pt-lg-8 d-flex align-items-center" style="min-height: 600px; background-image: url(https://raw.githack.com/creativetimofficial/argon-dashboard/master/assets/img/theme/profile-cover.jpg); background-size: cover; background-position: center top;">
             Mask -->
<!--            <span class="mask bg-gradient-default opacity-8"></span>-->
            <!-- Header container -->
            <div class="container-fluid d-flex align-items-center">
                <div class="row">
                    <div class="col-lg-7 col-md-10">
                      
                        <br><br>
                        <h1 class="display-2 text-white">............................</h1>
<!--                        <p class="display-2 text-white mt-0 mb-5"><%=employee.getEmail()%></p> -->
                    </div>
                </div>
            </div>
<!--        </div>-->
        <!-- Page content -->
        
        <div class="container-fluid mt--7">
            <div class="row">
                <div class="col-xl-4 order-xl-2 mb-5 mb-xl-0">
                    <div class="card card-profile shadow">
                        <div class="row justify-content-center">
                            <div class="col-lg-3 order-lg-2">
                                <div class="card-profile-image">
                                    <a href="#">
                                        <img src="images/employeeLogo1.png" class="rounded-circle">
                                    </a>
                                </div>
                            </div>
                        </div>
                        
                        <ul id="menu-menu" class="m-main__list">
                            <li class="m-main__item is-cta">
                            <a href="#" class="btn btn--blue-border"><span class="btn__text">ID: <%=employee.getEmpId()%></span></a>
                            </li>
                        </ul>

                        <div class="container-fluid d-flex align-items-center">
                
                        <div class="card-body pt-0 pt-md-4">
                            <div class="row">
                                <div class="col">
                                    <div class="card-profile-stats d-flex justify-content-center mt-md-5">
                                        <div>
                                            <span class="heading"></span>
                                            <span class="description">Completed Projects</span>
                                        </div>
                                        <!--                    <div>
                                                              <span class="heading">10</span>
                                                              <span class="description">Photos</span>
                                                            </div>-->
                                        <div>
                                            <span class="heading"></span>
                                            <span class="description">Live Projects</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="text-center">
                                <h3>
                                    <%=employee.getEmpName()%><span class="font-weight-light"></span>
                                </h3>
                                <div class="h5 font-weight-300">
                                    <i class="ni location_pin mr-2"></i>Kolkata
                                </div>
                                <div class="h5 mt-4">
                                    <i class="ni business_briefcase-24 mr-2"></i>Department: <%=employee.getDeptId()%>
                                </div>
                                <div>
                                    <i class="ni education_hat mr-2"></i>Exavalu
                                </div>
                                <hr class="my-4">
                                <p><%=employee.getEmail()%></p>
                                <p><%=employee.getPhone()%></p>
                                <!--                <a href="#">Show more</a>-->
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    </div>
                                <br><br>
    <%@ include file = "footer.jsp" %>