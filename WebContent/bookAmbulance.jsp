<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

 <!-- Bootstrap CSS -->
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <link rel="stylesheet" href="Designing/Style.css">
    
    <title>HealthCare And Route Management</title>


<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css"/>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" type="text/css"/>


<link href="https://fonts.googleapis.com/css?family=Raleway:400,700" rel="stylesheet">

<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />


    
    
    <!-- Optional JavaScript -->
    
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 

<title>Insert title here</title>
<style>


.section {
	position: relative;
	height: 100vh;
}

.section .section-center {
	position: absolute;
	top: 50%;
	left: 0;
	right: 0;
	-webkit-transform: translateY(-50%);
	transform: translateY(-50%);
}

#booking {
	font-family: 'Raleway', sans-serif;
}

.booking-form {
	position: relative;
	max-width: 642px;
	width: 100%;
	margin: auto;
	padding: 40px;
	overflow: hidden;
	background-image: url('../img/background.jpg');
	background-size: cover;
	border-radius: 5px;
	z-index: 20;
}

.booking-form::before {
	content: '';
	position: absolute;
	left: 0;
	right: 0;
	bottom: 0;
	top: 0;
	background: rgba(0, 0, 0, 0.7);
	z-index: -1;
}

.booking-form .form-header {
	text-align: center;
	position: relative;
	margin-bottom: 30px;
}

.booking-form .form-header h1 {
	font-weight: 700;
	text-transform: capitalize;
	font-size: 42px;
	margin: 0px;
	color: #fff;
}

.booking-form .form-group {
	position: relative;
	margin-bottom: 30px;
}

.booking-form .form-control {
	background-color: rgba(255, 255, 255, 0.2);
	height: 60px;
	padding: 0px 25px;
	border: none;
	border-radius: 40px;
	color: #fff;
	-webkit-box-shadow: 0px 0px 0px 2px transparent;
	box-shadow: 0px 0px 0px 2px transparent;
	-webkit-transition: 0.2s;
	transition: 0.2s;
}

.booking-form .form-control::-webkit-input-placeholder {
	color: rgba(255, 255, 255, 0.5);
}

.booking-form .form-control:-ms-input-placeholder {
	color: rgba(255, 255, 255, 0.5);
}

.booking-form .form-control::placeholder {
	color: rgba(255, 255, 255, 0.5);
}

.booking-form .form-control:focus {
	-webkit-box-shadow: 0px 0px 0px 2px #ff8846;
	box-shadow: 0px 0px 0px 2px #ff8846;
}

.booking-form input[type="date"].form-control {
	padding-top: 16px;
}

.booking-form input[type="date"].form-control:invalid {
	color: rgba(255, 255, 255, 0.5);
}

.booking-form input[type="date"].form-control+.form-label {
	opacity: 1;
	top: 10px;
}

.booking-form select.form-control {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
}

.booking-form select.form-control:invalid {
	color: rgba(255, 255, 255, 0.5);
}

.booking-form select.form-control+.select-arrow {
	position: absolute;
	right: 15px;
	top: 50%;
	-webkit-transform: translateY(-50%);
	transform: translateY(-50%);
	width: 32px;
	line-height: 32px;
	height: 32px;
	text-align: center;
	pointer-events: none;
	color: rgba(255, 255, 255, 0.5);
	font-size: 14px;
}

.booking-form select.form-control+.select-arrow:after {
	content: '\279C';
	display: block;
	-webkit-transform: rotate(90deg);
	transform: rotate(90deg);
}

.booking-form select.form-control option {
	color: #000;
}

.booking-form .form-label {
	position: absolute;
	top: -10px;
	left: 25px;
	opacity: 0;
	color: #ff8846;
	font-size: 11px;
	font-weight: 700;
	text-transform: uppercase;
	letter-spacing: 1.3px;
	height: 15px;
	line-height: 15px;
	-webkit-transition: 0.2s all;
	transition: 0.2s all;
}

.booking-form .form-group.input-not-empty .form-control {
	padding-top: 16px;
}

.booking-form .form-group.input-not-empty .form-label {
	opacity: 1;
	top: 10px;
}

.booking-form .submit-btn {
	color: #fff;
	background-color: #e35e0a;
	font-weight: 700;
	height: 60px;
	padding: 10px 30px;
	width: 100%;
	border-radius: 40px;
	border: none;
	text-transform: uppercase;
	font-size: 16px;
	letter-spacing: 1.3px;
	-webkit-transition: 0.2s all;
	transition: 0.2s all;
}

.booking-form .submit-btn:hover,
.booking-form .submit-btn:focus {
	opacity: 0.9;
}




.center {
  margin: 0;
  position: absolute;
  top: 95%;
  left: 50%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}


</style>

</head>

<body>


<h1 align="center">Ambulance Booking Form</h1>

<p align="center">"Libertarians argue that no normal adult has the right to impose choices on other normal adults, except in abnormal circumstances, such as when one person finds another unconscious and administers medical assistance or calls an ambulance." We offer u facilities to reach your doors with less time as comparison</p>

<div id="booking" class="section">
<div class="section-center">
<div class="container">
<div class="row">
<div class="booking-form">
<div class="form-header">
<h1>Make your Ambulance book</h1>
</div>
<form method="post" action="ambulanceServlet">
<div class="form-group">
<input class="form-control" type="text" placeholder="Patient Name">
<span class="form-label">Destination</span>
</div>
<div class="row">
<div class="col-md-6">
<div class="form-group">
<input class="form-control" type="date" required>
<span class="form-label">Patient Date_of_Birth</span>
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<input class="form-control" type="date" required>
<span class="form-label">Ambulance_Req_Date </span>
</div>
</div>
</div>
<div class="row">
<div class="col-md-6">
<div class="form-group">
<input class="form-control" type="email" placeholder="Enter your Email">
<span class="form-label">Email</span>
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<input class="form-control" type="tel" placeholder="Enter you Phone">
<span class="form-label">Phone</span>
</div>
</div>
</div>
<div class="row">
<div class="col-md-6">
<div class="form-group">
<select class="form-control" required>
<option value="" selected hidden>Patient's Gender</option>
<option>Male</option>
<option>Female</option>
<option>other</option>
</select>
<span class="select-arrow"></span>
<span class="form-label">Rooms</span>
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<select class="form-control" required>
<option value="" selected hidden>Patient's relationship with you</option>
<option>Family Member</option>
<option>Friend</option>
<option>other</option>
</select>
<span class="select-arrow"></span>
<span class="form-label">Patient's Relationship</span>
</div>
</div>

<div class="form-group">



<input class="form-control" type="text" placeholder="Reason for booking ambulance">

<span class="form-label">Reason</span>

</div>

<div class="form-group">


<input class="form-control" type="text" placeholder="Patient's condition">

<span class="form-label">Condition of patients</span>

</div>

<div class="form-btn">

 <div class="center">

<button class="submit-btn">Book Now</button>

</div></div>


</form>

</div>
</div>

</div>

</div>

</div>

</body>

</html>