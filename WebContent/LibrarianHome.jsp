<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Librarian Home</title>
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
	<form id="librarianHome" method="post" action="librarianServlet">
		<div class="jumbotron" style="text-align: center;">
		<button type="button" class="btn btn-default btn-sm" style="float: right; height: 5%; width: 8%"  onclick="javascript:window.location.href='Welcome.jsp';">
          <span class="glyphicon glyphicon-log-out"></span> Log out
        </button>
			<h1 class="resizable">University Of Central Missouri Libraries</h1>
		</div>
		<div class="container">
		<button type="submit" name="addBook" id="addBook">Add Book</button>
		<label></label>
		<button type="submit" name="deleteBook" id="deleteBook">Delete Book</button>
		</div>
	
		<!-- <table>
			<tr>
				<td><span
					style="width: 100px; height: 80px; padding-right: 10px"><input
						type="submit" name="addBook" value="Add Book"></span> <span><input
						type="submit" name="deleteBook" value="Delete Book"></span></td>
			</tr>
		</table> -->
	</form>
</body>
</html>