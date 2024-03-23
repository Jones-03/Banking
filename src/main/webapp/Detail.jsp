
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Details</title>
</head>
<body style="text-align: center;">
   <h1>Your Account Details</h1>
   <p>Your Account has been created successfully,Here is your Account Details:
   <%
   try {
	  
	   Class.forName("com.mysql.cj.jdbc.Driver");
	   Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","Jones2003!");
	   Statement s=c.createStatement();
	   s.execute("use jdbc");
	  
	   String q="select * from bank where Rno=(select count(uname) from bank)";
	   ResultSet rs=s.executeQuery(q);
   	  %>
   	  
   	  <table cellspacing=10px; cellpadding=5px; border="2px solid black" style="margin-left: auto;margin-right: auto;"><% 
	   while(rs.next()) {
		 %><tr><td>Name</td><td>  <% out.println(rs.getString("uname"));%></td></tr>
	<tr><td>Email</td><td><% 	 out.println(rs.getString("email"));%></td></tr>
	<tr><td>Contact</td><td><% 	 out.println(rs.getString("phonenumber"));%></td></tr>
	<tr><td>Password</td><td><%	 out.println(rs.getString("passcode"));%></td></tr>
	<tr><td>Account Number</td><td><% out.println(  rs.getString("accnumber"));%></td></tr>
	<tr><td>Bank Name</td><td><%	 out.println( rs.getString("bankname"));%></td></tr>
	<tr><td>IFSC code</td><td><%	 out.println( rs.getString("IFSC"));%></td></tr>
	<tr><td>Branch Name</td><td><%	 out.println( rs.getString("branch"));%></td></tr>
	<tr><td>Balance(Rs.)</td><td><%	 out.println(rs.getInt("balance"));%></td></tr>
   <%  }
   }
  
   catch(Exception E){
	   E.printStackTrace();
	   
   }
   %>
   </table><br>
   <div id="SS">
   <a href="home.jsp" style="border:2px solid black;">back</a>
</div>
</body>
</html>
<style>
table{
font-size:25px;
color:white;
background-color:black;
 text-align: center;
}
tr:hover{
color:black;
background-color:white;
}
h1{
background-color:black;
font-size:40px;
text-align: center;
color: red;
}
a{
font-size:29px;
text-align: center;
color:blue;
background-color:yellow;
text-decoration: none;
border-radius: 10%;
}
a:hover{
color:black;
background-color:white;
}
#ss{
border: 2px solid black;
text-align: center;
width: 250px;
height:70px;
border-radius: 10%;
}
#ss:hover{
color:white;
background-color:black;

}
p{
font-size: 30px;
font-family: serif;
}
</style>