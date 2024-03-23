<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign up page</title>
</head>

<body
	style="background-image: url(./img4.webp); background-size: cover;">
	<header style="background-color: aquamarine;">
		<h1
			style="text-align: center; font-size: 40px; text-decoration: underline;">New Account Registration</h1>
		<br>
		<marquee behavior="scroll" direction="left">
			<p style="font-size: 27px;">fill up your required details below:</p>
			<br>
		</marquee>
	</header>
	<form action="Signup" method="post">
		<pre>
                   <label for="name">Name  -->      </label>   <input type="text"
				class="jj" id="name" name="name" required><br><br>
                  <label for="email">Email -->        </label> <input type="email"
				class="jj" id="email" name="email" required><br><br>
                  <label for="phone">contact  -->      </label><input type="text"
				class="jj" id="phone" name="phone" required><br><br>
                 <label for="Bank">Bank name -->      </label><select for="Bank" class="jj" name="Bank">
       <option value="bank of baroda">bank of baroda</option><option value="bank of india">bank of india</option><option value="bank of maharashtra">bank of maharashtra</option><option value="canara bank">canara bank</option><option value="central bank of india">central bank of india</option><option value="indian bank">indian bank</option><option value="indian overseas bank">indian overseas bank</option><option value="punjab national bank">punjab national bank</option><option value="panjab&sind bank">panjab&sind bank</option><option value="union bank of india">union bank of india</option><option value="uco bank">uco bank</option><option value="state bank of india">state bank of india</option></select>
    
<label for="Location">Branch Location(District)-->  </label><select for="Location" class="jj" name="location">
     <option value="Ariyalur">Ariyalur</option><option value="Chengalpattu">Chengalpattu</option><option value="Chennai">Chennai</option><option value="Coimbatore">Coimbatore</option><option value="Cuddalore">Cuddalore</option><option value="Dharmapuri">Dharmapuri</option><option value="Dindigal">Dindigal</option><option value="Erode">Erode</option><option value="Kallakurichi">Kallakurichi</option><option value="Kancheepuram">Kancheepuram</option><option value="Kanyakumari">Kanyakumari</option><option value="Karur">Karur</option><option value="Krishnagiri">Krishnagiri</option><option value="Madurai">Madurai</option><option value="Mayiladuthurai">Mayiladuthurai</option><option value="Nagapattinam">Nagapattinam</option><option value="Namakkal">Namakkal</option><option value="Nilgiris">Nilgiris</option><option value="Perambalur">Perambalur</option><option value="Pudukottai">Pudukottai</option><option value="Ramanathapuram">Ramanathapuram</option><option value="Ranipet">Ranipet</option><option value="Salem">Salem</option><option value="Sivagangai">Sivagangai</option><option value="Tenkasi">Tenkasi</option><option value="Thanjavur">Thanjavur</option><option value="Theni">Theni</option><option value="Thoothukudi">Thoothukudi</option><option value="Tiruchirappalli">Tiruchirappalli</option><option value="Tirunelveli">Tirunelveli</option><option value="Tirupathur">Tirupathur</option><option value="Tiruppur">Tiruppur</option><option value="Tiruvallur">Tiruvallur</option><option value="Tiruvannamalai">Tiruvannamalai</option><option value="Tiruvarur">Tiruvarur</option><option value="Vellore">Vellore</option><option value="Viluppuram">Viluppuram</option><option value="Virudhunagar">Virudhunagar</option></select><br><br>
             <label for="password">Set a New Password --> </label><input
				type="password" class="jj" required name="password" id="password"><br><br>
     
       </pre>
		<button type="submit" value="signup" id="ss">Submit</button>
	</form>
	<div></div>
</body>
</html>
<style>
body {
	text-align: center;
	color: rgb(1, 16, 16);
}

p {
	font-size: 20px;
}

label {
	font-size: 20px
}

h1:hover {
	color: rgb(165, 165, 37);
	font-size: 33px;
}

.jj {
	font-size: 20px;
	background-color: rgb(236, 234, 234);
	border-radius: 15%;
	height: 35px;
	width: 200px;
	border-top: none;
	border-left: none;
	border-right: none;
}

.jj:hover {
	background-color: black;
	color: white;
}

#ss {
	text-align: center;
}

button {
	border: 2px solid black;
	font-size: 30px;
	height: 40px;
	width: 180px;
}

button:hover {
	border: 3px solid blue;
	color: white;
	background-color: black;
}

form {
	padding-top: 50px;
}
</style>