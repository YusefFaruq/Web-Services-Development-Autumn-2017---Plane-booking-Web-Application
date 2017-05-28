<%-- 
    Document   : welcome
    Created on : Mar 28, 2017, 12:48:49 AM
    Author     : George
--%>

<%@page import="uts.wsd.*" import="java.util.*"contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
    </head>
    <%! int ID; %>
    <%
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String dob = request.getParameter("dob");
    %>
    <% String filePath = application.getRealPath("WEB-INF/customers.xml");%>

    <jsp:useBean id="customerApp" class="uts.wsd.CustomerApplication" scope="application">
        <jsp:setProperty name="customerApp" property="filePath" value="<%=filePath%>"/>
    </jsp:useBean>
    <%Customers customers = customerApp.getCustomers();%>

    <body>

        <h2>Welcome, <%=name%></h2>
        <p>Your customer ID is: <%=ID%></p>
        <p>Your email is: <%=email%></p>
        <p>Your password  is: <%=password%></p>
        <p>Your dob  is: <%=dob%></p>
        <%
            Customers c1 = customerApp.getCustomers();
            Customer c2 = c1.getCustomer("test@email.com");

            Customer customer = new Customer(name, email, password, dob);
            session.setAttribute("customer", customer);
            customers.addCustomer(customer);
            customerApp.updateXML(customers, filePath);
            customerApp.saveCustomers();

        %> 

        <p>Click <a href="main.jsp">  <p>Your email is: <%=email%></p>here </a> to proceed to main page.
    </p>

</body>
</html>
