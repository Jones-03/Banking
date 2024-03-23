<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transaction</title>
</head>
<body>
    <h3>Enter your Account Details to do Transaction</h3>
    <form action="Transaction" method="post">
        <pre>
          <label for="accno">Account No.</label>
          <input type="text" placeholder="Enter Account No." name="accno" required><br><br>
          <label for="password">Password</label>
          <input type="password" placeholder="Enter password" name="password" required><br><br>
          <label for="amount">Amount</label>
          <input type="number" placeholder="Enter Amount" name="amount" required><br><br>
          <label for="type">Transaction</label>
          <select name="type"  id="type" >
            <option value="Deposit">Deposit</option>
            <option value="Withdraw">Withdraw</option>
          </select><br><br>
                  <button type="submit" name="proceed">Proceed</button>         
        
    </pre>
    </form>
</body>
</html>
<style>
    h3{
        font-size: 30px;
        padding-top: 30px;
        padding-bottom: 25px;
        text-align: center;
    }
    label{
        font-size: 26px;
        font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    }
    label:hover{
        color: blue;
    }
    input,select{
        width: 300px;
        height: 30px;
        border-radius: 13%;
    }
    input:hover{
        border-radius: 15%;
        border-top: none;
        border-left: none;
        border-right: none;
    }
    body{
        background-color: khaki;
    }
    button{
        text-align: center;
        font-size: 23px;
        border: 1px solid black;
        color: white;
        background-color: black;
        height: 40px;
        width: 130px;
    }
    button:hover{
        color: black;
        background-color: white;
        border: 1px solid indigo;
        border-radius: 15%;
    }
</style>