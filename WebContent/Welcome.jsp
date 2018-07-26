<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<title>Login Page</title>

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
	$(document)
			.ready(
					function() {

						$('#welcome')
								.submit(
										function(e) {

											var userid = $('#loginId').val();

											var password = $('#password').val();

											var validDetails = true;

											$(".error").remove();

											if (userid.trim().length < 1) {

												$('#loginId')
														.before(
																'<span class="error">User Id field is required</span>');

												validDetails = false;

											}

											if (password.trim().length < 1) {

												$('#password')
														.before(
																'<span class="error">Password  field is required</span>');

												validDetails = false;

											}

											return validDetails;

										});

					});
</script>

</head>

<body>

	<form id="welcome" method="post" action="loginServlet">

		<!-- <div class="login">

			<h1 style="color: red;" >University Of Central Missouri Libraries</h1>

			<table>

				<tr>

					<td><label>UserId*:</label></td>

					<td><input type="text" name="loginId" id="loginId" value=""></td>

				</tr>

				<tr>

					<td><label>Password*:</label></td>

					<td><input type="password" name="password" id="password" value=""></td>

				</tr>

				<tr>

					<td><input type="submit" name="login" value="Log In" class="btn"></td>

					<td><label> New Student ? </label> <a href="Registration.jsp">Register

							Here</a></td>

				</tr>

			</table>

		</div> -->



		<div class="jumbotron" style="text-align: center;">

			<h1 class="resizable">University Of Central Missouri Libraries</h1>

		</div>



		<div class="container">

			<label for="loginId"><b>Username</b></label> <input type="text"
				placeholder="Enter Username" name="loginId" id="loginId" required>



			<label for="password"><b>Password</b></label> <input type="password"
				placeholder="Enter Password" name="password" id="password" required>



			<button type="submit" name="login">Login</button>

<!-- 			<label> <input type="checkbox" checked="checked"
				name="remember"> Remember me

			</label> -->

		</div>



		<div class="container" style="background-color: #f1f1f1">

			<label>New Student? <a href="Registration.jsp"> Register
					Here</a></label> <span class="psw"><label><a
					href="InProgressPage.jsp">Forgot password?</a></label></span>

		</div>

	</form>

</body>

</html>