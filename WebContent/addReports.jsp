<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <meta charset="utf-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


<title>Insert title here</title>

 <link href="Designing/Style.css" rel="stylesheet"/>
 
  <!-- Bootstrap CSS -->
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    
    
    <!-- Optional JavaScript -->
    
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 
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
  
 

<p><h3 align="center">Doctor you can add your reports here  </h3></p>


<form action="saveReportServlet" method="post">
 
  <div class="form-group">
  
    <label for="Title">Patient's Name</label>
  
    <input required type="text" name="Name" class="form-control" id="Title" aria-describedby="emailHelp" placeholder="Enter the name of patient here">
  
  
  </div>
  
  <div class="form-group">
  
    <label for="Content">Enter Your report regarding patient's problem here</label>
  
    <textarea required type="text" name="report" class="form-control" id="Content" placeholder="Enter your content here" style="height:300px;"></textarea>
  
  </div>
  
 
  <div class="container text-center">
  
  <button type="submit" class="btn btn-primary">Submit</button>
  
  </div>
  
</form>

</div>

</body>

</html>