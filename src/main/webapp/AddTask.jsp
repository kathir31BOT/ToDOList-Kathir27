<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	#img{
	position: absolute;
	}
	#con{
	
	border:solid black 1px;
	width:411px;
	height:411px;
	background-image:url("https://cdn.pixabay.com/photo/2022/12/07/20/17/earth-7641875_1280.jpg");
	position: absolute;
	background-position: center;
	background-size: cover;
	color: white;
	text-align:center;
	border-radius: 100%;
	margin-left: 781px;
	box-shadow: 0px 0px 15px 15px rgb(111,222,333);
	}
	#img2{
		border:solid black 1px;
	width:75px;
	height:75px;
	background-image:url("https://cdn.pixabay.com/photo/2011/12/13/14/30/mars-11012_1280.jpg");
	position: absolute;
	background-position: center;
	background-size: cover;
	color: white;
	text-align:center;
	border-radius: 100%;
	margin-left: 581px;
	margin-top:143px;
	box-shadow: 0px 0px 11px 11px white;
	}
	#img3{
		border:solid black 1px;
	width:241px;
	height:241px;
	background-image:url("https://cdn.pixabay.com/photo/2013/07/18/10/57/mercury-163610_1280.jpg");
	position: absolute;
	background-position: center;
	background-size: cover;
	color: white;
	text-align:center;
	border-radius: 100%;
	margin-left: 41px;
	margin-top:245px;
	box-shadow: 0px 0px 19px 19px orange;
	}
	#img3:hover{
		box-shadow: 0px 0px 19px 19px rgb(76,33,11);
	}
	#img2:hover{
		box-shadow: 0px 0px 12px 12px rgb(76,33,11);
	}
	#con:hover{
		box-shadow: 0px 0px 13px 13px rgb(164,94,68);
	}
	
	*{
	margin: 0px;
	}
	.bn{
	
	margin-top: 17px;
	
	
	margin-top: 23px;
	padding: 1.5px;
	}
	#con{
	color: white;
	}
	#btn{
	height: 25px;
	width: 75px;
	box-shadow: 0px 0px 7px 7px gray;
	border-radius: 9px;
	}
	#btn:hover {
	height: 31px;
	width: 95px;
	box-shadow: 0px 0px 7px 7px green;
	border-radius: 9px;
}
	.bn{
		height: 17px;
	width: 155px;
	box-shadow: 0px 0px 4px 4px gold;
	border-radius: 9px;
	position: relative;
	}
	.bn:hover{
	height: 17px;
	width: 155px;
	box-shadow: 0px 0px 4px 4px green;
	border-radius: 9px;
	}
	#ob{
	margin-left: 5px;
	}
	#hos{
		padding: 15px;
		margin-left: -35px;
		color: white;
		margin-top: 14px;
	}
	#on{
	margin-left: 22px;
	margin-top: 15px;
	padding: 5px;
	}
</style>
</head>
<body>
		<div id="img"> <img alt="" src="https://cdn.pixabay.com/photo/2022/01/30/13/04/scifi-6980833_1280.jpg"> </div>
		
		<div id="img2"></div>
		<div id="img3"></div>
		<div id="con">
				<form action="addtask" method="post" >
				
				Task Title :<input type="text" name="tasktitle" required class="bn"> <br>
				Task Description :<input type="text" name="taskdescription"  class="bn"> <br>
				
				<div id="hos">
					Options: <br>
				<label for="option1" >
					<input type="radio" id="option1" value="low" name="taskpriority" > Low
				</label> <br>
				<label for="option2" id="on">
					<input type="radio" id="option2" value="medium" name="taskpriority" id="ob" > Medium
				</label> <br> 
				
				<label for="option3" >
					<input type="radio" id="option3" value="high" name="taskpriority" > High
				</label> <br>
				
				</div>
				
				Due Date :<input type="date" name="taskduedate" class="bn"> <br>
				
				<input type="submit" class="bn" id="btn">
		</form>
		
		</div>
		
</body>
</html>