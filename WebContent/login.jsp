<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


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
   
   

<title>Signin and Signup Page</title>


</head>

<body>



  <h1 align="center"><u>Health Care and Management</u></h1><br><br>
  
  <div class="container" id="container">
  
    <div class="form-container sign-up-container">
       
       
       <form action="SignUpServlet" method="get">
       
       <h1>Create Account</h1>
       
       <div class="social-container">
       
           <a href="#" class="social"><i class="fa fa-facebook"></i></a>
           
           <a href="#" class="social"><i class="fa fa-google"></i></a>
             
           <a href="#" class="social"><i class="fa fa-linkedin"></i></a>
       
       </div>
       
       <span>or use your email for registration</span>
       
       <input  type="text" name="name" placeholder="Name"/>
       
       <input type="email" name="email" placeholder="Email"/>
         
       <input type="password" name="password" placeholder="Password"/>
       
       <button>SingUp</button>
       
       </form>
   
    </div>
    
    <div class="form-container sign-in-container">
    
      <form action="SignInServlet" method="post">
      
        <h1>Sign-In</h1>
       
       <div class="social-container">
       
           <a href="#" class="social"><i class="fa fa-facebook-official"></i></a>
           
           <a href="#" class="social"><i class="fa fa-google"></i></a>
             
           <a href="#" class="social"><i class="fa fa-linkedin"></i></a>
           
           
       
       </div>
       
       <span>or use your Account</span>
       
          <input type="email" name="email" placeholder="Email"/>
         
          <input type="password" name="password" placeholder="Password"/>
          
          <a href="Forgot.jsp">Forgot Password</a>
          
          <button>SignIn</button>
      
      </form>

    </div>
    
    <div class="overlay-container">
    
      <div class="overlay">
      
       <div class="overlay-panel overlay-left">
       
       <h1>Welcome Back</h1>
       
       <p>To keep connected with us please login with your personal information</p>
       
       <button class="ghost" id="signIn">Sign In</button>
       
       </div>
      
      
      <div class="overlay-panel overlay-right">
       
       <h1>Hello! Friend</h1>
       
       <p>Enter your details and start your journey with us </p>
       
       <button class="ghost" id="signUp">Sign Up</button>
       
       </div>
      
      </div>

    </div>
  
  </div>
  
  <script type="text/javascript">
  
  const signUpButton = document.getElementById('signUp');
  const signInButton = document.getElementById('signIn');
  const container = document.getElementById('container');

  signUpButton.addEventListener('click', () => {
    container.classList.add('right-panel-active');
  });

  signInButton.addEventListener('click', () => {
    container.classList.remove('right-panel-active');
  });
  
  </script>

</body>

</html>