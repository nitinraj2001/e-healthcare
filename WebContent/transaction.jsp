<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true" %>

<!DOCTYPE html>
<html lang="en">
  <%@include file="pageheader.jsp"%>
  <body>
	<%@include file="header.jsp"%>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery-1.11.3.js" />"></script>

	<main id="content" class="mainContent sutd-template" role="main">
	<div class="container">
		<%@include file="errorMessage.jsp"%>
		<div id="createTransaction">
			<form id="newTransactionForm" action="newTransaction" method="post">
				<div id="input-group-transcode" class="form-group">
					<label for="transcode" class="control-label">Transaction code</label>
					<input type="text" class="form-control" id="transcode" name="transcode" placeholder="Transaction Code">
				</div>
				<div id="input-group-toAccount" class="form-group">
					<label for="toAccountNum" class="control-label">To (account number)</label>
					<input type="number" class="form-control" id="toAccountNum" name="toAccountNum" placeholder="To Account Number">
				</div>
				<div id="input-group-amount" class="form-group">
					<label for="amount" class="control-label">Amount</label>
					<input type="number" class="form-control" id="amount" name="amount" placeholder="amount">
				</div>
				<button id="createTransBtn" type="submit" class="btn btn-default">Submit</button>
			</form>
		</div>
	</div>
	</main>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery-1.11.3.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/transaction.js" />"></script>
  </body>
</html><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true" %>


<html lang="en">
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
 

  <%@include file="pageheader.jsp"%>
  <body>
	<%@include file="header.jsp"%>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery-1.11.3.js" />"></script>

	<main id="content" class="mainContent sutd-template" role="main">
	<div class="container">
		<%@include file="errorMessage.jsp"%>
		<div id="createTransaction">
			<form id="newTransactionForm" action="newTransaction" method="post">
				<div id="input-group-transcode" class="form-group">
					<label for="transcode" class="control-label">Transaction code</label>
					<input type="text" class="form-control" id="transcode" name="transcode" placeholder="Transaction Code">
				</div>
				<div id="input-group-toAccount" class="form-group">
					<label for="toAccountNum" class="control-label">To (account number)</label>
					<input type="number" class="form-control" id="toAccountNum" name="toAccountNum" placeholder="To Account Number">
				</div>
				<div id="input-group-amount" class="form-group">
					<label for="amount" class="control-label">Amount</label>
					<input type="number" class="form-control" id="amount" name="amount" placeholder="amount">
				</div>
				<button id="createTransBtn" type="submit" class="btn btn-default">Submit</button>
			</form>
		</div>
	</div>
	</main>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery-1.11.3.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/transaction.js" />"></script>
  </body>
</html>