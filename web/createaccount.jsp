<%-- 
    Document   : createaccount
    Created on : 18 Aug 2016, 9:40:30 AM
    Author     : Mpho
--%>

<%@ page import ="java.sql.*"
         import = "java.util.*"%>
<%
  
    String Full_Name = request.getParameter("Full_Name");    
    String Date_of_Birth = request.getParameter("Date_of_birth");
    String ID = request.getParameter("ID");
    String Phone = request.getParameter("Phone");
    String email = request.getParameter("email");
    String account = request.getParameter("account");
    
     
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer",
            "root", "07834");
    Statement st = con.createStatement();
        int i = st.executeUpdate("insert into acc_details(Full_Name, Date_of_Birth, ID, Phone, email, account) values ('" + Full_Name + "','" + Date_of_Birth + "','"+ ID +"','"+Phone+"','"+email+"','"+account+"')");
       // int k = st.executeUpdate("insert into transaction (account_no)values('"+account+"')");
  
        if (i  > 0)  {
        response.sendRedirect("services.html");
    } else {
        response.sendRedirect("LOGIN.jsp");
    }
%>


