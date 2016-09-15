<%-- 
    Document   : login
    Created on : 19 Jul 2016, 12:31:49 PM
    Author     : Mpho
--%>

<%@ page import ="java.sql.*" %>
<%
    String Name = request.getParameter("Name");    
    String ID = request.getParameter("ID");
    
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs;
    String sql = "SELECT ID FROM user where Name ='"+Name+"'";
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer",
            "root", "07834");
     
        ps = con.prepareStatement(sql);
       
        rs=ps.executeQuery();       
        
    while(rs.next()){        
        String Pword = rs.getString("ID");      
       // session.setAttribute("Name", Name);
       // session.setAttribute("ID", ID);
       // out.println("welcome " + ID);
        //out.println("<a href='logout.jsp'>Log out</a>");
        //out.println("success <a href='FEEDBACK.jsp'>LOGIN</a>");
        // response.sendRedirect("FEEDBACK.jsp");
        
        if(!(ID.equals(Pword))){
            response.sendRedirect("services.html");
        }else{
           // response.sendRedirect("services.html");
            out.println("Login Failed");
        //out.println("success <a href='FEEDBACK.jsp'>here is what to do</a>");
        }
        
    }
    }
    catch(SQLException e){
        out.println("" + e);
    }
%>
