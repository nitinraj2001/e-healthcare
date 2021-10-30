<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="org.hibernate.Session" %>
    
     <%@page import="mypack.helper.ConnectionProvider" %>
     
      <%@page import="mypack.entity.AdminHealthCareLogin" %>
      
       <jsp:include page="nav_admin.jsp"></jsp:include>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

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
 


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>update doctor information</title>

<style>

.register-photo {
    background: #f1f7fc;
    padding: 80px 0
}

.register-photo .image-holder {
    display: table-cell;
    width: auto;
    background: url(Images/mypick.jpg);
    background-size: cover
}

.register-photo .form-container {
    display: table;
    max-width: 900px;
    width: 90%;
    margin: 0 auto;
    box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1)
}

.register-photo form {
    display: table-cell;
    width: 400px;
    background-color: #ffffff;
    padding: 40px 60px;
    color: #505e6c
}

@media (max-width:991px) {
    .register-photo form {
        padding: 40px
    }
}

.register-photo form h2 {
    font-size: 24px;
    line-height: 1.5;
    margin-bottom: 30px
}

.register-photo form .form-control {
    background: transparent;
    border: none;
    border-bottom: 1px solid #dfe7f1;
    border-radius: 0;
    box-shadow: none;
    outline: none;
    color: inherit;
    text-indent: 0px;
    height: 40px
}

.register-photo form .form-check {
    font-size: 13px;
    line-height: 20px
}

.register-photo form .btn-primary {
    background: green;
    border: none;
    border-radius: 4px;
    padding: 11px;
    box-shadow: none;
    margin-top: 35px;
    text-shadow: none;
    outline: none !important
}

.register-photo form .btn-primary:hover,
.register-photo form .btn-primary:active {
    background: green
}

.register-photo form .btn-primary:active {
    transform: translateY(1px)
}

.register-photo form .already {
    display: block;
    text-align: center;
    font-size: 12px;
    color: #6f7a85;
    opacity: 0.9;
    text-decoration: none
}

</style>


</head>

<body>

<p><h3 align="center">Welcome to the Edit page</h3></p><br><br>
  
  <% Session s=ConnectionProvider.getFactory().openSession();
	
	
	
  AdminHealthCareLogin doc=(AdminHealthCareLogin)s.get(AdminHealthCareLogin.class,1);
	
  
  %>
  

<div class="register-photo">
    <div class="form-container">
        <div class="image-holder"></div>
        <form method="post" action="updateadminservlet">
            <h2 class="text-center"><strong>Update </strong> yourself Admin.</h2>
              <div class="form-group"><input class="form-control" type="text" name="admin_id" placeholder="UserId of Administrative" value="<%=doc.getAdmin_id()%>"></div>
            
             <div class="form-group"><input class="form-control" type="text" name="admin_name" placeholder="Name of Administrative" value="<%=doc.getAdmin_name()%>"></div>
                  
             <div class="form-group"><input class="form-control" type="digit" name="email_id" placeholder="email_id of administrative" value="<%=doc.getAdmin_email()%>"></div>
                     
            <div class="form-group">
                <div class="form-check"><label class="form-check-label"><input class="form-check-input" type="checkbox">I agree to the license terms.</label></div>
            </div>
            <div class="form-group"><button class="btn btn-success btn-block" type="submit">Update</button></div><a class="already" href="doctorFunctionality.jsp">if you already register? No need to do that again.</a>
        </form>
    </div>
</div>

</body>
</html>