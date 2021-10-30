<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <link rel="icon" href="<c:url value="/resources/img/sutd-logo.ico" />">

    <title>DIGITAL BANK</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.min.css" />">
    <script type="text/javascript" src="<c:url value="/resources/js/jquery-1.11.3.js" />"></script>

    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap-theme.min.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bankwebapp.css" />">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <style>
    
    body {
	padding-top: 50px;
}
.sutd-template a.navbar-brand {
	padding: 8px;
}
.sutd-template .navbar-nav {
	float: right;
	font-size: 17px;
}
.sutd-template .navbar-nav>li>a {
	color: #e6e6e6;
	font-weight: bold;
}
.header-text {
	color: #9d9d9d;
	padding-top: 13px;
	padding-bottom: 15px;
}
.mainContent {
	padding-top: 20px;
	padding-bottom: 80px;
}
.feature {
	padding-bottom: 100px;
	padding-top: 100px;
	border-top: 1px solid #e5e5e5;
}
footer.sutd-template {
	border-top: 1px solid #e5e5e5;
	padding-top: 40px;
	padding-bottom: 40px;
	background-color: #def7e0;
}
.record {
	border: 0.5px solid #ddd;
	border-radius: 8px;
	margin: 10px 0;
	padding: 20px 10px 10px 20px;
}
.record-header {
	margin-bottom: 10px;
	font-weight: bold;
}
.record-content p {
	margin: 20px 0;
}
.toolbar {
	margin-top: 20px;
}
.loginForm {
	margin: auto;
    width: 350px;
    border: 3px solid green;
    padding: 20px;
}

/* registration page */
.registrationForm {
	margin: auto;
    width: 600px;
    border: 3px solid green;
    padding: 20px;
}

/* staff dashboard */
.commonTable th, 
.commonTable td {
	text-align: left;
	padding: 4px;
	line-height: 2;
}
    </style>
    
  </head>

  <body>
	<header class="sutd-template">
	    <nav class="navbar navbar-inverse navbar-fixed-top">
	      <div class="container">
	        <div class="navbar-header">
	          <button id="navbar-button" type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	            <span class="sr-only">Toggle navigation</span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </button>
	          <a class="navbar-brand" href="welcome"><img alt="SUTD Logo" src="<c:url value="/resources/img/sutd-logo.png" />"></a>
	        </div>
	        <div id="navbar" class="collapse navbar-collapse">
	          <ul class="nav navbar-nav">
	            <c:if test="${empty authenticatedUser}">
	            	<li><a href="login" style="font-size: 11px;">LOGIN</a></li>
            	 	<li><a href="register" style="font-size: 11px;">REGISTER</a></li>
	            </c:if>
	            <c:if test="${not empty authenticatedUser}">
	            	<li><a href="logout" style="font-size: 11px;">LOGOUT</a></li>
	            </c:if>
	          </ul>
	        </div><!--/.nav-collapse -->
	      </div>
	    </nav>
	</header>

	<!-- Login form -->
	<c:if test="${empty authenticatedUser}">
		<main class="mainContent sutd-template" role="main">
			<div>
				<h2 style="text-align: center">Login</h2>
			<div class="containter loginForm">
				<form id="loginForm" action="login" method="post">
					<div id="messageBox" class="hidden"></div>
					<c:if test="${not empty req_error}">
						<div id="errorMsg">
							<p class="text-danger">${req_error}</p>
						</div>
					</c:if>
					<c:remove var="req_error" scope="session" /> 
					<div id="input-group-username" class="form-group">
						<label for="username" class="control-label">User name</label>
						<input type="text" class="form-control" id="username" name="username" placeholder="User name">
					</div>
					<div id="input-group-password" class="form-group">
						<label for="password" class="control-label">Password</label>
						<input type="password" class="form-control" id="password" name="password" placeholder="Password">
					</div>
					<button id="loginButton" type="submit" class="btn btn-default">Sign in</button>
				</form>
			</div>
			</div>
		</main>
	</c:if>
    <!-- jQuery and line numbering JavaScript -->
    <script type="text/javascript" src="<c:url value="/resources/js/jquery-1.11.3.js" />"></script>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/login.js" />"></script>
  </body>
</html>