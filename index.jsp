<%-- 
    Document   : index
    Created on : Apr 26, 2017, 6:51:09 PM
    Author     : jacksonrajbhandari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>

    <style type="text/css">
     p.login{
     	color: green;
     }
     
     
     #form {
         align-content: center;
     }
     
  </style>







	<title>
	assignment wsd
	</title>
	
	
<p><a href="index.jsp">HOME</p>
<p><a href="register.jsp">REGISTER</p>
	
	<p class="login"><a href="login.html">Login</a></p>
	
</head>
	<body>
           
		<form>
			<table align="center">
				<tr><td>Travelling to:</td><td>
				<select name="to">
                                 <option value="Sydney">Sydney</option>
                                 <option value="Melbourne">Melbourne</option>
                                 <option value="Adeleide">Adeleide</option>
                                 <option value="Perth">Perth</option>
                                 <option value="Brisbane">Brisbane</option>
                                 <option value="Tasmania">Tasmania</option>
                                </select>
                </td></tr><br><br>
				
				
				
				
				
				
				<tr><td>Travelling from:</td><td>
				<select name="from">
                                   <option value="Sydney">Sydney</option>
                                   <option value="Melbourne">Melbourne</option>
                                   <option value="Adeleide">Adeleide</option>
                                   <option value="Perth">Perth</option>
                                   <option value="Brisbane">Brisbane</option>
                                   <option value="Tasmania">Tasmania</option>
                                </select>
                </td></tr><br><br>
				
				
				
				
				
				
				
				
				
				
				
				
				
				<tr><td>Departure date:</td><td><input type="date" name="date"></td></tr><br><br>
				<tr><td>Return date:</td><td><input type="date" name="return"></td></tr><br><br>
				<tr><td>Departure time:</td><td><input type="time" name="time"></td></tr><br><br>
				
				
				
				
				
				<tr><td>Class:</td><td>
				<select name="class">
				<option value="Economy">Economy</option>
				<option value="Business">Business</option>
				<option value="A Class">A Class</option>
				</select>
				</td></tr><br>
				
				
				
				
			    <tr><td> <input type="submit" value="view"></td></tr>
         	</table>
	    </form>
                  
	</body>
</html>
