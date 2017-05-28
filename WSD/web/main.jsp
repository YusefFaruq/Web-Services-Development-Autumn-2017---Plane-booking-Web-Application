<%@page import="uts.wsd.dom.CustomersPrinter"%>
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

    <% String filePath = application.getRealPath("WEB-INF/customers.xml");%>
    <jsp:useBean id="customerApp" class="uts.wsd.CustomerApplication" scope="application">
        <jsp:setProperty name="customerApp" property="filePath" value="<%=filePath%>"/>
    </jsp:useBean>


    <body bgcolor="#4CBF8C">
        <table align="center">
            <tr>
                <td>
                    <h2 class="login"><a href="login.jsp">Login</a></h2>
                </td>
                <td>

                </td>
                <td>
                    <h2 class="admin"><a href="admin.jsp">Admin</a></h2>
                </td>
                <td>

                </td>
                <td>
                    <h2 class="booking"><a href="booking.jsp">Booking</a></h2>
                </td>
                <td>

                </td>
                <td>
                    <h2 class="register"><a href="register.jsp">Register</a></h2>
                </td>
            </tr>
        </table>

        <%

            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String admin = request.getParameter("admin");

            Customers customers = customerApp.getCustomers();
            Customer customer = customers.login(email, password);

        %>

        <%      if (customer != null && customer.getAdmin() == false) {
                session.setAttribute("customer", customer);
        %>		
        <h1 align="right"> <u><a href="logout.jsp">Logout</a></u></h1>
        <%String name = customer.getName();%>
        <h1>Welcome <%=name%>! Search for flights down below:</h1> 
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




                <tr><td>Departure Date: </td><td><input id="depart" type="date"></td></tr>
                <tr><td>Return Date: </td><td><input id="return" type="date"></td></tr>
                <tr><td></td><td><input type="submit" value="Search"></td></tr>

            </table>
        </form>
        
         <%   }
if (customer != null && customer.getAdmin() == true) {
                session.setAttribute("customer", customer);

        %>		

        <%String name = customer.getName();%>
        <h1 align="right"> <u><a href="logout.jsp">Logout</a></u></h1>
        <h1>Welcome Administrator <%=name%>! View all bookings below:</h1> 

        <% } else if (customer == null){ %>
        <h1>You are not logged in, search for flights down below:</h1> 
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



                <tr><td>Departure Date: </td><td><input id="depart" type="date"></td></tr>
                <tr><td>Return Date: </td><td><input id="return" type="date"></td></tr>
                <tr><td></td><td><input type="submit" value="Search"></td></tr>

            </table>
        </form>
        <%} %>

    </body>
</html>
