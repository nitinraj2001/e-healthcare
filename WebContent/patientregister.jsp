<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page import="mypack.helper.ConnectionProvider" %>
    
     <%@ page import="java.util.List" %>
     
     <%@ page import="org.hibernate.Session" %>
     
     <%@ page import="org.hibernate.Query" %>
     
      <%@ page import="mypack.entity.*" %>
      
     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>


Insert title here</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css"/>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" type="text/css"/>

  
    <!-- Optional JavaScript -->
    
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 

<style type="text/css">

﻿



h1{ 
  text-align:center;
  color:red;
  font-size:60px;
}
form{
    text-align:left;
    font-size:30px;
    font-style:oblique;
    padding-left:10%;
}
input text_area{
    font-size:20px;
    width:20px;
	color:white;
	vertical-align:top;
}
    
	button {
    border-radius: 20px;
    border: 1px solid #FFFFFF;
    background-color: #33b5e5;
    color: #ffffff;
    font-size: 12px;
    font-weight: bold;
    padding: 14px 35px;
    letter-spacing: 1px;
    text-transform: uppercase;
    
}
	

</style>
</head>
<body>

<%

/*
 int doctor_id=Integer.parseInt(request.getParameter("doctor_id1").trim());
 
int doctor_pid=doctor_id;

Session s=ConnectionProvider.getFactory().openSession();

DoctorRegistration doc=(DoctorRegistration)s.get(DoctorRegistration.class,doctor_pid);

*/

%>


<div>
 <h1 align="center">Book Your Apointment</h1>
 <form action="BookAppointServlet" method="post">
 Enter Patient Name: <input name="name" type="text"><br><br>
 Enter Patient Age:  <input name="age" type="text"><br><br>
 Enter Patient email: <input name="email" type="email"><br><br>
 Enter Patient contact: <input name="contact" type="text"><br><br>
 Enter your Gender:
    Male:<input name="gender" type="radio">
    Female:<input name="gender" type="radio">
    Others:<input name="gender" type="radio"><br><br>
 Enter Medical History: 
    Covid 19: <input type="checkbox" name="med_his">
    Sugar: <input type="checkbox" name="med_his">
    High BP: <input type="checkbox" name="med_his">
    Low BP: <input type="checkbox" name="med_his">
    Survical: <input type="checkbox" name="med_his"><br><br>
 Enter Purpose of Apointment: <input type="text" name="purpose"><br>   <br>
 Choose Docter From List: <input name="doc_name" type="text"><br><br>
 Any Apointment before: 
    Yes:<input name="appoint" type="radio">
    No:<input name="appoint" type="radio"><br>    <br>
 Apointment Day: 
    Working Day:<input type="checkbox" name="appoint_day"> 
    Weekend:<input type="checkbox" name="appoint_day">
    Custom:<input type="checkbox" name="appoint_day"><br><br>
 Apointment Slot:
 	Morning:<input name="appoint_slot" type="radio">
 	Afternoon:<input name="appoint_slot" type="radio">
 	Evening:<input name="appoint_slot" type="radio"><br><br>
 Can you Visit the Doctor: Yes<input name="vi" type="radio" value="yes">No<input name="vi" type="radio" value="no"><br><br>
 Book A Home Visit: No<input name="home_vi" type="radio" value="no">Yes<input name="vi" type="radio" value="yes"><br><br>
 Covid 19 Test(if tested): 
 	Positive:<input name="co" type="radio">
 	Negative:<input name="co" type="radio">
 	Test not done:<input name="co" type="radio"><br><br>
 	Any of your Family Member is home Quarantine: Yes:<input name="hq" type="radio"> No:<input name="hq" type="radio"><br><br>
 	 
<button>Book Appointment</button>
 
 </form> 
<p></p>

</div>




</body></html>

</body>
</html>