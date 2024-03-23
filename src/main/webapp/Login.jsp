<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- saved from url=(0061)file:///C:/Users/JONES/Desktop/html/my%20project/project.html -->
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Log in page</title>
</head>
<body style="background-image: url(./img3.jpeg);">
	<div id="body">
		<div id="one">
			<h1>LOG IN</h1>
			<p id="now">Log in to your account before proceeding</p>
			<form action="Login" method="post">

				<label for="acc">Account Number</label><br> <input id="acc" required
					type="text" name="acc"><br> <label for="password">password</label><br>
				<input id="pass" type="password" name="password" required><br>
				<p>Didn't have an Account? please sign up</p>
				<div id="last"></div>
				<div id="rip">
					<button id="log" type="submit" value="login">login</button>
					<a id="a" href="Signup.jsp">sign up</a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
<style>
#body {
	text-align: center;
	font-size: 35px;
}

h1:hover {
	color: navy;
}
#now{
text-align: center;
}
body:hover {
	background-color: aliceblue;
}

#one {
	color: darkslategrey;
}

#one:hover {
	font-size: 36px;
	color: black;
}

#acc {
	border: 2px solid black;
	height: 30px;
	width: 250px;
	border-radius: 25px;
	font-size: 25px;
	border-top: none;
	border-left: none;
	border-right: none;
}

#mail:hover {
	background-color: aquamarine;
}

#pass {
	border: 2px solid black;
	height: 30px;
	width: 250px;
	font-size: 25px;
	border-radius: 25px;
	border-top: none;
	border-left: none;
	border-right: none;
}

#pass:hover {
	background-color: aquamarine;
}

#log {
	border: 2px solid black;
	border-radius: 25%;
	font-size: 30px;
	width: 125px;
	height: 40px;
	border-top: none;
	border-left: none;
	border-right: none;
}

#log:hover {
	color: white;
	background-color: rgb(123, 152, 152);
}

#a {
	color: black;
	border: 2px solid black;
	border-radius: 25%;
	width: 125px;
	height: 40px;
	font-size: 30px;
	border-top: none;
	border-left: none;
	border-right: none;
	text-align: center;
}

#a:hover {
	color: white;
	background-color: rgb(123, 152, 152);
}

#rip {
	padding-left: 20px;
	padding-right: 30px;
}

#last {
	margin-left: 5%;
	gap: 30px;
	margin-right: 15%;
	padding: 20px;
	padding-left: 20px;
	padding-right: 20px;
}

a {
	color: black;
	text-decoration: none;
}

a:hover {
	color: white;
}
</style>