<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact us</title>
</head>
<body>
	<h1 style="font-size: 40px; font-style: italic;">Contact us</h1>
	<p style="font-size: 23px;">Leave a Feedback Here to reach us</p>
	<form action="Contactus" method="post" id="ee">
		<label for="name">Name:</label><br>
		<br> <input type="text" required name="name"><br> <label
			for="email">Email:</label><br>
		<br> <input type="email" required name="email"><br>
		<p>Leave your Thoughts !</p>
		<textarea name="text" id="" cols="30" rows="5" required></textarea>
		<br> <br>
		<br>
		<button type="submit">Submit</button>
	</form>
</body>

</html>
<style>
#ee {
	font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
}

body {
	text-align: center;
	background-color: cornsilk;
}

label {
	font-size: 24px;
}

label:hover {
	color: darkseagreen;
}

input {
	height: 25px;
	width: 200px;
	font-size: 21px;
	border-radius: 15%;
	border-top: none;
	border-left: none;
	border-right: none;
}

input:hover {
	color: aliceblue;
	background-color: black;
	border: 2px solid whitesmoke;
}

textarea {
	border-radius: 10%;
	border: 0px;
	font-size: 18px;
	font-family: 'Courier New', Courier, monospace;
}

textarea:hover {
	color: black;
	background-color: gainsboro;
}

button {
	border-radius: 10%;
	border: 2px solid black;
	height: 30px;
	width: 90px;
	font-size: 21px;
	font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
}

button:hover {
	color: navy;
	background-color: grey;
	border: 2px solid white;
}
</style>