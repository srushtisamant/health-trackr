<%-- 
    Document   : dAppointmentList
    Created on : 1 Jan, 2017, 2:47:23 PM

--%>


<%@page import="java.util.*"%>
<%@page import="bean.*,util.Database,model.*,org.hibernate.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
   int pid = 0;
   int pinc = 100;
   %>
   <%
   try
   {
	   SessionFactory sf = Database.dataConnection();
		Session ses = sf.openSession();
		Transaction tx = ses.beginTransaction();
		Query query = ses.createQuery("from bean.Prescription");
		List<Prescription> li = query.list();
		for(Iterator<Prescription> it = li.iterator();it.hasNext();)
		{
			Prescription p = it.next();
			pid = p.getPatid();
		}
                   
   } catch(Exception e)
   {
      
   }                    
   %> 
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
              <h2><%= session.getAttribute("user") %> </h2>
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
          
         
          
            <div>
    <input type="hidden" value="YW5hbnRyYWouZ2Fpa3dhZEBnbWFpbC5jb20=" id="hiddenmsg" />  
    <div class="tab-heading">
        <h2>
            <label>Prescription</label>
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
                           <h3 class="panel-title">  Medicines prescription </h3>
                       </div>
     <div class="panel-body">
        <div class="container">
            <form method="post" action="DoctorPrescription">
           <div class="row">
                     <div class="col-md-6 form-group has-success">  <br>
                                     
                         <input type="text" name="pid" readonly="true" placeholder="Patient ID" class="form-control" value="<%= pid %>"><br>
                         <input type="text" name="uname" placeholder="UserName"  class="form-control"><br>

                         <input type="text" name="pname" placeholder="Patient Name" class="form-control"><br>
                         <input type="text" name="diseases" placeholder="Diseases/ Illness" class="form-control"><br>

                              <div class="col-md-11 form-group has-success">
                                      <div>
                                          <label>Medicine type</label><br>
                                                       <input type="radio" name="med" value="Tablet"/>Tablet
                                                       <input type="radio" name="med" value="Syrup"/>Syrup
                                       </div>
                               </div>
                      <input type="text" name="medname" placeholder="Medicine Name" class="form-control"><br>

                         <div class="col-md-11 form-group has-success">
                           <label>Dosage </label> <br>

                         
                        <label class="checkbox-inline"><input type="checkbox"  name="dose" value="doseMorn">Morning</label>
                        <label class="checkbox-inline"><input type="checkbox" name="dose" value="doseAfter">AfterNoon</label>
                        <label class="checkbox-inline"><input type="checkbox" name="dose" value="doseEvening">Evening</label>
                         </div>
                         
                         <input type="text" name="medquantity" placeholder="Quantity" class="form-control"><br>
                          <textarea class="form-control" name="remark" placeholder="Remark"></textarea><br>
                          <input type="text" name="doctName" readonly="true"  class="form-control" value="<%= session.getAttribute("user") %> "><br>
                         <input type="date" name="prescrDate" placeholder="PrescriptionDate"><br><br/>
                         <input type="submit" value="ADD"  class="btn btn-success">
                         <input type="button" value="UPDATE"  class="btn btn-warning">
                         <input type="button" value="DELETE"  class="btn btn-danger">
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
