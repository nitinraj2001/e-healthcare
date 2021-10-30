<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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



    
    
    <!-- Optional JavaScript -->
    
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 

<title>Insert title here</title>


</head>



<body >

<style>


body{
	
	height:100%;
	
	background-image:url("Images/logo.jpg");
	
	background-size: cover;
	
	background-position: center;
	
	background-attachment: fixed;
	
	
	
	
}

body{
	
	padding-top:20px;
	
	text-align:center;
	
	color:#fff;
	
	padding-bottom:120px;
	

}
</style>

<section class="header">


<div class="container">

<nav class="navbar navbar-expand-lg navbar-dark purple">

 
  <a class="navbar-brand" href="Home.jsp">Home</a>
 
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
 
    <span class="navbar-toggler-icon"></span>
 
  </button>

 
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
 
    <ul class="navbar-nav mr-auto">
 
      <li class="nav-item active">
 
        <a class="nav-link active" href="ViewDoctorsDetails.jsp">ViewDoctorsDetails <span class="sr-only">(current)</span></a>
 
      </li>
 
      <li class="nav-item">
 
        <a class="nav-link active" href="viewPatientDetailsAdmin.jsp">ViewPatientDetails</a>
 
      </li>
 
       <li class="nav-item">
 
        <a class="nav-link active" href="AdminViewUser.jsp">ViewUser</a>
 
      </li>
 
   
   
 
     <li class="nav-item dropdown">
      
        <a class="nav-link dropdown-toggle active" href="adminFunctionality.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
         Appointments
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        
          <a class="dropdown-item" href="viewAppointment_byAdmin.jsp"> ManageApponitments</a>
          
          
          
          
        
      </li>    
      
      
       <li class="nav-item dropdown">
      
        <a class="nav-link dropdown-toggle active" href="adminFunctionality.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
         Management
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        
          <a class="dropdown-item" href="bloodbank_adminlogin.jsp"> BloodBankManagement</a>
          
          <a class="dropdown-item" href="plasma.jsp">PlasmaManagement</a>
          
           <a class="dropdown-item" href="#"> AmbulanceManagement</a>
          
          <a class="dropdown-item" href="coronaindex.jsp">corona update</a>
          
        
        
        
      </li>    
      
      
       <li class="nav-item dropdown">
      
        <a class="nav-link dropdown-toggle active" href="adminFunctionality.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
         Message
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        
          <a class="dropdown-item" href="#"> MessageDoctor</a>
          
          <a class="dropdown-item" href="#">ViewDoctorMessage</a>
          
           <a class="dropdown-item" href="#"> MessageUser/Patient</a>
          
          <a class="dropdown-item" href="#">ViewUser/patientMessage</a>
          
        
        
        
      </li>    
      
     <li class="nav-item dropdown">
      
        <a class="nav-link dropdown-toggle active" href="adminFunctionality.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
          Feedback
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        
          <a class="dropdown-item" href="viewfeedback.jsp"> View Feedback</a>
          
          <a class="dropdown-item" href="viewfeedback.jsp">ReplyFeedback</a>
          
      </li>    
      
      <li class="nav-item dropdown">
      
        <a class="nav-link dropdown-toggle active" href="adminFunctionality.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
          Profile
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        
          <a class="dropdown-item" href="viewAdminProfile.jsp"> View Profile</a>
          
          <a class="dropdown-item" href="updateadmin.jsp">Update profile</a>
         
          
          <a class="dropdown-item" href="Security.jsp">Logout</a>
          
        </div>
        
      </li>    
     
     
    </ul>
  
  </div>

</nav>

<p>A fit body, a calm mind , a house full of love. These things cannot be bought they must be earned.True silence is the rest of the mind, and is to the spirit what sleep is to the body, nourishment and refreshment</p>


</div>

</section>

</body>

</html>
