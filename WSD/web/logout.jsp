
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body bgcolor="#4CBF8C">
        <%
            session.invalidate();
        %>
        <p>You have been logged out. Click <a href="login.jsp">here</a> to return to login.</p>
    </body>
</html>
