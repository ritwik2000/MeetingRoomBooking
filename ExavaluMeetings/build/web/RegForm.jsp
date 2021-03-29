<%-- 
    Document   : RegForm
    Created on : 18 Mar, 2021, 1:51:21 PM
    Author     : Sanket
--%>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>
<body>
<div class="container">
        <div class="row">

            <div class="col-md-8 col-md-offset-2">
                <form role="form" method="POST" action="Registration">

                    <legend class="text-center"><span style="color:#0BB5FF;font-weight:bold">-Registration Form-</span></legend>

                    <fieldset>
                        <i><legend><span style="color:#0D4F8B;font-weight:bold">Employee Details:</span></legend></i>

                        <div class="form-group col-md-6">
                            <label for="first_name">Full Name</label>
                            <input type="text" class="form-control" name="name" id="first_name" placeholder="Name">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="last_name">Employee ID</label>
                            <input type="text" class="form-control" name="empId" id="" placeholder="ID">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">Email</label>
                            <input type="email" class="form-control" name="email" id="" placeholder="Email">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="password">Phone</label>
                            <input type="text" class="form-control" name="phone" id="password" placeholder="Phone">
                        </div>


                        <div class="form-group col-md-6">
                            <label for="department">Department</label>
                            <select class="form-control" name="department" id="department">
                                <option></option>
                                <option>PEGA</option>
                                <option>MULESOFT</option>
                                <option>SALESFORCE</option>
                                <option>GUIDEWIRE</option>
                                <option>UI</option>
                                <option>OTHERS</option>
                            </select>
                        </div>



                    </fieldset>

                    <fieldset>
                        <i> <legend><span style="color:#0D4F8B;font-weight:bold">Meeting Details:</span></legend></i>
                        
                        <div class="form-group col-md-6">
                            <label for="confirm_password">No.of Attendees</label>
                            <input type="text" class="form-control" name="noOfAttendees" id="confirm_password" placeholder="Attendees">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="confirm_password">Date</label>
                            <input type="text" class="form-control" name="date" id="confirm_password" placeholder="DD/MM/YY">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="found_site">Start Time</label>
                            <select class="form-control" name="startTime" id="found_site">
                                <option></option>
                                <option>8AM</option>
                                <option>9AM</option>
                                <option>10AM</option>
                                <option>11AM</option>
                                <option>12PM</option>
                                <option>1PM</option>
                                <option value="other" >Other</option>
                            </select>
                        </div>
                        
                        <div class="form-group col-md-6">
                            <label for="found_site">End Time</label>
                            <select class="form-control" name="endTime" id="found_site">
                                <option></option>
                                <option>8AM</option>
                                <option>9AM</option>
                                <option>10AM</option>
                                <option>11AM</option>
                                <option>12PM</option>
                                <option>1PM</option>
                                <option value="other" >Other</option>
                            </select>
                        </div>

                        <div class="form-group col-md-12 hidden">
                            <label for="specify">Please Specify</label>
                            <textarea class="form-control" id="specify" name=""></textarea>
                        </div>

                    </fieldset>

                    <div class="form-group">
                        <div class="col-md-12">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="" id="">
                                    I accept the <a href="#">terms and conditions</a>.
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-primary">
                                Register
                            </button>
                            <a href="#"></a>
                        </div>
                    </div>

                </form>
            </div>

        </div>
    </div>
    <style>
body {
  background-image: url('images/meeting-room.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;


}
</style>
</body>