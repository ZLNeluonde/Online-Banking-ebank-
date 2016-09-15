<%-- 
    Document   : retrieve
    Created on : 18 Aug 2016, 11:40:16 AM
    Author     : Mpho
--%>

<%@ page import="java.sql.*" %>
<HTML>
    <HEAD>
        <TITLE>Fetching Account Details</TITLE>
    </HEAD>

    <BODY>
        <H1>Fetching Account Details</H1>

        <% 
            Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer",
            "root", "07834");
            Statement statement = con.createStatement();

            String account = request.getParameter("account");
            ResultSet resultset = 
            statement.executeQuery("select * from acc_details where account = '" + account + "'") ; 

            if(!resultset.next()) {
                out.println("Sorry, could not find details. ");
            } else {
        %>

       <TABLE BORDER="1">
            <TR>
               <TH>Full Name</TH>
               <TH>Date Of Birth</TH>
               <TH>ID</TH>
               <TH>Phone</TH>
               <TH>email</TH>
               <TH>account</TH>
           
               
               
           </TR>
           <TR>
               <TD> <%= resultset.getString(1) %> </TD>
               <TD> <%= resultset.getString(2) %> </TD>
               <TD> <%= resultset.getString(3) %> </TD>
               <TD> <%= resultset.getString(4) %> </TD>
               <TD> <%= resultset.getString(5) %> </TD>
               <TD> <%= resultset.getString(6) %> </TD>
              
           </TR>
       </TABLE>
       <BR>
       <% 
           } 
       %>
    </BODY>
</HTML>