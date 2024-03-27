
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,util.Database" %>
<%!
   String user="";
   String fname="";
%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Health Care </title>
  <!--anish-->
      <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<!--anish-->

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
            <a href="pIndex.jsp" class="site_title"><i class="fa fa-paw"></i> <span>Healthguard</span></a>
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
               
              <h3><br>General</h3>
              <ul class="nav side-menu">
                                        <li><a href="pDashboard.jsp"><i class="fa fa-dashboard"></i> Dashboard </a></li>

                
                <li><a><i class="fa fa-male"></i>Profile <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                    <li><a href="pProfile.jsp">Patient Profile</a>
                    </li>
                    <li><a href="pFamlyHist.jsp">Family History</a>
                    </li>
                    <li><a href="pPatHistory.jsp">Patient History</a>
                    </li>
                  </ul>
                </li>
                
                
                <li><a><i class="fa fa-medkit"></i> Medication <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                    
                    <li><a href="pPrescription.jsp">Prescriptions</a>
                    </li>
                     <li><a href="pTratmentPlan.jsp">Treatment Plan</a>
                    </li>
                  </ul>
                </li>
                
                
                <li><a><i class="fa fa-list-alt"></i> Lab Test Reports <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                    <li><a href="pLabReports.jsp">Lab Repots</a>
                    </li>
                   
                  </ul>
                </li>
                
                <li><a><i class="fa fa-users"></i>Appointment <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                    <li><a href="pBookAppointment.jsp">Book Appointment</a>
                    </li>
                    <li><a href="pAppointmentHist.jsp">Appointment History</a>
                    </li>
                  </ul>
                </li>
                 <li><a><i class="fa fa-credit-card-alt"></i>Insurance <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                    <li><a href="pInsurance.jsp">View Insurance</a>
                    </li>
                    <li><a href="pUpdateInsu.jsp">Update Insurance</a>
                    </li>
                  </ul>
                </li>
                
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
                  <li><a href="javascript:;">  Profile</a>
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
            <label>Patient Details</label>
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
                                <h3 class="panel-title"> Patient details </h3>
                            </div><br>                           
                            <div class="panel-body">
  
                                <div class="container">
                                    <form method="post" action="PudateInsert" enctype="multipart/form-data">
                                                    <div class="panel-body">
                                                        <div class="row">
                                                            <div class="col-md-12 form-group has-success">
                                                             <div class="panel-body">
                                                                    <div class="row">
                                                                       

                                                                        <div class="col-md-6 form-group has-success">
                                                                              <input type="text" name="pname" class="form-control" placeholder="Enter patient name">
                                                                        </div>
                                                                        <div class="col-md-6 form-group has-success">
                                                                              <input type="text" name="adhar" class="form-control" id="mname" placeholder="AAadhar card number">
                                                                        </div>
                                                                        <div class="col-md-6 form-group has-success">
                                                                              <input type="text" name="height" class="form-control" placeholder="Height">
                                                                        </div>
                                                                        <div class="col-md-6 form-group has-success">
                                                                              <input type="text" name="weight" class="form-control" id="mname" placeholder="Weight">
                                                                        </div>
                                                                        <div class="col-md-6 form-group has-success">
                                                                              <input type="text" name="bgroup" class="form-control" placeholder="Blood group">
                                                                        </div>
                                                                        <div class="col-md-6 form-group has-success">
                                                                              <input type="text" name="age" class="form-control" id="mname" placeholder="Age">
                                                                        </div>
                                                                        
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                       
                                                                            <label><h4>Gender</h4></label><br>
                                                                            
                                                                                <input type="radio" name='gender3'  id="g_male" value="Male"><span> Male</span>
                                                                            
                                                                            
                                                                                <input type="radio" name='gender3' id="g_female" value="Female"><span> Female</span>
                                                                            
                                                                       
                                                                        
                                                                    </div>
                                                                    <div class="col-md-6 form-group has-success">
                                                                                
                                                                            <label><h4>Maritial status</h4></label><br>
                                                                            
                                                                                <input type="radio" name='mrg'  id="g_male" value="Yes"><span> yes</span>
                                                                            
                                                                            
                                                                                <input type="radio" name='mrg'id="g_female" value="No"><span> No</span>
                                                                            
                                                                        
                                                                    </div>
                                                                 <div class="row">
                                                                    
                                                                       <div class="col-md-6 form-group has-success">
                                                                                <label><h4>Date of birth</h4></label><br>
                                                                                <input type="date" name="date" class="form-control"><br>
                                                                    </div>
                                                                        </div>
                                                                 <div class="row">
                                                                 <div class="col-md-6 form-group has-success">
                                                                              <input type="text" name="occupation" class="form-control" id="mname" placeholder="Occuption">
                                                                 </div>
                                                                 </div>
                                                                
                                                                    <div class="row">
                                                                        <div class="col-md-6 form-group has-success">
                                                                             <textarea class="form-control" name="address" placeholder="Enter Address"></textarea>
                                                                        </div>
                                                                    </div>
                                                             
                                                                        <div class="col-md-6 form-group has-success">
                                                                            <input type="text" name="mobile" class="form-control" id="fname" placeholder="Mobile number">
                                                                        </div>
                                                                        <div class="col-md-6 form-group has-success">
                                                                            <input type="text" name="email" class="form-control" id="fname" placeholder="Email">
                                                                        </div>
                                                                    </div>
                                                             

                                                                </div>
                                                            <div class="row">
                                                                        
                                                                        <div class="col-md-4 form-group has-success">
                                                                              <input type="text" name="ename" class="form-control" placeholder="Emergency Conatact person Name ">
                                                                        </div>
                                                                        <div class="col-md-4 form-group has-success">
                                                                              <input type="text" name="relation" class="form-control" id="mname" placeholder="Relation">
                                                                        </div>
                                                                        <div class="col-md-4 form-group has-success">
                                                                              <input type="text" name="cont" class="form-control" placeholder="Contact number">
                                                                        </div>
                                                                        <div class="col-md-4 form-group has-success">
                                                                       Upload Photo  <input type="file"  name="photo" class="form-control" placeholder="Contact number">
                                                                        </div>
                                                                        
                                                                    </div>
                                                            <br><br>
                                                                <div class="col-md-10">
                                                                    <input type="submit" value="ADD"  class="btn btn-success">
                                                                    <input type="submit" value="UPDATE"  class="btn btn-warning">
                                                                    <input type="submit" value="DELETE"  class="btn btn-danger">
                                                                </div>
                                                            </div>
                                                        
                                                        </div>
         </form>
                                                    </div>
                                            
                                </div>
                            </div>
                              
                             
                        </div>
                    </div>
                </div>  
                                            
          
      

        <!-- footer content -->

        <footer>
          <div class="copyright-info">
            <p class="pull-right">Designed by Team <a href="pIndex.jsp">eSEVA</a>  
            </p>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
      <!-- /page content -->

    </div>

  </div>

  <div id="custom_notifications" class="custom-notifications dsp_none">
    <ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
    </ul>
    <div class="clearfix"></div>
    <div id="notif-group" class="tabbed_notifications"></div>
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

  <!--anish-->
  
      <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
    <script src="js/plugins/morris/morris-data.js"></script>

  
  <!--anish-->
 
 
  <!-- /footer content -->
</body>

</html>
