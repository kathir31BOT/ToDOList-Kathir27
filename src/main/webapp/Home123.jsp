<%@page import="java.util.Base64"%>
<%@page import="DTO.User"%>
<%@page import="com.mysql.cj.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<% User user = (User)request.getSession().getAttribute("user"); %>
	<% String usernmae = user.getUsername(); %>
	
	<h2>Welcome <%= usernmae %></h2>
	<h4>Email <%= user.getUseremail() %></h4>
	
	<%String image = new String (Base64.getEncoder().encode(user.getUserimage())); %>
	<img alt="" src="data:image/jpeg;base64,<%= image %>" width="441" height="442">

</body>
</html>