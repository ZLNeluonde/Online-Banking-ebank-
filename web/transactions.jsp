<%-- 
    Document   : transactions
    Created on : 23 Aug 2016, 9:18:02 AM
    Author     : Mpho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>

<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer",
            "root", "07834");
    Statement statement = con.createStatement();
    String ops = request.getParameter("operatorNum");
    String balance;
    String account = request.getParameter("account_no");
    String account2 = request.getParameter("acc2");

    statement.executeUpdate("UPDATE transaction SET amount = (amount - '" + ops + "') WHERE account_no ='" + account + "'");
    statement.executeUpdate("UPDATE transaction SET amount = (amount + '" + ops + "') WHERE account_no ='" + account2 + "'");

           // statement.executeUpdate("UPDATE transaction SET amount = (amount - '"+ops+"') WHERE account ='" + account + "'");

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transaction</title>
        <link rel= "stylesheet" type= "text/css" href="login.css"/>
         <link href ="login.css" rel ="stylesheet" type ="text/css"/>
        <link href ="main.css" rel ="stylesheet" type ="text/css"/>
    </head>
    <body>      

       <div id="content">
            <nav>
                <ul id = "justaNav">
                    <li><a href="main.jsp">HOME</a></li>
                    <li><a href="recharge.jsp">Recharge</a></li>
                    <li><a href="transactions.jsp">Transfer</a></li>	
                    <li><a href="electricity.jsp">Electricity</a></li>
                    <li><a href="http://online.computicket.com/web/">Computicket</a></li>
                   
                </ul>
            </nav>
        </div>
        <h2>Transfer funds</h2>
        
        <div id ="login">
            <form Class = "boxCont" method="post" action = "services.html">

                <div>
                    <label>Account number</label>
                    <input type="text" name="account_no" value="" placeholder="Please enter account number">
                </div>

                <div>
                    <label>Amount</label>
                    <input type="text" name ="amount" value="" placeholder="Amount">
                </div>

<!--                <div>
                    <label for ="amount">Amount</label>
                    <input id = "amount" type = "text" name = "amount" placeholder="Amount"/>
                </div>-->

                <div>
                    <label>Account</label>
                    <input type = "text" name= "account_no" value="" placeholder="Please enter Account"/>
                </div>


                <div>
                    <input type="submit" id="update" name="update" value="Transfer" class="btn left" />
                </div>

            </form>
        </div>





    </body>
</html>
