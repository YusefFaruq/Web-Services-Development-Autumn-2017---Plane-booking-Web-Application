<%@page import="uts.wsd.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body bgcolor="#4CBF8C">
        <h1>Admin Login Page</h1>
        <p>Enter your administrator details below to gain administrator privileges</p>
        <form align = "left" method="post" action="main.jsp">
              <table>
                <tr>
                <td>Email </td>
                <td><input type="text" name="email"</td>
                </tr>
                <br></br>
                <tr>
                <td>Password </td>
                <td><input type="password" name="password"</td>
                </tr>
                <br></br>
                <tr>
                <td></td>
                <td><input type="submit" value="Login"></td>
                </tr>
            </table>
              </form>
        <p>If you don't have a login, please click <a href="register.jsp">here</a> to register or search <a href="main.jsp">here</a> without user privileges</p>
    </body>
</html>