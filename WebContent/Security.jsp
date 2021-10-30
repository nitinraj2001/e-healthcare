<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <meta charset="utf-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


<title>Security page</title>

<style type="text/css">


body{
	
	height:100%;
	
	background-image:linear-gradient(rgba(0,0,0,0.6),rgba(0,0,0,0.6)),url("Images/doctors.jpg");
	
	background-size: cover;
	
	background-position: center;
	
	background-attachment: fixed;
	
	
	
	
}

body {
  color: #fff;
}

 .modal-footer {
       
            margin-top: 1rem;
     
        }
       
         
            .flex-center {
         
          display: flex;
         
          justify-content: center;
          
          
           align-items: center;
        
 height: 100%;
          
          }



</style>

</head>

<body>
  <h1 align="center">Welcome To The Security Page</h1>
  
  <div class="container">
  
  <p align="center">The purpose of security is to keep this application safe and your properties safe from burglaries, theft and other crimes.<br> <br>Private residential security guards ensure the safety of all the residents living in the community they serve like that we have arrange some security code for accessing the functionality of doctors and admin.<br><br>Please try to enter the correct code for further enhancing yuor functionalities.</p>

<div style="height: 100vh;">
          
           <div class="flex-center">
           
        <div class="container">
          
            <div class="row">
              
                <div class="col-md-6 col-md-offset-3">
                 
                    <!-Form without header->
                   
                    <div class="card login">
                   
                        <div class="card-content">
                           
                        
                            <div class="text-center">
                          
                               <h3><i class="fa fa-lock"></i> This is for the security requirement purpose </h3>
                         
                            </div>
                            
                          
                            <div class="row">
                            
                                <form class="col-md-12" action="DoctorLogSecurity">
                            
                                  <div class="row">
                                  
                                  <p><u> If you are doctor then please enter the security code</u></p>
                             
                                    <div class="input-field col-md-12">
                               
                                      <i class="fa fa-envelope prefix"></i>
                                     
                                      <label for="icon_prefix">Please Enter Doctor_Security_Code</label>
                                      
                                       <input id="icon_prefix" type="password" name="security" class="validate">
                                       
                                       <button class="btn btn-default waves-effect waves-light">Submit</button>
                                       
                                    </div></div></form><br><br><br>
                                    
                               
                                    <form class="col-md-12" action="AdminLogSecurity" method="get">
                               
                                  <div class="row">
                                  
                                  <p><u>If you are the admin then please enter the admin security code.</u></p>
                               
                                    <div class="input-field col-md-12">
                               
                                      <i class="fa fa-envelope prefix"></i>
                                     
                                     <label for="icon_prefix">Please Enter Administrative_Security_Code</label>
                                      
                                       <input id="icon_prefix" type="text" name="security" class="validate">
                                       
                                       <button class="btn btn-default waves-effect waves-light">Submit</button>
                                       
                                    </div></div></form>
                                    
                               
                            
                             
                  
        
        </div>
       </div>
       

</body>
</html>