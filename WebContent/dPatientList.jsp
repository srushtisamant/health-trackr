<%-- 
    Document   : dAppointmentList
    Created on : 1 Jan, 2017, 2:47:23 PM

--%>



<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="bean.PProfile"%>
<%@page import="model.*,util.Database,org.hibernate.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Healthguard </title>

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

      <div class="col-md-3 left_col">
        <div class="left_col scroll-view">

          <div class="navbar nav_title" style="border: 0;">
              <a href="dDashboard.jsp" class="site_title"><i class="fa fa-paw"></i> <span>Healthguard</span></a>
          </div>
          <div class="clearfix"></div>

          <!-- menu prile quick info -->
          <div class="profile">
            <div class="profile_pic">
              <img src="images/img.jpg" alt="..." class="img-circle profile_img">
            </div>
            <div class="profile_info">
              <span>Welcome,</span>
              <h2><%= session.getAttribute("user") %></h2>
            </div>
          </div>
          <!-- /menu prile quick info -->

          <br />

          <!-- sidebar menu -->
          <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

            <div class="menu_section">
               
              <h3><br>Doctor</h3>
              
              
              <ul class="nav side-menu">
                  
                <li> <a href="dDashboard.jsp"><i class="fa fa-home"></i> Dashboard</a> </li>
                <li><a href="dProfile.jsp"><i class="fa fa-male"></i> Profile </a> </li>

                <li><a><i class="fa fa-male"></i>Appointment <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                    <li><a href="dAppointmentList.jsp">Appointment List</a>
                    </li>
                    <li><a href="dRequestedAppoint.jsp">Requested Appointment </a>
                    </li>
                   
                  </ul>
                </li>
                
                
                <li><a href="dPatientList.jsp"><i class="fa fa-medkit"></i> Patient </a> </li>
                
                <li><a href="dPrescription.jsp"><i class="fa fa-medkit"></i> Prescription </a> </li>
                
                <li><a href="dReport.jsp"><i class="fa fa-medkit"></i> Report </a> </li>
                
          </ul>
              
            </div>
            <div class="menu_section">
              <h3>Extras</h3>
              <ul class="nav side-menu">
                <li><a><i class="fa fa-heartbeat"></i>Health Tips <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                    <li><a href="pHealthExer.jsp">Health Exercise</a>
                    </li>
                    <li><a href="pHealthFood.jsp">Healthy Foods </a>
                    </li>
                  </ul>
                </li>
                
                <li><a><i class="fa fa-wechat"></i>Chat  <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                    <li><a href="pChat.jsp">Inbox</a>
                    </li>
                    
                  </ul>
                </li>
                
                <li><a><i class="fa fa-video-camera"></i> Video Chat <span class="label label-success pull-right">Coming Soon</span></a>
                </li>
              </ul>
            </div>

          </div>
          <!-- /sidebar menu -->

        </div>
      </div>

      <!-- top navigation -->
      <div class="top_nav">

        <div class="nav_menu">
          <nav class="" role="navigation">
            <div class="nav toggle">
              <a id="menu_toggle"><i class="fa fa-bars"></i></a>
            </div>

            <ul class="nav navbar-nav navbar-right">
              <li class="">
                <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                  <img src="images/img.jpg" alt=""><%= session.getAttribute("user") %>
                  <span class=" fa fa-angle-down"></span>
                </a>
                <ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
                    <li><a href="dProfile.jsp">  Profile</a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <span class="badge bg-red pull-right">50%</span>
                      <span>Settings</span>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">Help</a>
                  </li>
                  <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
                  </li>
                </ul>
              </li>

             
                </ul>
            
          </nav>
        </div>

      </div>
      <!-- /top navigation -->


      <!-- page content -->
      
       
      <div class="right_col" role="main">

          
     <div class="container">
	<div class="row">
        <div class="col-sm-6 col-md-6 pull-right">
    		
           
                <div class="input-group col-sm-6 col-md-9">
                  <form method="post" action="dPatientList.jsp">
                    <input type="text" name="searchPat"class="form-control" placeholder="Patient Search" />
                    <span class="input-group-btn">
                        <input class="btn btn-info" type="submit"  class="glyphicon glyphicon-search"/>
                       
                    </span>
                    </form>
                </div>
           
        </div>
	</div>
</div>
                                    
  <div class="row">
    <div class="col-md-10">
    
        
      <div class="container table-responsive" >
  
      <table class="table">
        <thead>
         <tr>
            <th> Id</th>
            <th>Patient Name </th>
            <th>Age </th>
            <th>Mobile Number</th>
            <th>Action</th>
      
        </tr>
      </thead>
      
        <%
        String searchPat = request.getParameter("searchPat");
        SessionFactory sf = Database.dataConnection();
		Session ses = sf.openSession();
		Transaction tx = ses.beginTransaction();
		
		/* Criteria ct = ses.createCriteria(PProfile.class); */
		Query query = ses.createQuery("from bean.PProfile where user='"+searchPat+"'");
		List<PProfile> li = query.list();
		for(Iterator<PProfile> it = li.iterator();it.hasNext();)
            {
				PProfile p = it.next();                  
             %>
      <tbody>
        <tr>
            <td><%=p.getPid()%></td>
            <td><%=p.getPname()%></td>
         <td><%=p.getAge()%></td>
         <td><%=p.getMobile()%></td>
         <td><a href="getPrescription.jsp?<%= searchPat %>">Prescription</a></td>
        
      </tr>
      <%
      }
            
                          
        %>
      
      
     
    </tbody>
  </table>
 
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
  <script src="js/progressbar/bootstrap-progressbar.min.js"></script>
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
