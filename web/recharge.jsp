<%-- 
    Document   : recharge
    Created on : 08 Sep 2016, 10:49:05 AM
    Author     : Mpho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import ="java.sql.*"
         import = "java.util.*"%>
<%
  
    String MeterNumber = request.getParameter("MeterNumber");    
    String Supplier = request.getParameter("Supplier");
    String AccountNumber = request.getParameter("AccountNumber");
    String Coupon = request.getParameter("Coupon");
    String Amount = request.getParameter("Amount");
    
    
     
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer",
            "root", "07834");
    String query = "SELECT amount FROM transaction WHERE account_no = '"+AccountNumber+"'";
    
    PreparedStatement ps = con.prepareStatement(query);
    
    ResultSet rs = ps.executeQuery();
    
    while(rs.next()){
    String bal = rs.getString("amount");
    
    int BAL = Integer.parseInt(bal);
    int AMT = Integer.parseInt(Amount);
    
    if(BAL == 0){
        
    out.println("insufficient funds");
    }
    if(BAL < AMT){
    out.println("You Onlye " + BAL);
    }else{
       
                
    
    Statement statement = con.createStatement();

    statement.executeUpdate("UPDATE transaction SET amount = (amount - '"+Amount+"') WHERE account_no ='" + AccountNumber + "'" );
   
    }
    }
    
    
        
     
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Recharge</title>
         <link href ="login.css" rel ="stylesheet" type ="text/css"/>
        <link href ="main.css" rel ="stylesheet" type ="text/css"/>
         
        <link rel="stylesheet"  type="text/css" href="background.css"/> 
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
        
         <script>
            function mpho(){
                
                
               
                var mee = 11 + Math.floor(Math.random()* 12)+1;
                var meea = 11 + Math.floor(Math.random()* 12)+1;
                var mees = 11 + Math.floor(Math.random()* 12)+1;
                var a = 11  + Math.floor(Math.random()* 12)+1;
                var b =11 + Math.floor(Math.random()* 12)+1;
                var c =11 + Math.floor(Math.random()* 12)+1;
                  
                var gift = 45 + ""+ mee+""+a+""+meea+""+mees;
                alert(" Recharge voucher " +gift+"");
                document.getElementById('mpho').value = ''+gift;
                
              
            }
        </script>
        
          <center>
                 <h3>Buy recharge voucher here!!!</h3>
        <form Class = "boxCont">
            
            <table>
          <tr>
         
            
            <td>Account Number</td>
                <td><input type="text" name="AccountNumber" value=""  ></td>
            </tr>
            <tr>
                <td>cell number</td>
                <td><input type="text" name="cellNumber" value="" /></td>
            </tr>
            <tr>
                <td>Network</td>
                <td><select>
                 <option 
                    
                     value ="Vodacom">Vodacom</option>
                 <option 
                     value ="MTN">MTN</option>
                 <option 
                     value ="Cell C">Cell C</option>
                 <option 
                     value ="8ta">8ta</option>
                    </select></td>
<!--        <input type="text" name="Network" value="" />-->
            </tr>
            <tr>
                <td>Amount</td>>
                <td><input type ="text" name ="Amount" value = ""></td>
            </tr>
            <tr>
                <td><input type ="submit" value="submit" onclick ="mpho()"></td>
            </tr>
            </table>
            
        </form>
               </center>
    </body>
</html>