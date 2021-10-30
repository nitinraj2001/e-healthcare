<html>
<head>
<title>feedback</title>


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
 

<style type="text/css">


.form-control{
    background: transparent;
}
form {
 width: 320px;
 margin: 20px;
}
form > div {
 position: relative;
 overflow: hidden;
}
form input, form textarea {
 width: 100%;
 border: 2px solid gray;
 background: none;
 position: relative;
 top: 0;
 left: 0;
 z-index: 1;
 padding: 8px 12px;
 outline: 0;
}
form input:valid, form textarea:valid {
 background: white;
}
form input:focus, form textarea:focus {
 border-color: #357EBD;
}
form input:focus + label, form textarea:focus + label {
 background: #357EBD;
 color: white;
 font-size: 70%;
 padding: 1px 6px;
 z-index: 2;
 text-transform: uppercase;
}
form label {
 -webkit-transition: background 0.2s, color 0.2s, top 0.2s, bottom 0.2s, right 0.2s, left 0.2s;
 transition: background 0.2s, color 0.2s, top 0.2s, bottom 0.2s, right 0.2s, left 0.2s;
 position: absolute;
 color: #999;
 padding: 7px 6px;
 font-weight: normal;
}
form textarea {
 display: block;
 resize: vertical;
}
form.go-bottom input, form.go-bottom textarea {
 padding: 12px 12px 12px 12px;
}
form.go-bottom label {
 top: 0;
 bottom: 0;
 left: 0;
 width: 100%;
}
form.go-bottom input:focus, form.go-bottom textarea:focus {
 padding: 4px 6px 20px 6px;
}
form.go-bottom input:focus + label, form.go-bottom textarea:focus + label {
 top: 100%;
 margin-top: -16px;
}
form.go-right label {
 border-radius: 0 5px 5px 0;
 height: 100%;
 top: 0;
 right: 100%;
 width: 100%;
 margin-right: -100%;
}
form.go-right input:focus + label, form.go-right textarea:focus + label {
 right: 0;
 margin-right: 0;
 width: 40%;
 padding-top: 5px;
}</style>
</head>
<body>
<div class="container">
    <div class="row">
        <form  action="savefeedbackServlet" method="post" class="col-md-9 go-right">
            <h2>Feedback Form</h2>
            <p>We welcome for your feedback and we will try to implement it into our website.</p>
            <div class="form-group">
            <input id="name" name="name" type="text" class="form-control" required>
            <label for="name">Your Name</label>
        </div>
        <div class="form-group">
            <input id="email" name="email" type="email" class="form-control" required>
            <label for="email">Email Address</label>
        </div>
        <div class="form-group">
            <input id="phone" name="phone" type="tel" class="form-control" required>
            <label for="phone">Primary Phone</label>
        </div>
        <div class="form-group">
            <textarea id="message" name="feedback" class="form-control" style="height: 150px" required></textarea>
            <label for="message">Message</label>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
        </form>
    </div>
</div>
</body>
</html>