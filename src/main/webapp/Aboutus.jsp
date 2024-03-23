<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>
</head>
<body>
<h1>About Us</h1>
<div id="get">
 <ul><li>Founder : Jones</li>
    <li type="Email">Email   :   <u>jonesjone67605@gmail.com</u></li>
    <li>Conatct : +91**********</li>
   
 </ul>
 </div>
 <p>This is my First project as a developer,if you want me to improve something give your feedback below</p>
    <div id="dd"><a id="co" href="Contactus.jsp">Contact us</a></div><br>
<hr>
<div id="center">
<h1>Project Description</h1>
<img alt="project description" id="im" src="./javabank.webp">
</div>
<p class="des">
This project aims to develop a basic banking system that allows users
to perform common banking operations such as creating an account, depositing and
withdrawing funds and checking account balances.
</p>
<p class="des">
The project will be implemented using HTML, CSS, JSP(javaServer pages), SERVLETS,
 JAVA, JDBC(Java Database Connectivity) and MYSQL.</p>
<div id="d"><a href="home.jsp" id="back">Back</a></div>

</body>
</html>
<style>
    body{
        background-color: cornflowerblue;
    }
    #im{
    
    width:50%;
    height:200px;
    }
    #center{
    text-align:center;
    }
    #get{
    font-size:30px;
    }
    h1{
        font-size: 45px;
        text-align: center;
        text-decoration: underline;
        padding-bottom: 35px;
    }
    h1:hover{
    color:blue;
    }
    li{
   
    padding-left:15px;
        padding-bottom: 10px;
        font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    }
    p{
        font-size:22px;
        text-align:center;
        font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    }
    #back{
        padding: 5px;
        border: 2px solid black;
        text-decoration: none;
        color: blueviolet;
        background-color: black;
        cursor: pointer;
        font-size: 22px;
    }
    #back:hover{
        color: black;
        background-color: white;
    }
    #d{
        padding-top: 60px;
        text-align: center;
    }
    #dd{
        padding-top: 20px;
        text-align: center;
    }
    #co{
        padding: 5px;
        border: 2px solid green;
        text-decoration: none;
        color: aqua;
        background-color: black;
        cursor: pointer;
    }
    #co:hover{
        color: black;
        background-color: aqua;
    }
    li:hover{
    color:white;
    }
    .des{
    padding-left:5%;
    padding-right:3%;
    }
    .des:hover{
    color:white;
    }
</style>
