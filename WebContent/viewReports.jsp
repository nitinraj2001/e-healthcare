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

 <!-- Bootstrap CSS -->
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <link rel="stylesheet" href="Designing/Style.css">
    
    <title>Health Care And Route Applicationt</title>


<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css"/>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" type="text/css"/>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet"> 
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="shortcut icon" href="/favicon.ico" type="image/vnd.microsoft.icon">
<link rel="icon" href="/img/favicons/favicon-32.png" sizes="32x32">



    
    
    <!-- Optional JavaScript -->
    
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


 <link href="Designing/Style.css" rel="stylesheet"/>
 
  
 

<title>Insert title here</title>

</head>


<body>

  <div class="container">
  
  <nav class="navbar navbar-expand-lg navbar-dark purple">

 
  <a class="navbar-brand" href="doctorFunctionality.jsp">Doctor Report Management</a>
 
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
 
    <span class="navbar-toggler-icon"></span>
 
  </button>

 
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
 
    <ul class="navbar-nav mr-auto">
    
     <li class="nav-item active">
 
        <a class="nav-link" href="doctorFunctionality.jsp">Doctor Functionality Page <span class="sr-only">(current)</span></a>
 
      </li>
 
      <li class="nav-item active">
 
        <a class="nav-link" href="addReports.jsp">Add Reports</a>
 
      </li>
 
   <li class="nav-item active">
 
        <a class="nav-link " href="updatereports..jsp">Update Reports</a>
 
      </li>
 
      <li class="nav-item active">
 
        <a class="nav-link " href="viewReports.jsp">Show all Reports</a>
 
      </li>
 
    </ul>

</nav>
  
  
  <br><br>
  
  <p><h3 align="center">Welcome to the View Reports Page</h3></p>
  
  <br><br>
  
   <div class="row">
   
       <div class="col-12">
  
  <% 
  
 
  
  Session s=ConnectionProvider.getFactory().openSession();
  
  Query q=s.createQuery("From ReportEntity");
  
  List<ReportEntity> list=q.list();
  
  for(ReportEntity note:list){
	  
	  %>
	 
	  
	  <div class="card mt-3" >
 
          <div class="card-body mx-5">
          
             <h5 class="card-title"><%=note.getName() %></h5>
                 
                  <p class="card-text"><%=note.getReport() %></p>
                  
                  <p><b class="text-primary"><%=note.getAddedDate() %></b></p>
                  
                  <div class="container text-center m-2">
                       
                          <a href="deletereportServlet?patient_id=<%=note.getPatient_id()%>" class="btn btn-danger">Delete</a>
                          
                           <a href="updatereports..jsp?patient_id=<%=note.getPatient_id() %>" class="btn btn-primary">Update</a>
                           
                   </div>        
           
            </div>
        
        </div>
        
        
	  
	  <%
	  
	  
	  s.close();
	  
	
	  
	  
  }
  
  
  %>


</div>
</div></div>

</body>

</html>