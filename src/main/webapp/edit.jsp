<%@page import="org.hibernate.Transaction"%>
<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<%@include file="all_js_css.jsp" %>
	</head>
	<body>
		<div class="container">
	    	<%@include file="navbar.jsp" %>
	    	<h1>Edit your note</h1>
	    	<%
	    	int noteId= Integer.parseInt(request.getParameter("note_id").trim());
			Session s = FactoryProvider.getFactory().openSession();
			Note note = (Note)s.get(Note.class, noteId);
			Transaction tx = s.beginTransaction();
			System.out.println(note.getId());
			System.out.println(note.getTitle());
			System.out.println(note.getContent());
	    	%>
	    	<form action="UpdateServlet" method="post">
			  <div class="form-group">
			  <input value="<%=note.getId()%> name="noteId" type="hidden" />
			    <label for="tite">Note title</label>
			    <input name="title" type="text" class="form-control" id="title" required aria-describedby="emailHelp" placeholder="Enter title" value="<%= note.getTitle() %>">
			  </div>
			  <div class="form-group">
			    <label for="content">Note content</label>
			    
			    <input name="content" type="text" id="content" class="form-control" required style="height:100px;" value="<%=note.getContent() %>">
			  </div>
			  
			  <div class="container text-center"></div>
			  <button type="submit" class="btn btn-success">Save your note</button>
			</form>
	    </div>
	
	</body>
</html>

