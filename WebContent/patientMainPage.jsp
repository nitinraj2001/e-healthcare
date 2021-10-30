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


<style>


body{
	
	height:100%;
	
	background-image:url("Images/logo.jpg");
	
	background-size: cover;
	
	background-position: center;
	
	background-attachment: fixed;
	
	
	
	
}

body{
	
	padding-top:10px;
	
	
	text-align:center;
	
	color:#fff;
	
	padding-bottom:120px;
	

}
</style>

</head>

<body>

<div class="container">

<nav class="navbar navbar-expand-lg navbar-dark purple">

 
  <a class="navbar-brand" href="Home.jsp">Home</a>
 
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
 
    <span class="navbar-toggler-icon"></span>
 
  </button>

 
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
 
    <ul class="navbar-nav mr-auto">
 
   <li class="nav-item dropdown">
      
        <a class="nav-link dropdown-toggle active" href="adminFunctionality.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
         Appointment
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        
         
          
          <a class="dropdown-item" href="viewappointment.jsp">ViewAppointments</a>
          
            <a class="dropdown-item" href="#">CancelAppointment</a>
         
      </li> 
      
      <li class="nav-item dropdown">
      
        <a class="nav-link dropdown-toggle active" href="patientMainPage.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
         Doctor
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        
          <a class="dropdown-item" href="patient_viewdoclist.jsp">ViewDocters</a>
          
          <a class="dropdown-item" href="chatbootclientServlet">MessageDoctor</a>
          
            <a class="dropdown-item" href="#">ViewDoctorMessage</a>
          
      </li> 
   
    <li class="nav-item active">
 
        <a class="nav-link active" href="viewReportsby_pat.jsp">View Reports <span class="sr-only">(current)</span></a>
 
      </li>
      
       <li class="nav-item dropdown">
      
        <a class="nav-link dropdown-toggle active" href="adminFunctionality.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
         Query
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        
          <a class="dropdown-item" href="#">Your Queries</a>
          
          <a class="dropdown-item" href="#">View Reply</a>
          
          
      </li> 
      
      
      
      <li class="nav-item">
 
        <a class="nav-link active " href="drug_login.jsp">Symptom Checker</a>
 
      </li>
      
       <li class="nav-item">
 
        <a class="nav-link active " href="transaction.jsp">Transaction</a>
 
      </li>
      
      
      
       <li class="nav-item dropdown">
      
        <a class="nav-link dropdown-toggle active" href="bloodbank_login.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
         Requirements
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        
          <a class="dropdown-item" href="bloodbank_login.jsp">Blood Reqirement</a>
          
          <a class="dropdown-item" href="plasma.jsp">Plasma Requirement</a>
          
            <a class="dropdown-item" href="#">Ambulance Requirement</a>
          
          
          
          
      </li> 
      
        <li class="nav-item dropdown">
    
          <a class="nav-link dropdown-toggle active" href="adminFunctionality.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
          More
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        
          <a class="dropdown-item" href="coronaindex.jsp">View Corona Update</a>
      
          <a class="dropdown-item" href="patientfeedback.jsp">Give Feedback</a>
          
           <a class="dropdown-item" href="#">Help needed(if any)</a>
        
      </li>    
     
       <li class="nav-item dropdown">
      
        <a class="nav-link dropdown-toggle active" href="adminFunctionality.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
          ProfileRegister
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        
          <a class="dropdown-item" href="#"> Register Yourself</a>
      
          <a class="dropdown-item" href="#">Edit Your Profile</a>
          
           <a class="dropdown-item" href="#">Logout</a>
          
          
          
  </li>  
  
    
 
    </ul>
  
  </div>

</nav>

<p>"Instead of worrying about what you cannot control, shift your energy to what you can create"</p>
<p>"It's only after you've stepped outside your comfort zone that you begin to change, grow, and transform"</p>


</div>

</body>


</html>
