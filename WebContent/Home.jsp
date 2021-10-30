<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

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
 

<title>Insert title here</title>


</head>



<body >

<style>


.header{
	
	height:100%;
	
	background-image:linear-gradient(rgba(0,0,0,0.6),rgba(0,0,0,0.6)),url("Images/frontpage1.jpg");
	
	background-size: cover;
	
	background-position: center;
	
	background-attachment: fixed;
	
	
	
	
}
.btn {
    font-family: 'Montserrat', sans-serif;
}
.heading {
    text-align: center;
    padding:30px;
    font-size: 40px;
    font-family: 'Montserrat', sans-serif;
}

.header{
	
	padding-top:20px;
	
	text-align:center;
	
	color:#fff;
	
	padding-bottom:120px;
	

}
.center{
    text-align: center;
    font-family: 'Dancing Script', cursive;
    font-size: 18px;
}
.head2  {
    font-size: 20px;
    margin-top: 50px;
    margin-bottom: 20px;
    font-family: 'Montserrat', sans-serif;
}
.collapse {
    font-family: Georgia, 'Times New Roman', Times, serif;
}
</style>

<section class="header">


<div class="container">

<nav class="navbar navbar-expand-lg navbar-dark purple">

 
  <a class="navbar-brand" href="Home.jsp">Health Care And Route Application</a>
 
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
 
    <span class="navbar-toggler-icon"></span>
 
  </button>

 
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
 
    <ul class="navbar-nav mr-auto">
    
      <li class="nav-item dropdown">
      
        <a class="nav-link dropdown-toggle active" href="adminFunctionality.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
         Login
        </a>
 
     <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        
          <a class="dropdown-item" href="login.jsp"> User Login</a>
          
          <a class="dropdown-item" href="Security.jsp">Doctor Login</a>
          
           <a class="dropdown-item" href="Security.jsp"> Admin Login</a>
          
     
          
     
      </li>    
      
        
       <li class="nav-item active">
 
        <a class="nav-link active" href="healthblogs.jsp">HealthBlogs<span class="sr-only">(current)</span></a>
 
      </li>
 
          
       <li class="nav-item active">
 
        <a class="nav-link active" href="bloodManagement_indexpage.jsp">BLood Management<span class="sr-only">(current)</span></a>
 
      </li>
 
 
    </ul>
    <form class="form-inline my-2 my-lg-0">
    
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      
      <button class="btn btn-outline-light my-2 my-sm-0 " type="submit">Search</button>
   
    </form>
  
  </div>

</nav>



<p class="heading">Welcome to Health Care And Route Application</p><br>

<p class="center">A fit body, a calm mind , a house full of love. These things cannot be bought they must be earned.True silence is the rest of the mind, and is to the spirit what sleep is to the body, nourishment and refreshment.</p>

 <h2 class="head2">Read More About Health Diet</h2>
  <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">About HealthDiet By Harvard</button>
  <div id="demo" class="collapse">
   The expert panel that developed the 2015-20 Dietary Guidelines for Americans acknowledged a shift away from focusing on individual nutrients or foods, toward considering everything we eat and drink. The aim is to have us worry less about getting the recommended dietary intake of every vitamin and mineral and instead to develop a general sense of what constitutes a healthy meal.

Nutrition scientists at the Harvard T.H. Chan School of Public Health, who share that view, have developed the Healthy Eating Plate to illustrate the basic components of a healthy diet. The relative sizes of the plate's sections suggest approximate proportions of each of the food groups to include in a healthy meal.

The representation is not based on specific calorie amounts and is not meant to prescribe a certain number of calories or servings per day, since individuals' calorie and nutrient needs vary based on age, gender, body size, and level of activity.

The following should help you shift into a healthier eating pattern.



</div><br><br>



</section>

