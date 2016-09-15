<%-- 
    Document   : logout
    Created on : 19 Jul 2016, 12:45:32 PM
    Author     : Mpho
--%>

<%
session.setAttribute("Name", null);
session.invalidate();
response.sendRedirect("main.jsp");
%>

