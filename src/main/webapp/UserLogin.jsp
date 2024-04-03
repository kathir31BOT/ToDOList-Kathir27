<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
* {
	margin:0px;
}


#img{
	border: solid black 1px;
	width:100%;
	height:100vh; 
	background-image: url("https://cdn.pixabay.com/photo/2020/02/23/05/28/planets-4872299_1280.jpg"); 
}
#inner{
	border:solid black 1px;
	width: 311px;
	height: 311px;
	margin-left: 899px;
	margin-top: 11px;
	text-align: center;	 
	background-image: url("https://cdn.pixabay.com/photo/2014/11/24/16/35/alien-544193_1280.jpg");
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	box-shadow: 0px 0px 15px 15px rgb(210,209,203);
	opacity: .9;
	border-radius: 100%;
	line-height: 45px;
	
}
#far{
	color: white;
	position: absolute;
	margin-top: 115px;
	margin-left: 25px;
	opacity: 0.1s;
}
#bass{
margin-left:3px;
position: relative;

}
#vass{
margin-left: 25px;
}
#inner:hover {
	box-shadow: 0px 0px 17px 17px rgb(219,198,97);
}
</style>
</head>
<body>


	<div id="img">
	
		<div id="inner">

		<form action="userlogin" method="post" id="far">
			User Email :<input type="text" name="email" id="vass"> <br> 
			User Password :<input type="text" name="password" id="bass"> <br>
			<input type="Submit">
		</form>
		
	</div>
	
	</div>
	
	

	
</body>
</html>