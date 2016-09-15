<%-- 
    Document   : serve
    Created on : 08 Sep 2016, 1:05:54 PM
    Author     : Mpho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #111;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color: #4CAF50;
}
</style>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <center>
<ul>
  <li><a href="recharge.jsp">Buy airtime</a></li>
  <li><a href="transactions.jsp">Money Transfer</a></li>
  <li><a href="electricity.jsp">Buy Elactricity</a></li>
  <li><a href="http://online.computicket.com/web/">Computicket Outlet</a></li>
  <li style="float:right"><a class="active" href="LOGOUT.jsp">log out</a></li>
</ul>
        </center>
    </body>
</html>