<div id="multi-item-example" class="carousel slide carousel-multi-item" data-ride="carousel">

  <!--Controls-->
  <div class="controls-top">
    <a class="btn-floating" href="#multi-item-example" data-slide="prev"><i class="fas fa-chevron-left"></i></a>
    <a class="btn-floating" href="#multi-item-example" data-slide="next"><i
        class="fas fa-chevron-right"></i></a>
  </div>
  <!--/.Controls-->

  <!--Indicators-->
  <ol class="carousel-indicators">
    <li data-target="#multi-item-example" data-slide-to="0" class="active"></li>
    <li data-target="#multi-item-example" data-slide-to="1"></li>
    
  </ol>
  <!--/.Indicators-->

  <!--Slides-->
  <div class="carousel-inner" role="listbox">

    <!--First slide-->
    <div class="carousel-item active">

      <div class="col-md-3" style="float:left">
       <div class="card mb-2">
          <img class="card-img-top"
            src="Images/doctors.jpg" alt="Card image cap">
          <div class="card-body">
            <h4 class="card-title">Dr Avinash Kumar </h4>
            <p class="card-text">He has 12 years of experience in orthology department</p>
            <a class="btn btn-primary">Contact</a>
          </div>
        </div>
      </div>

      <div class="col-md-3" style="float:left">
        <div class="card mb-2">
          <img class="card-img-top"
            src="Images/doctors.jpg" alt="Card image cap">
          <div class="card-body">
            <h4 class="card-title">Dr Abhishek Kumar Singh</h4>
            <p class="card-text">He has 10 years of experience in orthology department.</p>
            <a class="btn btn-primary">contact</a>
          </div>
        </div>
      </div>

      <div class="col-md-3" style="float:left">
        <div class="card mb-2">
          <img class="card-img-top"
            src="Images/doctors.jpg" alt="Card image cap">
          <div class="card-body">
            <h4 class="card-title">Card title</h4>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
              card's content.</p>
            <a class="btn btn-primary">Button</a>
          </div>
        </div>
      </div>
      
       <div class="col-md-3" style="float:left">
       <div class="card mb-2">
          <img class="card-img-top"
            src="Images/doctors.jpg" alt="Card image cap">
          <div class="card-body">
            <h4 class="card-title">Card title</h4>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
              card's content.</p>
            <a class="btn btn-primary">Button</a>
          </div>
        </div>
      </div>

    </div>
    <!--/.First slide-->

    <!--Second slide-->
    <div class="carousel-item">

      <div class="col-md-3" style="float:left">
        <div class="card mb-2">
          <img class="card-img-top"
            src="Images/doctors.jpg" alt="Card image cap">
          <div class="card-body">
            <h4 class="card-title">Card title</h4>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
              card's content.</p>
            <a class="btn btn-primary">Button</a>
          </div>
        </div>
      </div>

      <div class="col-md-3" style="float:left">
        <div class="card mb-2">
          <img class="card-img-top"
            src="Images/doctors.jpg" alt="Card image cap">
          <div class="card-body">
            <h4 class="card-title">Card title</h4>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
              card's content.</p>
            <a class="btn btn-primary">Button</a>
          </div>
        </div>
      </div>

      <div class="col-md-3" style="float:left">
        <div class="card mb-2">
          <img class="card-img-top"
            src="Images/doctors.jpg" alt="Card image cap">
          <div class="card-body">
            <h4 class="card-title">Card title</h4>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
              card's content.</p>
            <a class="btn btn-primary">Button</a>
          </div>
        </div>
      </div>
      
      <div class="col-md-3" style="float:left">
        <div class="card mb-2">
          <img class="card-img-top"
            src="Images/doctors.jpg" alt="Card image cap">
          <div class="card-body">
            <h4 class="card-title">Card title</h4>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
              card's content.</p>
            <a class="btn btn-primary">Button</a>
          </div>
        </div>
      </div>

    </div>
    <!--/.Second slide-->

   

  </div>
  <!--/.Slides-->

</div>
<!--/.Carousel Wrapper-->

</div>

<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
.footer {
    background-color: black;
    opacity: 0.8;
    padding: 100px;
    margin-top: 40px;
    color: white;
    margin-bottom: 10px;
}
.fa {
  padding: 20px;
  font-size: 15px;
  width: 30px;
  text-align: center;
  text-decoration: none;
  margin: 5px 10px;
  border-radius: 50%;
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}

.fa-linkedin {
  background: #007bb5;
  color: white;
}



.fa-instagram {
  background: #125688;
  color: white;
}

.fa-pinterest {
  background: #cb2027;
  color: white;
}




</style>

<footer>
    <div class="footer">
        <h1>Contact Us</h1>
        <p>0120-784392, 9871236758</p>
        <!-- Add font awesome icons -->
<a href="#" class="fa fa-facebook"></a>
<a href="#" class="fa fa-linkedin"></a>
<a href="#" class="fa fa-instagram"></a>
<a href="#" class="fa fa-pinterest"></a>
        
    </div>
    
</footer>
</body>

</html>