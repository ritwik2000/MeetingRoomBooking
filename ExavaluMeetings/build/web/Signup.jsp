<%@page import="meetings.beans.Employee"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form </title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style1.css">
    <link rel="shortcut icon" href="images/download (1).png" />
</head>
<body>
    

    <div class="main">

        <div class="container">
            
                        
                  
            <form action="Signup" method="POST" class="appointment-form" id="appointment-form">
                
                
                 <ul>
                        <li id="errorMessage">
                            <a href="#">${error1}</span></a>
                        </li>
                    </ul>
                
                <img src="images/download (1).png" alt="MeetingRoomApp" width="200" height="30" />
               
                <div class="form-group-1">
                    <p><h2> <span style="color:#40bd59;font-weight:bold">Employee Signup Form</span></h2></p>
                
                        <p> <span style="color:#40bd59;font-weight:bold">
                     <ul>
                        <li id="errorMessage">
                            <a href="#">${error1}</span></a>
                        </li>
                    </ul>
                    </span></</p>
                <input type="text" name="empId" id="title" placeholder="Employee Id" required />  
                <input type="text" name="empName" id="title" placeholder="Full Name" required />
                  <input type="email" name="email" id="email" placeholder="Email" required />
                  <input type="number" name="phone" id="phone_number" placeholder="Phone" required />
                  <input type="number" name="password" id="name" placeholder="Password" required />
                    <div class="select-list">

                        <p class="inp__row selectbox">
                    <label class="inp__label" for="">Dept</label>
                    <select class="css-select css-select-register" placeholder="Department" id="deptName" name="deptName">
                        <option>Department</option>
                        <option value="Pega">Pega</option>
                        <option value="Mulesoft">Mulesoft</option>
                        <option value="Guidewire">Guidewire</option>
                        <option value="Salesforce">Salesforce</option>
                        <option value="UI">UI</option>
                        <option value="Others">Others</option>
                       
                    </select>
                </p>

                    </div>
                </div>
                
                <div class="form-check">
                    <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                    <h3> <label for="agree-term" class="label-agree-term"><span><span></span></span>Already have an Account?  <a href="Login.jsp" class="term-service"><span style="color:#40bd59;font-weight:bold"> Login Here>></span></a></label></h3>
                </div>
                <div class="form-submit">
                    <input type="submit" name="submit" id="submit" class="submit" value="SIGN UP" />
                </div>
            </form>
        </div>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>