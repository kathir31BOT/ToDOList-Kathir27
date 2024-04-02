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
<style type="text/css">

*{
margin: 4px;
}

#img{
position: absolute;
width:100%;
background-position: center;
background-size: contain;
}
#cont{
position: relative;

line-height: 45px;
}

</style>
</head>
<body>
	<!-- <div id=img> <img alt="" src="https://cdn.pixabay.com/photo/2015/08/29/13/23/night-913046_1280.jpg"> </div> -->
	<div id="cont">
		<% User user = (User)request.getSession().getAttribute("user"); %>
	<% String usernmae = user.getUsername(); %>
	
	<h2>Welcome <%= usernmae %></h2>
	<h4>Email <%= user.getUseremail() %></h4>
	
	<%String image = new String (Base64.getEncoder().encode(user.getUserimage())); %>
	<img alt="" src="data:image/jpeg;base64,<%= image %>" width="151" height="152">
	
	</div>
	
	<a href="AddTask.jsp">Create Task</a>

</body>
</html>