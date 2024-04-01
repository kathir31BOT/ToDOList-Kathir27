<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

	#log{
	border: solid black 1px; 
	hight: 25px;
	width: 251px;
	background-color: rgb(19,12,20);
	margin-top:35px;
	}
	#sig{
	border: solid black 1px; 
	hight: 25px;
	width: 251px;
	background-color: rgb(19,12,20);
	}
	*{
	text-align: center;
	margin: 0px;
	
	}
	#img{
	position: absolute;
	width:100%;
	hight:100vh;
	background-size: cover;
	
	}
	#losi{
	border-radius: 100%;
	border: solid black 1px;
	border-style:none;
	width:311px;
	height:311px;
	
	margin-left: 785px;
	margin-top: 245px;
	position:absolute;
	font-size:25px;
	background-color: rgb(80, 127, 149);
	color: white;
	padding: 35px;
	box-shadow :0px 0px 21px 21px rgb(147, 166, 174) ;
	background-image: url("https://cdn.pixabay.com/photo/2012/12/27/19/41/halloween-72939_1280.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	}
	#box{
		border:solid black 1px;
		width:255px;
		hight:114px;
		position:relative;
		
	}
	#mars{
	border:solid black 1px;
	width:355px;
	height:344px;  
	margin-left:159px;
	margin-top:249px; 
	box-shadow:0px 0px 12px 12px rgb(147, 166, 174); 
	}
	#wel{
	position:relative;
	margin-left:325px;
	margin-top:-315px;
	color: rgb(59,28,20);
	font-family: sans-serif; 
	
	font-weight:75px;
	box-shadow: 0px 0px 15px 25px rgb(232,228,195);
	}
</style>

</head>
<body>

			
			<div id="img">
				<img alt="" src="https://cdn.pixabay.com/photo/2018/08/15/13/10/galaxy-3608029_1280.jpg">
			
			
			</div >
			
				<div id="losi"> 
			 <a href="UserLogin.jsp" id="log">Login</a> <br> <br>
			<a href="UserSignup.jsp" id="sig">SignUp</a>
			</div>
			
			 <div id="box">
					
					<img alt="" src="https://cdn.pixabay.com/photo/2020/02/16/05/59/alien-4852662_1280.jpg" id="mars">
					<h1 id="wel"> Welcome To The ToDoList Gallexy</h1>
			</div>
			
			
			
			
			
			
			
			

</body>
</html>