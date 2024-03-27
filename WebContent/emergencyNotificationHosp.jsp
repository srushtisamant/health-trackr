<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="bean.EmergencyDisplay,util.*,org.hibernate.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Health Care </title>

  <!-- Bootstrap core CSS -->

  <link href="css/bootstrap.min.css" rel="stylesheet">

  <link href="fonts/css/font-awesome.min.css" rel="stylesheet">
  <link href="css/animate.min.css" rel="stylesheet">

  <!-- Custom styling plus plugins -->
  <link href="css/custom.css" rel="stylesheet">
  <link href="css/icheck/flat/green.css" rel="stylesheet" />
  <link href="css/floatexamples.css" rel="stylesheet" type="text/css" />

  <script src="js/jquery.min.js"></script>
  <script src="js/nprogress.js"></script>

  <!--[if lt IE 9]>
        <script src="../assets/js/ie8-responsive-file-warning.js"></script>
        <![endif]-->

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

</head>

<body>
<body class="nav-md">

  <div class="container body">


    <div class="main_container">

      

      <!-- top navigation -->
      <div class="top_nav">

        <div class="nav_menu">
          <nav class="" role="navigation">
            <div class="nav toggle">
              <a id="menu_toggle"><i class="fa fa-bars"></i></a>
            </div>

                      </nav>
        </div>

      </div>
      <!-- /top navigation -->


      <!-- page content -->
      
       
      <div class="right_col" role="main">
          
         
          
            <div>
    <input type="hidden" value="YW5hbnRyYWouZ2Fpa3dhZEBnbWFpbC5jb20=" id="hiddenmsg" />  
    <div class="tab-heading">
        <h2>
            <label>Your Emergency Notification</label>
        </h2>
        <br />
        <br clear="all" />
    </div>
    <div id="valSaveSuccess" class="set_success_msg">
        
    </div>
    <div id="valVitalError" class="failure hideit" style="display: none; padding: 12px 12px 12px 50px;">
        <div class="validation-summary-valid" data-valmsg-summary="true"><ul><li style="display:none"></li>
</ul></div>
    </div>

        
        <!-- OUT Table End -->

    </div>
          
<table border="0" width="70%" align="center">
<th>HospitalName</th><th>PatientName</th><th>PatientContact</th><th>SendRequest</th>
<%
	String hn = request.getParameter("hn");
	String pn = request.getParameter("pn");
	String con = request.getParameter("con");
	
	SessionFactory sf = Database.dataConnection();
	Session ses = sf.openSession();
	Transaction tx = ses.beginTransaction();
	
	EmergencyDisplay ed = new EmergencyDisplay();
	ed.setHospName(hn);
	ed.setPatientName(pn);
	ed.setContact(con);
	
	ses.save(ed);
	tx.commit();
	//ses.close();
	
	Criteria ct = ses.createCriteria(EmergencyDisplay.class);
	List<EmergencyDisplay> li = ct.list();
	for(Iterator<EmergencyDisplay> it = li.iterator();it.hasNext();)
	{
		EmergencyDisplay ed1 = it.next();
		%>
		<tr>
		<td align="center"><%=ed1.getHospName() %></td>
		<td align="center"><%=ed1.getPatientName() %></td>
		<td align="center"><%=ed1.getContact() %></td>
		<td align="center"	><a href="sendRequest.jsp?<%=ed1.getHospName() %>">Request</a></td>
		</tr>
		<% 
	}
	ses.close();
%>
</table>
     <!-- footer content -->

        <footer>
          <div class="copyright-info">
              <p class="pull-right">Designed by Team <a href="dDashboard.jsp">eSEVA</a>  
            </p>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
      <!-- /page content -->

    </div>

  </div>

  

  <script src="js/bootstrap.min.js"></script>

  <!-- bootstrap progress js -->
  <script src="js/nicescroll/jquery.nicescroll.min.js"></script>
  <!-- icheck -->
  <script src="js/icheck/icheck.min.js"></script>
  <!-- daterangepicker -->
  <script type="text/javascript" src="js/moment/moment.min.js"></script>
  <script type="text/javascript" src="js/datepicker/daterangepicker.js"></script>
  
  <script src="js/custom.js"></script>

 
 
  <!-- /footer content -->
</body>

</html>

</body>
</html>