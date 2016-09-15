<%-- 
    Document   : connect
    Created on : 17 Aug 2016, 9:30:22 AM
    Author     : Mpho
--%>

<%@ page language="java"
         import="java.sql.*;"%>
<%@ page import ="java.sql.*"
         import = "java.util.*"%>

<%

    //System.out.println("MySQL Connect Example.");
    Connection conn = null;
    String url = "jdbc:mysql://localhost:3306/";
	 String dbName = "customer";
    String driver = "com.mysql.jdbc.Driver";
    String userName = "root"; 
    String password = "07834";
    try {
      Class.forName(driver).newInstance();
      conn = DriverManager.getConnection(url+dbName,userName,password);
	  out.println("Connected to database customer");
      //System.out.println("Connected to the database");
      conn.close();
      //System.out.println("Disconnected from database");
    } catch (Exception e) {
        out.println("Not connected to database customer");
      e.printStackTrace();
 %> 
 