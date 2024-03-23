<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
</head>

<body style="background-color: darkturquoise; border: 10px solid black;">

	<header>
		<div id="pp">
			<img id="img" src="./bankinglogo.avif" alt="bob.png">
		</div>
	</header>
	<nav id="pne">
		<a href="Login.jsp" class="nav">Transaction</a> 
		<a href="Signup.jsp"class="nav">Create a Account</a> 
		<a href="Contactus.jsp" class="nav">Contactus</a> 
		<a href="Overview.jsp" class="nav">Accounts</a> 
		<a href="Aboutus.jsp" class="nav">About us</a>
	</nav>
   <div id="par"><p>
   welcome to our banking applicetion, your trusted financial  partner.
 our user-friendly web application offers convenient access to your accounts, seamless transactions and 
comprehensive financial management tools. whether you are checking your balance or transferiring funds,
we're here to make your banking experience efficient and secure. join us today and take control of your finances with ease. 
   </p></div>
	<div id="ss">
		<div id="box">
			Create a Account <br>
			<br> <a style="color: hotpink;" href="Signup.jsp">Know
				more--!</a>
		</div>
		<br>
		<div id="box1">
			Contact us<br>
			<br> <a href="Contactus.jsp" style="color: hotpink;">Know
				more--!</a>
		</div>
		<br>
		<div id="box2">
			 Money Transaction<br>
			<br> <a style="color: hotpink;" href="Login.jsp">Know
				more--!</a>
		</div>
		<br>
		<div id="box3">
			More<br>
			<br> <a style="color: hotpink;" href="Overview.jsp">Know more--!</a><br>

		</div>
	</div>
	<%
	int bal=0;
try {
	  
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","Jones2003!");
    Statement s=c.createStatement();
    s.execute("use jdbc");
   String query="select count(uname) as 'count' from bank";
   ResultSet rs=s.executeQuery(query);
   
   while(rs.next()){
    bal=rs.getInt("count");
   }
}
   catch(Exception E){
	   E.printStackTrace();
	   }
   
   %>
   <div id="box4" style="margin-top:20px; margin-bottom:30px;">
   <p><%out.println(bal); %></p>
    <p>Clients till now--!</p>
 </div>
	<hr style="border: 2px dashed black;">
	<footer style="background-color: blanchedalmond;">
		<div id="foot">
			<a class="aa" href="Login.jsp" >Transaction</a> <a class="aa"
				href="Signup.jsp" id="aaa">Sign up</a><br><br> <a class="aa"
				href="Contactus.jsp">Contact us</a> <a class="aa" href="Overview.jsp" id="aaa">Accounts</a><br><br>
			<a class="aa" href="Aboutus.jsp">About us</a>
		</div>
	</footer>
</body>
</html>
<style>
#pp {
	background-color: darkturquoise;
}

#pp:hover {
	background-color: black;
}
#par{
padding-left:5%;
padding-right:5%;
font-size:35px;
font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
}
#par:hover{
color:white;
}
#aaa{
padding-left:5%;

}

#pne {
    margin-top:30px;
    margin-bottom:30px;
	display: flex;
	padding-left: 5%;
	padding-right: 5%;
	gap: 10%;
}

#img {
	float: 0%;
	width: 100%;
	height: 250px;
}

.nav {
	border: 2px solid black;
	display: flex;
	font-size: 20px;
	text-decoration: none;
	align-items: center;
	height: 35px;
	width: 120px;
	border-radius: 8%;
	text-align: center;
	background-color: aquamarine;
	color: navy;
}

.nav:hover {
	border: 2px solid white;
	color: white;
	background-color: black;
}

#box {
	border-radius: 5%;
	margin-left: 40%;
	margin-top: 20px;
	padding-top: 5%;
	border: 0px solid black;
	color: black;
	height: 140px;
	width: 350px;
	font-size: 30px;
	text-align: center;
	background-color: aliceblue;
}

#box:hover {
	color: beige;
	background-color: darkslategrey;
}

#box1 {
	border-radius: 5%;
	padding-top: 5%;
	margin-left: 40%;
	border: 0px solid black;
	color: black;
	height: 140px;
	width: 350px;
	font-size: 30px;
	text-align: center;
	background-color: aliceblue;
}

#box1:hover {
	color: beige;
	background-color: darkslategrey;
}

#box2 {
	border-radius: 5%;
	padding-top: 5%;
	margin-left: 40%;
	border: 0px solid black;
	color: black;
	height: 140px;
	width: 350px;
	font-size: 30px;
	text-align: center;
	background-color: aliceblue;
}

#box2:hover {
	color: beige;
	background-color: darkslategrey;
}

#box3 {
	border-radius: 5%;
	padding-top: 5%;
	margin-left: 40%;
	border: 0px solid black;
	color: black;
	height: 140px;
	width: 350px;
	font-size: 30px;
	text-align: center;
	background-color: aliceblue;
}

#box3:hover {
	color: beige;
	background-color: darkslategrey;
}
#box4{
    border-radius: 5%;
	padding-top:6px;
	padding-bottom:16px;
	margin-left: 40%;
	border: 0px solid black;
	color: black;
	height: 140px;
	width: 350px;
	font-size: 30px;
	text-align: center;
	background-color: aliceblue;
}
#box4:hover{
    color: beige;
	background-color: darkslategrey;
}

a {
	text-decoration: none;
}

#kk {
	align-items: center;
	text-align: center;
}

#kk:hover {
	color: white;
	background-color: black;
}

#ss {
	text-align: center;
}

footer {
	text-align: center;
	font-size: 25px;
}

footer:hover {
	background-color: blueviolet;
	color: white;
}

#foot {
	font-family: Verdana, Geneva, Tahoma, sans-serif;
	padding-top: 30px;
	padding-bottom: 30px;
}

.aa {
    
	color: black;
}

.aa:hover {
	color: cornflowerblue;
	font-style: italic;
}

</style>
