<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Overview</title>
</head>
<body>

<form action="OverviewServlet" method="post">
        <div id="fs">
        <label for="accnumber" id="ac">Accnount Number</label><br><br>
        <input type="text" name="acc" required><br>
    </div>
        <div id="ss">
        <label for="access" id="asc">Proccess</label><br>
       <br>
        
        <label for="access" id="ll">balance</label>
        <input type="radio" value="Account Balance" name="access"><br>
        <label for="access" id="ls">Account Details</label>
        <input type="radio" value="Account Details" name="access"><br>
        <label for="access">Transaction History</label>
        <input type="radio" value="Transaction History" name="access"><br>
    </div>
        <button type="submit" value="submit">Process</button>
    </form>
</body>
</html>
<style>
    body{
        background-color: rgb(178, 178, 255);
    }
#ac{
    font-size: 27px;
   
}
#asc{
    font-size: 30px;
    padding-top: 50px;
    
}
#fs{
    
    padding-right: 20px;
}
#ll{
    padding-left: 70px;
    padding-right: 30px;
}
#ls{
    
    padding-right: 30px;
}
#ss{
    text-align: center;
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    font-size: 23px;
    padding-bottom: 50px;
    padding-top: 50px;
}
form{
    margin-top: 50px;
    text-align: center;
}
button{
    font-size: 22px;
    height: 30px;
    width: 150px;
    border-radius: 19%;
}
button:hover{
   color: blue;
   background-color: aqua;
}
input:hover{
    color: white;
    background-color: black;
}
</style>