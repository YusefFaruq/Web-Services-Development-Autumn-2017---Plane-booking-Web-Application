<%@page import="uts.wsd.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">
            p.login{
                color: green;
            }
            #form {
                align-content: center;
            } 
        </style>
        <title>Main Page</title>

    </head>
    <body bgcolor="#4CBF8C">
        <h2 class="login"><a href="login.jsp">Login</a></h2>
        <% String filePath = application.getRealPath("WEB-INF/customers.xml");%>
        <jsp:useBean id="customerApp" class="uts.wsd.CustomerApplication" scope="application">
            <jsp:setProperty name="customerApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>

        <%
            
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            Customers customers = customerApp.getCustomers();
            Customer customer = customers.login(email, password);
        %>
        <%
          

            if (customer != null) {
                session.setAttribute("customer", customer);
                String name = request.getParameter("name");
                customer.setName(name);

        %>
        <h1>Welcome <%customer.getName();%>, Search for flights!</h1>
        <form method="post" action="results.jsp">
            <table align="center">
                <tr><td>Traveling from: </td><td>
                        <select name="travelingfrom">
                            <option value="Sydney">Sydney</option>
                            <option value="Melbourne">Melbourne</option>
                            <option value="Adeleide">Adelaide</option>
                            <option value="Perth">Perth</option>
                            <option value="Brisbane">Brisbane</option>
                            <option value="Tasmania">Tasmania</option>
                        </select>

                <tr><td>Traveling to: </td><td>
                        <select name="travelingto">
                            <option value="Sydney">Sydney</option>
                            <option value="Melbourne">Melbourne</option>
                            <option value="Adeleide">Adelaide</option>
                            <option value="Perth">Perth</option>
                            <option value="Brisbane">Brisbane</option>
                            <option value="Tasmania">Tasmania</option>
                        </select>

                <tr><td>Type of flight: </td><td>
                        <select name="flighttype">
                            <option value="Business">Business</option>
                            <option value="Economy">Economy</option> 
                        </select>

   


                <tr><td>Departure Date: </td><td><input type="text" name="departure"></td></tr>
                <tr><td>Return Date: </td><td><input type="text" name="return"></td></tr>

            </table>
        </form>
        <% } else { %>
        <p>Login unsuccessful, please click <a href="register.jsp">here</a> to register</p>
        <% }%>
    </body>
</html>
