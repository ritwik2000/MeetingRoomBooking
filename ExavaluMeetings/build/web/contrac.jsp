<%@page import="meetings.beans.Employee"%>
<!DOCTYPE html>
<html lang="en-US" class="no-js">
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

        <title>Contact our Sales or Support | Meeting Room App</title>

        <link rel='stylesheet' id='sk-style-css'  href='https://cdn.meetingroomapp.com/website/themes/meetingroomapp/static/css/style.css?ver=1.3.6' type='text/css' media='screen' /><!--
        <link rel='stylesheet' id='sk-print-css'  href='https://cdn.meetingroomapp.com/website/themes/meetingroomapp/static/css/print.css?ver=1.3.6' type='text/css' media='print' />
-->        <script type='text/javascript' src='https://cdn.meetingroomapp.com/website/themes/meetingroomapp/static/js/modernizr.min.js?ver=1.3.6'></script><!--


<!--        <script src="https://www.google.com/recaptcha/api.js?render=explicit" async defer></script>-->

    </head>
    <body class="page-template page-template-template-contact page-template-template-contact-php page page-id-18 en page-subpage">
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
                            <a href="myprofile.jsp" class="m-main__link">My profile</a></li>
                        <li id="nav-menu-item-45537"
                            class="m-main__item  menu-item-even menu-item-depth-0 menu-item menu-item-type-post_type menu-item-object-sk_devices">
                            <a href="add_event.jsp"
                               class="m-main__link">Book Meeting</a></li>
                        <li id="nav-menu-item-25"
                            class="m-main__item  menu-item-even menu-item-depth-0 menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="CancelMeeting.jsp" class="m-main__link">Cancel Meeting</a></li>

                        <li id="nav-menu-item-17622"
                            class="m-main__item  menu-item-even menu-item-depth-0 hide-desktop menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="https://www.meetingroomapp.com/help-technical-support/" class="m-main__link">Help</a>
                        </li>
                        <li id="nav-menu-item-22"
                            class="m-main__item  menu-item-even menu-item-depth-0 is-contact menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="Employeeview_event.jsp" class="m-main__link">Display Meeting</a>
                        <li class="m-main__item is-cta">
                            <a href="#" class="btn btn--green-border"><span class="btn__text">Hello <%=employee.getEmpName()%></span></a>
                        </li>
                        </li>
                    </ul>
                    
                </div>
            </div>



        </div>

        <div id="main" class="main">
            <div class="b-contact">
                <div class="row-main">
                    <div class="grid">
                        <div class="b-contact__col-desc">
                            <div class="b-contact__desc">
                                <h1 class="b-contact__title">Get in Touch</h1>

                                <p class="b-contact_item b-contact_item--phone">
                                    <a href="">+9123998844</a>
                                </p>
                                <p class="b-contact_item b-contact_item--address">
                                    <small><strong>Headquarters and Billing Address</strong><br />
                                        5000 Birch Street, West Tower, Suite 3000<br />
                                        
                                        Newport Beach, CA 92660, USA</small><span class="b-contact__item--billing"><small><strong>Exavalu Solutions India Pvt Ltd
BENGAL ECO INTELLIGENT PARK,</strong><br />
                                            ID: 02565684<br />
                                            
                                            Telephone : +1- 888-EXAVALU (888-392-8258)</small></span>								</p>
                            </div>
                        </div>
                        <div class="b-contact__col-map">
                            <p class="b-contact__map">
                                <img src="https://cdn.meetingroomapp.com/website/themes/meetingroomapp/static/img/illust/map.png" alt="Polská 54, 120 00 Prague" width="720" height="340" />
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div id="help" class="b-help">
            <div class="b-help__inner">
                <div class="row-main">
                    <div class="b-help__content">
                        <h2 class="b-help__title">See Booking System In Action</h2>
                        <p>Our sales and support staff is ready to help you with your questions</p>
                    </div>
                    <div class="b-help__form">

                        <div class="b-help__conditions">
                           
                               
                        </div>
                    </div>
                </div>
            </div>
        </div>
                             <br><br>
<%@ include file = "footer.jsp" %>