<%-- 
    Document   : feedback
    Created on : 19 Jul 2016, 12:43:07 PM
    Author     : Mpho
--%>

<%
    if ((session.getAttribute("Name") == null) || (session.getAttribute("ID") == "")) {
%>
You are not logged in<br/>
<a href="LOGIN.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("ID")%>
<a href='LOGOUT.jsp'>Log out</a>
<%
    }
%>
