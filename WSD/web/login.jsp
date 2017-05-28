<%@page import="uts.wsd.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body bgcolor="#4CBF8C">
        <h1>Customer Login Page</h1>
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
    </body>
</html>