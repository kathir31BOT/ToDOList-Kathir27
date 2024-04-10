<%@page import="DTO.Task"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	#bigimg{
		background-image: url("https://cdn.pixabay.com/photo/2024/03/29/06/11/ai-generated-8662264_1280.jpg");
		background-size: cover;
		background-position: center;
		width: 100%;
		height: 111vh;
	}
</style>
</head>
<body>

	<div id="bigimg">
		<%
		Task task = (Task) request.getAttribute("task");
		%>
		<form action="updatetaske" method="post">
			Task Id:<input type="text" name="taskid" hidden=""
				value="<%=task.getTaskid()%>"> <br> Task Title:<input
				type="text" name="tasktitle" value="<%=task.getTasktitle()%>"
				required> <br> Task Description:<input type="text"
				name="taskdescription" value="<%=task.getTaskdescription()%>">
			<br> Currunt Task Priority:
			<h4><%=task.getTaskpriority()%></h4>
			<label for="option1"> <input type="radio" id="option1"
				value="low" name="taskpriority"> Low
			</label> <br> <label for="option2" id="on"> <input type="radio"
				id="option2" value="medium" name="taskpriority"> Medium
			</label> <br> <label for="option3"> <input type="radio"
				id="option3" value="high" name="taskpriority"> High
			</label> <br> Due Date:<input type="date" name="taskduedate"
				value="<%=task.getTaskduedate()%>"> <br> Status:<input
				type="text" name="taskstatus" value="<%=task.getTaskstatus()%>">
			<br> <input type="text" hidden="" name="userid"
				value="<%=task.getUserid()%>"> <br> <input
				type="submit">
		</form>

	</div>

</body>
</html>