<%--
    Document   : Admin
    Created on : 18 Aug, 2023, 12:53:28 PM
    Author     : MCASYSTEM15
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            Connection con;
            Statement st;
            ResultSet r;
            String databasepassword = "1234";
        %>
        <%

           
               
                String password = request.getParameter("password");

               
                if (password.equals(databasepassword))
                {
        %>
        <jsp:forward page="index.html"/>
        <%
                    }
               

           
        %>
    <</body>
</html>

