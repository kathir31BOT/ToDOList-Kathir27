<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
* {
	text-align: center;
	ackground-image:
		url("https://cdn.pixabay.com/photo/2024/02/27/00/15/chrysanthemum-8599121_1280.jpg");
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>


	<form action="signup" method="post" enctype="multipart/form-data">

		id: <input type="text" name="id"> <br> 
		Name: <input type="text" name="name"> <br>
		Email: <input type="email" name="email"> <br>
		Contact: <input type="text" name="contact"> <br> 
		Password: <input type="text" name="password"> <br> 
		Image: <input type="file" name="image"> <br> 
		<input type="Submit">
	</form>

</body>
</html>