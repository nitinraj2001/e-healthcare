<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="mypack.helper.ConnectionProvider" %>
    
     <%@ page import="java.util.List" %>
     
     <%@ page import="org.hibernate.Session" %>
     
     <%@ page import="org.hibernate.Query" %>
     
      <%@ page import="mypack.entity.*" %>
      
      <<jsp:include page="nav_admin.jsp"></jsp:include>
    
    
    
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


<body>

 
  
 
  
  <br><br>
  
  <p><h3 align="center">Welcome to the Doctors Details Page</h3></p>
  
  <br><br>
  
  <table class="table table-borderless">
    <thead>
        <tr>
            <th>Doctor_Id</th>
            <th>Doctor_name</th>
            <th>Doctor_EmailId</th>
          
            <th>Doctor_Age</th>
            <th>Doctor_gender</th>
            <th>Doctor_Department</th>
            <th>Doctor_Degree</th>
            <th>Doctor_contact</th>
            <th>view_Info</th>
            <th>Delete_Doctor</th>
           
        </tr>
    </thead>
  
  
  
  <% 
  
 
  
  Session s=ConnectionProvider.getFactory().openSession();
  
  Query q=s.createQuery("From DoctorRegistration");
  
  List<DoctorRegistration> list=q.list();
  
  for(DoctorRegistration doc:list){
	  
	  %>
	 
	   <tbody>
        <tr>
            <td><%=doc.getDoctor_id() %></td>
            <td><%=doc.getDoctor_name() %></td>
            <td><%=doc.getDoctor_email() %></td>
            <td><%=doc.getDoctor_age() %></td>
            <td><%=doc.getDoctor_gender() %></td>
            <td><%=doc.getDoctor_department() %></td>
            <td><%=doc.getDoctor_degree() %></td>
            <td><%=doc.getDoctor_contactno() %></td>
            <td><a href="doctorinfo.jsp">Edit</a></td>
             <td><a href="delete_doctorServlet?doctor_id=<%=doc.getDoctor_id()%>">Delete</a></td>
        </tr>
		  
	  <%
	  
	  
	  s.close();
	  
	
	  
	  
  }
  
  
  %>

</tbody></table>

</body>

</html>