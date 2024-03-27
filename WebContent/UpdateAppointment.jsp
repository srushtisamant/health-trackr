<%@page import="bean.BookAppointment,util.*"%>
<%@page import="org.hibernate.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Health Care</title>
</head>
<body>
<%
	int bid = Integer.valueOf(request.getQueryString());
SessionFactory sf = Database.dataConnection();
Session ses = sf.openSession();
Transaction tx = ses.beginTransaction();

BookAppointment ba = (BookAppointment)ses.load(BookAppointment.class,bid);
   String status = ba.getStatus();
    ba.setStatus("Approved");
    ses.update(ba);
    response.sendRedirect("hAppointment.jsp?Approved");
    tx.commit();
    ses.close();
%>
</body>
</html>