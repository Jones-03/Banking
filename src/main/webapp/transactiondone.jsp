<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transaction Details</title>
</head>
<body>
<p id="h">Transaction Details</p>

<%

try {
	  
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","Jones2003!");
    Statement s=c.createStatement();
    s.execute("use jdbc");
  
    String q="select * from history where accnumber= "+request.getAttribute("accnumber")+" and Rno=(select count(accnumber) from history);";
   ResultSet rs=s.executeQuery(q);
    %> 
    <table cellspacing=10px; cellpadding=5px;  style="border:2px solid black;margin-left: auto;margin-right: auto;"><%
    while(rs.next()){
        %>
   <tr><td>Account Number</td><td><% out.println(rs.getString("accnumber"));%></td></tr>
   <tr><td>Amount</td><td><% out.println(rs.getInt("amount"));%></td></tr>
   <tr><td>Type of Transaction</td><td><% out.println(rs.getString("type"));%></td></tr>
   <tr><td>Date</td><td><% out.println(rs.getDate("Datee"));%></td></tr>
   <tr><td>Time</td><td><% out.println(rs.getString("Timing"));%></td></tr>
    
<% }
}
catch(Exception E){
	E.printStackTrace();
}
%>

</table>
<div>
    <a href="home.jsp">back</a>
 </div>
</body>
</html>
<style>
#h{
   text-align: center;
   color: blue;
   font-size: 35px;
   font-style: italic;
}
#h:hover{
   color: black;
}
div{
margin-top:30px;
text-align:center;
font-size:26px;
}

a{
text-decoration:none;
border: 2px solid black;
text-align: center;
text-decoration:none;
width: 250px;
height:70px;
border-radius: 10%;
}
a:hover{
border:2px solid blue;
color:white;
background-color:black;

}
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
</style>
