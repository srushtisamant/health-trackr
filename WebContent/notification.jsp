<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="bean.EmergencyDisplay,util.*,org.hibernate.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Health Care</title>
</head>
<body>
<table border="0" width="60%" align="center">
<th>PatientName</th><th>Contact</th>
<%
String user = (String)session.getAttribute("user");
SessionFactory sf = Database.dataConnection();
Session ses = sf.openSession();
Transaction tx = ses.beginTransaction();
Query query = ses.createQuery("from bean.EmergencyDisplay where hospname='"+user+"'");
List<EmergencyDisplay> li = query.list();
for(Iterator<EmergencyDisplay> it = li.iterator();it.hasNext();)
{
	EmergencyDisplay ed = it.next();

%>
	<tr>
	<td align="center"><%=ed.getPatientName() %></td>
		<td align="center"><%=ed.getContact() %></td>
	</tr>
 <%
}
%>
</table>
</body>
</html>