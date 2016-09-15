<%-- 
    Document   : viewprofile
    Created on : 18 Aug 2016, 2:22:05 PM
    Author     : Mpho
--%>

<%@ page import="java.sql.*" %>
<HTML>
    <HEAD>
        <TITLE>Fetching Data From a Database</TITLE>
        
        <link href ="login.css" rel ="stylesheet" type ="text/css"/>
        <link href ="main.css" rel ="stylesheet" type ="text/css"/>
    </HEAD>

    <BODY>
    <center>
        <H1>Fetching Data From a Database</H1>

        <% 
            Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer",
            "root", "07834");
            Statement statement = con.createStatement();

            String Name = request.getParameter("Name");  
            ResultSet resultset = 
            statement.executeQuery("select * from user where Name = '" + Name + "'") ; 

            if(!resultset.next()) {
                out.println("Sorry, could not find details. ");
            } else {
        %>

       <TABLE BORDER="1">
            <TR>
               <TH>Name</TH>
               <TH>ID</TH>
               <TH>Date Of Birth</TH>
               <TH>Address</TH>
               <TH>Email</TH>
            
             
               
               
           </TR>
           <TR>
               <TD> <%= resultset.getString(1) %> </TD>
               <TD> <%= resultset.getString(2) %> </TD>
               <TD> <%= resultset.getString(3) %> </TD>
               <TD> <%= resultset.getString(4) %> </TD>
               <TD> <%= resultset.getString(5) %> </TD>
             
             
           </TR>
       </TABLE>
       <BR>
       <% 
           } 
       %>
    </center>
    </BODY>
</HTML>