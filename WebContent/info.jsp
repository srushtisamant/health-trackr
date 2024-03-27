<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Health Care</title>
</head>
<body>
	<form method="get" action="InfoServlet">
		<pre>
Name   <input type="text" name="uname" value="" />
Gender 
Male   <input type="radio" name="gender" value="Male" />
Female <input type="radio" name="gender" value="Female" />
Item 
Pizza  <input type="checkbox" name="item" value="Pizza" />
Burger <input type="checkbox" name="item" value="Burger" />
Coffee <input type="checkbox" name="item" value="Coffee" />
<input type="submit" value="Submit" />
</pre>
	</form>
</body>
</html>