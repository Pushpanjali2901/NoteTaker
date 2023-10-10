<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Add Notes</title>
		<%@include file="all_js_css.jsp" %>
	</head>
	<body>
		<div class="container">
			<%@include file="navbar.jsp" %>
			<br>
			<h1> Please fill your note detail</h1>
			<form action="SaveNoteServlet" method="post">
			  <div class="form-group">
			    <label for="tite">Note title</label>
			    <input name="title" type="text" class="form-control" id="title" required aria-describedby="emailHelp" placeholder="Enter title">
			  </div>
			  <div class="form-group">
			    <label for="content">Note content</label>
			    <textarea name="content" id="content" placeholder="Enter your content" required class="form-control" style="height:300px;"></textarea>
			  </div>
			  
			  <div class="container"></div>
			  <button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</body>
</html>