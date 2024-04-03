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
	hight: 19px;
	width: 111px;
	background-color: rgb(237,233,201);
	margin-top:119px;
	margin-left:145px;
	margin-bottom:156px;
	color: black;
	
	}
	#sig{
	border: solid black 1px; 
	hight: 19px;
	width: 111px;
	margin-top:119px;
	margin-bottom:156px;
	background-color: rgb(237,233,201);
	color: black;
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
	display: flex;
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
	padding: 15px;
	box-shadow :0px 0px 21px 21px rgb(147, 166, 174) ;
	background-image: url("https://cdn.pixabay.com/photo/2012/12/27/19/41/halloween-72939_1280.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	display: flex;
	}
	#losi:hover{
	box-shadow: 0px 0px 15px 15px rgb(255,135,71);
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
	display: flex;
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
	.s1{
	margin-left:9px;
	padding-bottom:5px;
	padding-top:25px:

	 }
	.s1:hover {
	
	box-shadow: 0px 0px 5px 5px rgb(255,135,71);
	color:red;	
}
#mars:hover {
	box-shadow: 0px 0px 13px 13px rgb(112,113,151);
}
</style>

</head>
<body>

			
			<div id="img">
				<img alt="" src="https://cdn.pixabay.com/photo/2018/08/15/13/10/galaxy-3608029_1280.jpg">
			
			
			</div >
			
				<div id="losi"> 
			 <a href="UserLogin.jsp" id="log" class="s1"> <h3>Login</h3>  </a> <br> <br>
			<a href="UserSignup.jsp" id="sig" class="s1"><h3>SignUp</h3></a>
			</div>
			
			 <div id="box">
					
					<img alt="" src="https://cdn.pixabay.com/photo/2020/02/16/05/59/alien-4852662_1280.jpg" id="mars">
					<h1 id="wel"> Welcome To The ToDoList Gallexy</h1>
			</div>
			
			
			
			
			
			
			
			

</body>
</html>