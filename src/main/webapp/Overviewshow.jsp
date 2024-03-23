<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Details</title>
</head>
<body>
  <%
   String q=" ";
   %>
    <%
   try {
	  
	   Class.forName("com.mysql.cj.jdbc.Driver");
	   Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","Jones2003!");
	   Statement s=c.createStatement();
	   s.execute("use jdbc");
	   
	   if("a".equals(request.getAttribute("z"))){
		
	    q="select * from bank where accnumber='"+request.getAttribute("acc")+"';";
	   ResultSet rs=s.executeQuery(q);
   	  %>
   	  <h1>Your Remaining Balance</h1>
   	  <br>
   	  <table cellspacing=10px; cellpadding=5px; border="2px solid black" style="margin-left: auto;margin-right: auto;"><% 
	   while(rs.next()) {
		 %>
	 
	<tr><td><b>Account Number</b></td><td><%out.println(rs.getString("accnumber"));%></td></tr>
		
	<tr><td><b>Balance(Rs.)</b></td><td><%out.println(rs.getInt("balance"));%></td></tr>
   <%  }
   	  c.close();
   }
   %>
   </table><br><% 
    if("b".equals(request.getAttribute("z"))){
    	
	   q="select * from bank where accnumber= '"+request.getAttribute("acc")+"';";
	   ResultSet rs=s.executeQuery(q);
   	  %>
   	  <h1>Your Account Details</h1>
   	  <table cellspacing=10px; cellpadding=5px; border="2px solid black" style="margin-left: auto;margin-right: auto;"><% 
	   while(rs.next()) {
		 %><tr><td><b>Name</b></td><td>  <% out.println(rs.getString("uname"));%></td></tr>
	<tr><td><b>Email</b></td><td><% 	 out.println(rs.getString("email"));%></td></tr>
	<tr><td><b>Contact</b></td><td><% 	 out.println(rs.getString("phonenumber"));%></td></tr>
	<tr><td><b>Password</b></td><td><%	 out.println(rs.getString("passcode"));%></td></tr>
	<tr><td><b>Account Number</b></td><td><% out.println(  rs.getString("accnumber"));%></td></tr>
	<tr><td><b>Bank Name</b></td><td><%	 out.println( rs.getString("bankname"));%></td></tr>
	<tr><td><b>IFSC code</b></td><td><%	 out.println( rs.getString("IFSC"));%></td></tr>
	<tr><td><b>Branch Name</b></td><td><%	 out.println( rs.getString("branch"));%></td></tr>
	<tr><td><b>Balance(Rs.)</b></td><td><%	 out.println(rs.getInt("balance"));%></td></tr>
   <%  }
   
   	c.close();
    }
   %>
   </table><br><%
    if("c".equals(request.getAttribute("z")))
	   
	    q ="select * from history where accnumber= '"+request.getAttribute("acc")+"';";
	   ResultSet rc=s.executeQuery(q);
   	  %>
   	  <h1>Your Transaction History</h1>
   	  <% 
	   while(rc.next()) {
		 %>
		 <table cellspacing=10px; cellpadding=5px; border="2px solid black" style="margin-left: auto;margin-right: auto;">
   <tr><td class="a"><b>Account Number</b></td><td><% out.println(rc.getString("accnumber"));%></td></tr>
   <tr><td class="a"><b>Amount</b></td><td><% out.println(rc.getInt("amount"));%></td></tr>
   <tr><td class="a"><b>Type of Transaction</b></td><td><% out.println(rc.getString("type"));%></td></tr>
   <tr><td class="a"><b>Date</b></td><td><%out.println(rc.getDate("Datee"));%></td></tr>
   <tr><td class="a"><b>Time</b></td><td><%out.println(rc.getString("Timing"));%></td></tr>
    </table><br><hr>
   <%  }
   	c.close();
   }
   catch(Exception E){
	   E.printStackTrace();
   }
   %>
   <br>
    <div id="ss">
   <a href="home.jsp" style="border:2px solid black;">back</a>
</div>
</body>
</html>
<style>
body{
background-color: red;
}
h1{
text-align:center;
font-size:40px;
}
h1:hover{
color:white;
}
.a{
text-decoration:;
}
#ss{
font-size:28px;
text-align: center;
margin-bottom:100px;
border-radius: 10%;
text-decoration:none;

}

a{
color:white;
background-color:black;
text-decoration:none;
width: 250px;
height:70px;
}
a:hover{
color:black;
background-color: white;
}

</style>