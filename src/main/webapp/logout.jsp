<%-- 
    Document   : logout
    Created on : 2018-04-22, 12:30:11
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<%
session.setAttribute("username", null);
session.invalidate();
response.sendRedirect("./index.jsp");
%>
    </head>
    <body>

    </body>
</html>
