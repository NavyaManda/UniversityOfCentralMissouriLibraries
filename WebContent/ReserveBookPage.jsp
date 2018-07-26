<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reserve Book</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
</head>
<body>

	<form method="post" action="studentServlet">
		<div class="jumbotron" style="text-align: center;">
		<button type="button" class="btn btn-default btn-sm" style="float: left; height: 5%; width: 8%"  onclick="javascript:history.back();">
          <span class="glyphicon glyphicon-arrow-left"></span> back
        </button>
		<button type="button" class="btn btn-default btn-sm" style="float: right; height: 5%; width: 8%"  onclick="javascript:window.location.href='Welcome.jsp';">
          <span class="glyphicon glyphicon-log-out"></span> Log out
        </button>
			<h1 class="resizable">University Of Central Missouri Libraries</h1>
		</div>
		<div class="container">
		
		<label for="bookName"><b>Book Name</b></label> <input type="text"
				placeholder="Game of Thrones" name="bookName" id="bookName" required>
				
		<label for="author"><b>Author</b></label> <input type="text"
				placeholder="George R.R Martin" name="author" id="author" required>	
				
		<label for="category"><b>Category</b></label> <input type="text"
				placeholder="Fiction" name="category" id="category" required>	
				
		<button type="submit" name="reserveBook">Reserve Book</button>				
		</div>
		<!-- <center> -->
			<!-- <div style="height: 40; color: blue">
				<h1 style="color: red;">University Of Central Missouri Libraries</h1>
				<span style="float: right"><input
					type="submit" name="logout" value="Log Out"></span> -->
		<!-- 	</div>
			<div style="height: 10px"></div>
			</div>
			<table align="center" border="0" width="50%" cellpadding="3"
				cellspacing="0">
				<thead>
					<tr>
						<th colspan="2">Book Details</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Book Name</td>
						<td><input type="text" name="bookName" value="" /></td>
					</tr>
					<tr>
						<td>Author</td>
						<td><input type="text" name="author" value="" /></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" name="reserveBook" value="Reserve Book" /></td>
					</tr>
			</table>
		</center> -->
	</form>
</body>
</html>