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
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
 <title>CancelMeeting Page</title>
  <link rel='stylesheet' id='sk-style-css'  href='https://cdn.meetingroomapp.com/website/themes/meetingroomapp/static/css/style.css?ver=1.3.6' type='text/css' media='screen' />
 <script type='text/javascript' src='https://cdn.meetingroomapp.com/website/themes/meetingroomapp/static/js/modernizr.min.js?ver=1.3.6'></script>
</head>
<body class="page-template page-template-template-contact page-template-template-contact-php page page-id-18 en page-subpage">
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
                            <a href="Admin.jsp" class="m-main__link">Home</a></li>
                                            <li id="nav-menu-item-45537"
                            class="m-main__item  menu-item-even menu-item-depth-0 menu-item menu-item-type-post_type menu-item-object-sk_devices">
                            <a href="DisplayBookedMeetings.jsp"
                               class="m-main__link">Display Meeting</a></li>
                                <li id="nav-menu-item-26"
                            class="m-main__item  menu-item-even menu-item-depth-0 menu-item menu-item-type-post_type menu-item-object-page">
                                    <a href="ContactAdmin.jsp" class="m-main__link">Contact</a></li>
                       

                        <li id="nav-menu-item-17622"
                            class="m-main__item  menu-item-even menu-item-depth-0 hide-desktop menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="https://www.meetingroomapp.com/help-technical-support/" class="m-main__link">Help</a>
                        </li>
                        
                        <li class="m-main__item is-cta">
                            <a href="#" class="btn btn--green-border"><span class="btn__text">Hello</span></a>
                        </li>
                        </li>
                    </ul>
                    
                </div>
            </div>
        </div>
<div class="container">
        <div class="row">

            <div class="col-md-8 col-md-offset-2">
                <li class="m-main__item is-cta">
                   
                    </li>
                <form role="form" method="POST" action="AdminCancelMeetings">
                    

                    <i><legend class="text-center"><span style="color:#363795;font-weight:bold">-Cancel Meeting-</span></legend></i>

                    <fieldset>
                        <i><legend><span style="color:#363795;font-weight:bold">Meeting Details:</span></legend></i>
 
                        
                        
                        <div class="form-group col-md-6">
                            <label for="first_name">ID</label>
                            <input type="text" class="form-control" name="id" value="">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="last_name">Title</label>
                            <input type="text" class="form-control" name="title" id="" placeholder="Title">
                        </div>

                        
                        <div class="form-group col-md-12 hidden">
                            <label for="specify">Please Specify</label>
                            <textarea class="form-control" id="specify" name=""></textarea>
                        </div>

                    </fieldset>

                    

                    <div class="form-group">
                        <div class="col-md-12">
                             <button type="submit" value="submit" class="btn btn-primary">Submit</button>
                      
                               
                                
                                <%= request.getParameter("message")%>
                                <li class="m-main__item is-cta">
                                    <a href="view_event.jsp" class="btn btn--blue-border"><span class="btn__text">View</span></a>
                                </li>
                            </ul>
                            
                        
                    </div>

                </form>
                       
               
                    
            </div>

        </div>
    </div>
    <style>
body {
  background-image: url('images/pic.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;


}
</style>
</body>