<%@page import="DTO.Task"%>
<%@page import="java.util.List"%>
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
#img2:hover {
	box-shadow: 0px 0px 12px 12px red;
}

#cont {
	position: relative;
	line-height: 45px;
}

table,tr,th,td {

	border-collapse: collapse;
	
	border-spacing: 4px;
	padding: 15px;
}

#nav {
	border: solid black 1px;
	width: 100%;
	height: 151px;
	/* background-image:url("https://cdn.pixabay.com/photo/2024/01/24/01/55/stone-8528536_1280.jpg");
	
 */	
 	background-color:rgb(185,152,100);
 	background-position: center;
	background-size: cover;
	color: white;
	box-shadow: 0px 0px 5px 5px black;
}

* {
	margin: 0px;
}

#img {
	margin-left: 1101px;
	margin-top: -97px;
	width: 151px;
	height: 139px;
	position: absolute;
	box-shadow: 0px 0px 5.5px 5.5px lightyellow;
}
#img:hover{
	box-shadow: 0px 0px 6.5px 6.5px lightblue;
}
#life {
	margin-left: 395px;
	margin-top: -75px;
	position: absolute;
	box-shadow: 0px 0px 4.5px 4.5px lightyellow;
	background-color: lightgreen;
	background-image:
		url("https://cdn.pixabay.com/photo/2018/03/04/09/51/space-3197610_1280.jpg");
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	color: black;
	background-color: black;
	border-radius: 35px;
}
#life:hover{
	box-shadow: 0px 0px 6.5px 6.5px lightblue;
}

.bt {
	border: solid black 1px;
	height: 35px;
	width: 375px;
	text-align: center;
	background-color: lightblue;
	background-image:
		url("https://cdn.pixabay.com/photo/2018/03/04/09/51/space-3197610_1280.jpg");
	background-position: center;
	background-size: cover; box-shadow : 0px 0px 2.5px 2.5px lightyellow;
	margin-left: 12px;
	margin-top: 15px;
	position: relative;
	color: black;
	border-radius: 15px;
	box-shadow: 0px 0px 4.5px 4.5px lightyellow;
}
.bt:hover{
	
	box-shadow: 0px 0px 6.5px 6.5px lightblue;	
}

#crt {
	border: solid black 1px;
	height: 35px;
	width: 135px;
	text-align: center;
	margin-top: 45px;
	margin-left: 561px;
	border-radius: 25px;
	font-size: x-large;
	background-color:rgb(101,140,147);
	color: red;
	box-shadow: 0px 0px 5px 5px lightblue;
}
#crt:hover{
	box-shadow: 0px 0px 6.5px 6.5px rgb(185,152,100);
}

#bigimg {
	background-image:url("https://cdn.pixabay.com/photo/2018/03/04/09/51/space-3197610_1280.jpg");
	background-color:
	width: 100%;
	height: 99vh;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
	margin-top: -25px;
	box-shadow: 0px 0px 5px 5px black;
}

#table{
text-align: center;
margin-left: 325px;
margin-top: 45px;
color: black;
border: solid black 1px;
width: 774px;
height: auto;
background-image: url("https://cdn.pixabay.com/photo/2024/03/29/16/15/ai-generated-8663152_1280.jpg"); 
box-shadow: 0px 0px 7.5px 7.5px rgb(185,152,100);

}
#table:hover{
	box-shadow: 0px 0px 6.5px 6.5px lightblue;
}

#tasm{
	margin-left: -361px;
	margin-top: -21px;
}
</style>
</head>
<body>
	<div id="cont">
		<%
		User user = (User) request.getSession().getAttribute("user");
		%>
		<%
		String usernmae = user.getUsername();
		%>
		<div id="nav">
			<h2 id="name" class="bt">
				Welcome :<%=usernmae%></h2>
			<h2 id="email" class="bt">
				Email :<%=user.getUseremail()%></h2>
			<h2 id="life">
				ORGANIZE YOUR WORK AND LIFE WITH OUR TODOLIST....
				</h1>
				<%
				String image = new String(Base64.getEncoder().encode(user.getUserimage()));
				%>
				<img alt="" src="data:image/jpeg;base64,<%=image%>" id="img">
		</div>
	</div>
	<div id="bigimg">
		<div id="crt">
			<a href="AddTask.jsp">Create Task</a>
		</div>
		<br>

		<%
		List<Task> tasks = (List) request.getAttribute("tasks");
		%>
		<div id="table">
		<h3 id="tasm">Tasks</h3>
			<table border="2px">
				<tr bor>

					<th>TaskNumber</th>
					<th>Title</th>
					<th>Description</th>
					<th>Priority</th>
					<th>Due Date</th>
					<th>Status</th>
					<th>Delete</th>
					<th>Edit</th>
				</tr>
				
				<% int num = 1; %>
				<%
				for (Task task : tasks) {
				%>
				<tr border="2px">
					<td><%=num%></td>
					<td><%=task.getTasktitle()%></td>
					<td><%=task.getTaskdescription()%></td>
					<td><%=task.getTaskpriority()%></td>
					<td><%=task.getTaskduedate()%></td>
					<td><%=task.getTaskstatus()%></td>
					<td><a href="delete?id=<%=task.getTaskid()%>">Delete</a>
					<td> <a href="edit?id=<%= task.getTaskid()%>">UpdateTask</a></td>
					</td>
				</tr>
					<% num+=1; %>
				<%}	%>
			</table>
			
		</div>	
	</div>
	<a href="logout123">Logout</a>
</body>
</html>