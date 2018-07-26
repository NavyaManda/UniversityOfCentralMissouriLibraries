<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Registration Details</title>

<meta charset="utf-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<link href="styles/stylesheet.css" rel="stylesheet" type="text/css">

<script type="text/javascript"
	src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {

						$('#registration')
								.submit(
										function(e) {

											var fName = $('#fName').val()
													.trim();

											var lname = $('#lName').val()
													.trim();

											var studentId = $('#studentId')
													.val().trim();

											var userName = $('#userName').val()
													.trim();

											var password = $('#password').val()
													.trim();

											var confirmPassword = $(
													'#cpassword').val().trim();

											var email = $('#emailId').val()
													.trim();

											var confirmEmail = $('#cemailId')
													.val().trim();

											var phNumber = $('#phNumber').val()
													.trim();

											var userNamePattern = /^[a-z0-9_-]{4,15}$/;

											var emailPattern = new RegExp(
													/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);

											var passworPattern = /^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%&]).*$/;

											var validDetails = true;

											$(".error").remove();

											if (fName.trim().length < 2) {

												$('#fName')
														.before(
																'<span class="error">First name Should atleast be two characters.</span>');

												validDetails = false;

											}

											if (/^[a-zA-Z0-9- ]*$/.test($(
													"#fName").val()) == false) {

												$('#fName')
														.before(
																'<span class="error">First name cannot contain special characters.</span>');

												validDetails = false;

											}

											if (lname.trim().length < 2) {

												$('#lName')
														.before(
																'<span class="error">Last name cannot be empty.</span>');

												validDetails = false;

											}

											if (/^[a-zA-Z0-9- ]*$/.test($(
													"#lName").val()) == false) {

												$('#lName')
														.before(
																'<span class="error">Last name cannot contain special characters.</span>');

												validDetails = false;

											}

											if (studentId.trim().length != 8) {

												$('#studentId')
														.before(
																'<span class="error">Please enter your 8 digit student id.</span>');

												validDetails = false;

											}

											if (!userNamePattern.test(userName)) {

												$('#userName')
														.before(
																'<span class="error">Username should be 4-15 characters without special symbols</span>');

												validDetails = false;

											}

											if (!passworPattern.test(password)) {

												$('#password')
														.before(
																'<span class="error">Passwords must atleast be 8 characters with at least 1 number, 1 lowercase, 1 uppercase letter and 1 special character</span>');

												validDetails = false;

											}

											if (password != confirmPassword) {

												$('#cpassword')
														.before(
																'<span class="error">Passwords donot match</span>');

												validDetails = false;

											}

											if (email != confirmEmail) {

												$('#cemailId')
														.before(
																'<span class="error">Email dont match</span>');

												validDetails = false;

											}

											if (!emailPattern.test(email)) {

												$('#emailId')
														.before(
																'<span class="error">Email is not valid</span>');

												validDetails = false;

											}

											if (phNumber.trim().length != 10) {

												$('#phNumber')
														.before(
																'<span class="error">Please enter a valid phone number, should be 10 digits</span>');

												validDetails = false;

											}

											return validDetails;

										});
					});
</script>

</head>

<body>

	<form id="registration" method="post" action="studentServlet">

		<div class="jumbotron" style="text-align: center;">

			<h1 class="resizable">University Of Central Missouri Libraries</h1>

		</div>

		<div class="container">

			<label for="fName"><b>First Name</b></label> <input type="text"
				placeholder="Ned" name="fName" id="fName" required> <label
				for="lName"><b>Last Name</b></label> <input type="text"
				placeholder="Stark" name="lName" id="lName" required> <label
				for="studentId"><b>Student Id</b></label> <input type="number"
				placeholder="12345678" name="studentId" id="studentId" required>

			<label for="userName"><b>User Name</b></label> <input type="text"
				placeholder="Enter User Name" name="userName" id="userName" required>

			<label for="password"><b>Password</b></label> <input type="password"
				placeholder="Enter Password (atleast 8 charecters with numbers, uppercase and special characters e.g. 1@Password)"
				name="password" id="password" required> <label
				for="cpassword"><b>Confirm Password</b></label> <input
				type="password" placeholder="Confirm Password" name="cpassword"
				id="cpassword" required> <label for="emailId"><b>Email</b></label>

			<input type="text" placeholder="ned.stark@winterfell.com"
				name="emailId" id="emailId" required> <label for="cemailId"><b>Confirm
					Email</b></label> <input type="text" placeholder="ned.stark@winterfell.com"
				name="cemailId" id="cemailId" required> <label
				for="phNumber"><b>Contact Number</b></label> <input type="number"
				placeholder="1234567890" name="phNumber" id="phNumber" required>

			<button type="submit" name="register" id="register">register</button>

		</div>

		<div class="container" style="background-color: #f1f1f1">

			<label>Have an account already? <a href="Welcome.jsp">
					Login Here</a></label>
		</div>

	</form>
</body>
</html>