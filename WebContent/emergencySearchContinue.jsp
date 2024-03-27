<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*,model.*,bean.*,org.hibernate.*" %>
<!DOCTYPE html>
<html lang="en">

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
            <label>Your Emergency Search</label>
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
                      
                             
  <div class="row">
    <div class="col-lg-12">
     <div class="panel panel-primary">
                       <div class="panel-heading">
                           <h3 class="panel-title">  Emergency Search </h3>
                       </div>
     <div class="panel-body">
        <div class="container">
            <form method="post" action="">
           <div class="row">
                     <div class="col-md-6 form-group has-success">  <br>
                                     
                         <%
 String emer = request.getParameter("emer");
 String area = request.getParameter("area");
 String subarea = request.getParameter("subarea");
 String patientname = request.getParameter("patientname");
 String contact = request.getParameter("contact");
 
 List<EmergencyInsert> li = EmergencyImpl.searchEmergency(emer, area, subarea);
 for(Iterator<EmergencyInsert> it=li.iterator();it.hasNext();)
 {
	 EmergencyInsert ei = it.next();
	 %>
	 <b><h2><a href="emergencyNotificationHosp.jsp?hn=<%= ei.getHospital()%>&pn=<%= patientname %>&con=<%=contact%>"><%= ei.getHospital() %></a></h2>
	 <% 
 }
%>
                   </div>
                 </div>
        </form>                           
            </div> 
        </div>
     </div>

                            </div>


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
