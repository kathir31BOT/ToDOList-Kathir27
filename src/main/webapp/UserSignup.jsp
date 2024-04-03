<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<style type="text/css">
* {
	margin: 0px;
}

#img {
	width: 300px;
	height: 21vh;
	background-position: center;
	background-size: contain;
	position: relative;
}

#bac1 {
	border: solid black 1px;
	width: 411px;
	height: 411px;
	background-color: red;
	position: absolute;
	margin-left: 455px;
	text-align: center;
	margin-top: 6px;
	background-image:
		url("https://cdn.pixabay.com/photo/2011/12/15/10/26/helix-nebula-11156_1280.jpg");
	background-position: center;
	background-size: cover;
	color: white;
	box-shadow: 0px 0px 16px 16px rgb(49, 142, 149);
	border-radius: 100%;
}

.co {
	margin-top: 29px;
	color: rgb(45, 121, 118);
	background-color: rgb(157, 190, 225);
}

#ig {
	margin-left: 3px;
	padding-left: 5px;
}

#img2 {
	border: solid black 1px;
	width: 111px;
	height: 111px;
	position: absolute;
	margin-left: 1051px;
	margin-top: 6px;
	background-image:
		url("https://cdn.pixabay.com/photo/2011/12/15/10/26/helix-nebula-11156_1280.jpg");
	background-position: center;
	background-size: cover;
	color: white;
	box-shadow: 0px 0px 13px 13px rgb(49, 142, 149);
	border-radius: 100%;
}

#img3 {
	border: solid black 1px;
	width: 111px;
	height: 111px;
	position: absolute;
	margin-left: 155px;
	margin-top: 6px;
	background-image:
		url("https://cdn.pixabay.com/photo/2011/12/15/10/26/helix-nebula-11156_1280.jpg");
	background-position: center;
	background-size: cover;
	color: white;
	box-shadow: 0px 0px 16px 16px rgb(49, 142, 149);
	border-radius: 100%;
}
#img4 {
	
	border: solid black 1px;
	width: 75px;
	height: 75px;
	position: absolute;
	margin-left: 999px;
	
	margin-top: 276px;
	background-image:
		url("https://cdn.pixabay.com/photo/2011/12/15/10/26/helix-nebula-11156_1280.jpg");
	background-position: center;
	background-size: cover;
	color: white;
	box-shadow: 0px 0px 16px 16px rgb(49, 142, 149);
	border-radius: 100%;
	margin-bottom: 455px;
	
}
#img:hover{
		box-shadow: 0px 0px 16px 16px rgb(190,216,230);
}
#img2:hover{
		box-shadow: 0px 0px 16px 16px rgb(190,216,230);
}
#img3:hover{
		box-shadow: 0px 0px 16px 16px rgb(190,216,230);
}
#img4:hover{
		box-shadow: 0px 0px 16px 16px rgb(190,216,230);
}
</style>
</head>
<body>


	<div id="img" >
		<img alt=""
			src="https://cdn.pixabay.com/photo/2016/05/12/16/35/earth-1388003_1280.jpg">

	</div>
	<div id="img2" class="cl">
	</div>
	<div id="img3" class="cl"></div>

	<div id="img4" class="cl"></div>


	<div id="back">
		<div id="bac1">

			<form action="signup" method="post" enctype="multipart/form-data">

				Id: <input type="text" name="id" class="co"> <br> Name:
				<input type="text" name="name" class="co"> <br> Email:
				<input type="email" name="email" class="co"> <br>
				Contact: <input type="text" name="contact" class="co"> <br>
				Password: <input type="text" name="password" class="co"> <br>
				Image: <input type="file" name="image" class="co" id="ig"> <br>
				<input type="Submit" class="co">
			</form>
		</div>

	</div>

</body>
</html>