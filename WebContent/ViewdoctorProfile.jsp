<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


 <%@ page import="org.hibernate.Session" %>

<%@ page import=" mypack.helper.*" %>

 <%@ page import="org.hibernate.Query" %>
     
      <%@ page import="mypack.entity.*" %>
      
           <%@ page import="java.util.List" %>
    



<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

 <!-- Bootstrap CSS -->
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css"/>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" type="text/css"/>

    
   

    <link rel="stylesheet" href="Designing/Login.css" type="text/css">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <!-- Optional JavaScript -->
    
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   
   

<title>doctorprofile</title>


</head>

<body>

<h2 align="center">Welcome to your profile page</h2><br><br>



<%

HttpSession hs=request.getSession(false);

String name=(String)hs.getAttribute("name");

Session s=ConnectionProvider.getFactory().openSession();

Query q=s.createQuery("From DoctorRegistration");

List<DoctorRegistration> list=q.list();

for(DoctorRegistration reg:list){
	
	
	if(reg.getDoctor_name().equalsIgnoreCase(name)){
	

%>

<div class="container">



<div >
 
  <img src="Images/mypick.jpg" alt="John" style="width:20%">
  
 
  
  <h1><%=reg.getDoctor_name() %></h1>

  <p>In <%=reg.getDoctor_department() %> department</p>
  
  <p><%=reg.getDoctor_degree() %></p>
  
  <p>General Physician , 12 Year Experience</p>
  
  <p><%=reg.getDoctor_name() %> has served in variet of clinical branches and has extensive clinical experience. He has worked in the Dept. of surgery, Dept. of Gynacology and more.</p>
 
  <p ><b>Email-Id: </b><%=reg.getDoctor_email() %></p>
  
  <p><b>Contact-No: <%=reg.getDoctor_contactno() %></b></p>
  
  <div style="margin:24px 0">
   
           <a href="#" class="social"><i class="fa fa-facebook"></i></a>
           
           <a href="#" class="social"><i class="fa fa-google"></i></a>
             
           <a href="#" class="social"><i class="fa fa-linkedin"></i></a>
       
  </div>
 
</div>


<%

	}
	
}


s.close();
%>

<p>Go back to your  <a href="doctorFunctionality.jsp">functionality page</a></p>

</div>

</body>
</html>