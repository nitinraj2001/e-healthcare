<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>

<head>
  <title>Login of Blood Bank Management System</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  
</head>

<body>
<style>

html
{ height: 100%;}

*
{ margin: 0;
  padding: 0;}

body
{ font: normal .80em 'trebuchet ms', arial, sans-serif;
  background: #FFF;
  background:url(../image/bde.jpg);
  background-repeat: no-repeat;
  color: #555;}

p
{ padding: 0 0 20px 0;
  line-height: 1.7em;}

img
{ border: 0;}

h1, h2, h3, h4, h5, h6 
{ color: #362C20;
  letter-spacing: 0em;
  padding: 0 0 5px 0;}

h1, h2, h3
{ font: normal 170% 'century gothic', arial;
  margin: 0 0 15px 0;
  padding: 15px 0 5px 0;
  color: #000;}

h2
{ font-size: 160%;
  padding: 9px 0 5px 0;
  color: #009FBC;}

h3
{ font-size: 140%;
  padding: 5px 0 0 0;}

h4, h6
{ color: #009FBC;
  padding: 0 0 5px 0;
  font: normal 110% arial;
  text-transform: uppercase;}

h5, h6
{ color: #888;
  font: normal 95% arial;
  letter-spacing: normal;
  padding: 0 0 15px 0;}

a, a:hover
{ outline: none;
  text-decoration: underline;
  color: #0000ff;}

a:hover
{ text-decoration: none;}

blockquote
{ margin: 20px 0; 
  padding: 10px 20px 0 20px;
  border: 1px solid #E5E5DB;
  background: #FFF;}

ul
{ margin: 2px 0 22px 17px;}

ul li
{ list-style-type: circle;
  margin: 0 0 6px 0; 
  padding: 0 0 4px 5px;
  line-height: 1.5em;}

ol
{ margin: 8px 0 22px 20px;}

ol li
{ margin: 0 0 11px 0;}

.left
{ float: left;
  width: auto;
  margin-right: 10px;}

.right
{ float: right; 
  width: auto;
  margin-left: 10px;}

.center
{ display: block;
  text-align: center;
  margin: 20px auto;}

#main, #logo, #menubar, #site_content, #footer
{ margin-left: auto; 
  margin-right: auto;}

#header
{ background: #323534 url(../image/back.png) repeat-x;
  height: 177px;}


#logo
{ width: 880px;
  position: relative;
  height: 140px;
  background: transparent;}

#logo #logo_text 
{ position: absolute; 
  top: 10px;
  left: 0;}

#logo h1, #logo h2
{ font: normal 300% 'century gothic', arial, sans-serif;
  border-bottom: 0;
  text-transform: none;
  margin: 0 0 0 9px;}

#logo_text h1, #logo_text h1 a, #logo_text h1 a:hover 
{ padding: 22px 0 0 0;
  color: #FFF;
  letter-spacing: 0.1em;
  text-decoration: none;}

#logo_text h1 a .logo_colour
{ color: #32CD32;}

#logo_text a:hover .logo_colour
{ color: #DC143C;}

#logo_text h2
{ font-size: 120%;
  padding: 4px 0 0 0;
  color: #ADFF2F;}

#menubar
{ width: 880px;
  height: 46px;} 

ul#menu
{ float: right;
  margin: 0;}

ul#menu li
{ float: left;
  padding: 0 0 0 9px;
  list-style: none;
  margin: 1px 2px 0 0;
  background: #5A5A5A url(../image/tab.png) no-repeat 0 0;}

ul#menu li a
{ font: normal 100% 'trebuchet ms', sans-serif;
  display: block; 
  float: left; 
  height: 20px;
  padding: 6px 35px 5px 28px;
  text-align: center;
  color: #FFF;
  text-decoration: none;
  background: #5A5A5A url(../image/tab.png) no-repeat 100% 0;} 

ul#menu li.selected a
{ height: 20px;
  padding: 6px 35px 5px 28px;}

ul#menu li.selected
{ margin: 1px 2px 0 0;
  background: #24488f url(../image/tab_selected.png) no-repeat 0 0;}

ul#menu li.selected a, ul#menu li.selected a:hover
{ background: #24488f url(../image/tab_selected.png) no-repeat 100% 0;
  color: #FFF;}

ul#menu li a:hover
{ color: #DCDCDC;}

#site_content
{ width: 880px;
  overflow: hidden;
  margin: 20px auto 0 auto;
  padding: 0 0 10px 0;} 

#sidebar_container
{ float: right;
  width: 224px;}

.sidebar_top
{ width: 222px;
  height: 14px;
  background: transparent url(../image/side_top.png) no-repeat;}

.sidebar_base
{ width: 222px;
  height: 14px;
  background: url(../image/side_base.png) no-repeat;}

.sidebar
{ float: right;
  width: 222px;
  padding: 0;
  margin: 0 0 16px 0;}

.sidebar_item
{ background: url(../image/side_back.png) repeat-y;
  padding: 0 15px;
  width: 192px;}

.sidebar li a.selected
{ color: #444;} 

.sidebar ul
{ margin: 0;} 

#content
{ text-align: left;
  width: 620px;
  float: left;
  padding: 5px 5px 15px 15px;
   border-radius: 10px;
   background-color: #F9FAFE;
  }
  #content input[type=submit] {
  width: 15%;
  display: block;
  margin-bottom: 5px;
  position: right;
  border-radius: 24px;
  height: 25px;
  background: #007acc;
  
 
}
 #content input[type=reset] {
  width: 35%;
  display: block;
  margin-bottom: 5px;
  position: center;
  border-radius: 24px;
  height: 20px;
  background: #007acc;
  
 
}


#content select {
  width: 34%;
  height: 20px;
  display: block;
  margin-bottom: 10px;
  position: center;
  border-radius: 24px;
  height: 20px;
  background: #E8F2FE;
   
 
}
#content table {
  width: 600%;
  height: 30px;
  margin-bottom: 5px;
  position: left;
  border-radius: 25px;
  padding: 1px 20px 5px 10px;
  border:1px;
  
 
  
 
}

 #content table td{border:solid 1.5px #493cf7;}
 #content tr:first-child td:first-child {border-top-left-radius:10px;}
 #content tr:first-child td:last-child {border-top-right-radius:10px;}
 #content tr:last-child td:first-child {border-bottom-left-radius:10px;}
 #content tr:last-child td:last-child  {border-bottom-right-radius:10px;}
  
 


#content input[type=text], input[type=password],input[type=date],input[type=reset]{
	
  height: 20px;
  font-size: 13px;
  width: 35%;
  margin-bottom: 5px;
  -webkit-appearance: none;
  background: #E8F2FE;
  border: 1px solid #B4CDE6;
  border-top: 1px solid #B4CDE6;
  /* border-radius: 2px; */
  padding: 0 8px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  border-radius: 20px;
  
}
  
#content ul
{ margin: 2px 0 22px 0px;}

#content ul li, .sidebar ul li
{ list-style-type: none;
  background: url(../image/bullet.png) no-repeat;
  margin: 0 0 0 0; 
  padding: 0 0 4px 25px;
  line-height: 1.5em;}

#footer
{ width: 100%;
  font-family: 'trebuchet ms', sans-serif;
  font-size: 100%;
  height: 80px;
  padding: 28px 0 5px 0;
  text-align: center; 
  background: #3B3939 url(../image/footer.png) repeat-x;
  color: #A8AA94;}

#footer p
{ line-height: 1.7em;
  padding: 0 0 10px 0;}

#footer a
{ color: #A8AA94;
  text-decoration: none;}

#footer a:hover
{ color: #FFF;
  text-decoration: none;}

.search
{ color: #5D5D5D; 
  border: 1px solid #BBB; 
  width: 134px; 
  padding: 4px; 
  font: 100% arial, sans-serif;}

.form_settings
{ margin: 15px 0 0 0;}

.form_settings p
{ padding: 0 0 4px 0;}

.form_settings span
{ float: left; 
  width: 200px; 
  text-align: left;}
  
.form_settings input, .form_settings textarea
{ padding: 5px; 
  width: 299px; 
  font: 100% arial; 
  border: 1px solid #E5E5DB; 
  background: #FFF; 
  color: #47433F;}
  
.form_settings .submit
{ font: 100% arial; 
  border: 0; 
  width: 99px; 
  margin: 0 0 0 212px; 
  height: 33px;
  padding: 2px 0 3px 0;
  cursor: pointer; 
  background: #3B3B3B; 
  color: #FFF;}

.form_settings textarea, .form_settings select
{ font: 100% arial; 
  width: 299px;}

.form_settings select
{ width: 310px;}

.form_settings .checkbox
{ margin: 4px 0; 
  padding: 0; 
  width: 14px;
  border: 0;
  background: none;}

.separator
{ width: 100%;
  height: 0;
  border-top: 1px solid #D9D5CF;
  border-bottom: 1px solid #FFF;
  margin: 0 0 20px 0;}
  
table
{ margin: 10px 0 30px 0;}

table tr th, table tr td
{ background: #AEC7E1;
  color: #ce091d;
  padding: 7px 4px;
  text-align: left;}
  
table tr td
{ background: #E8F2FE;
  color: #1a0d8e;
  border-top: 1px solid #ff1717;}
</style>
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="bindex.jsp">Blood Bank Management <span class="logo_colour">System</span></a></h1>
          <h2>Donating blood helps to save life...</h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li ><a href="bloodManagement_indexpage.jsp">Home</a></li>
          <li><a href="bloodbank_registrationpage.jsp">Register</a></li>
          <li class="selected"><a href="bloodbank_login.jsp">Log In</a></li>
        </ul>
      </div>
    </div>
    <div id="content_header"></div>
    <div id="site_content">
      <div id="banner"></div>
	  <div id="sidebar_container">
        <div class="sidebar">
          <div class="sidebar_top"></div>
          <div class="sidebar_item">
            <!-- insert your sidebar items here -->
            <h3>Latest News</h3>
            <h4>New Website Launched</h4>
            <h5>February 1st, 2020</h5>
            <p>2020 sees the redesign of our website. Take a look around and let us know what you think.<br /><a href="#">Read more</a></p>
          </div>
          <div class="sidebar_base"></div>
        </div>
        <div class="sidebar">
          <div class="sidebar_top"></div>
          <div class="sidebar_item">
            <h3>Useful Links</h3>
            <ul>
              <li><a href="#">link 1</a></li>
              <li><a href="#">link 2</a></li>
              <li><a href="#">link 3</a></li>
              <li><a href="#">link 4</a></li>
            </ul>
          </div>
          <div class="sidebar_base"></div>
        </div>
        <div class="sidebar">
          <div class="sidebar_top"></div>
          <div class="sidebar_item">
            <h3>Search</h3>
            <form method="post" action="#" id="search_form">
              <p>
                <input class="search" type="text" name="search_field" value="Enter keywords....." />
                <input name="search" type="image" style="border: 0; margin: 0 0 -9px 5px;" src="../image//search.png" alt="Search" title="Search" />
              </p>
            </form>
          </div>
          <div class="sidebar_base"></div>
        </div>
      </div>
      <div id="content">
        <!-- insert the page content here -->
        <h1>Welcome to login page</h1>
		
		 <form method="post" action="databaselogin.jsp">
                  User name:<br>
                  <input type="text" name="username" required>
                  <br>
                   Password:<br>
                  <input type="password" name="pass" required>
                  <br><br>
                  <input type="submit" value="LogIn">
                  </form> 
		
       <h3>If you are not registred user please <a href="bloodbank_registrationpage.jsp">click here!!!</a></h3>
        
      </div>
    </div>
    <div id="content_footer"></div>
    <div id="footer">
	<p>Copyright &copy; Ismail | <a href="bindex.jsp">Blood Bank Management System</a></p>
    </div>
  </div>
</body>
</html>