


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Health Care</title>
  
      <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">



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

          <!-- menu profile quick info -->
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
                              <h3>Hospital</h3>

              <ul class="nav side-menu">
                  <li><a href="hIndex.jsp"><i class="fa fa-home"></i> DashBoard </a>
                 
                </li>
                <li><a href="hProfile.jsp"><i class="fa fa-home"></i> Profile </a>
                 
                </li>
                 <li><a href="hAppointment.jsp"><i class="fa fa-home"></i> Appointments </a>
                 
                </li>
                 <li><a href="hUpdatePatHist.jsp"><i class="fa fa-home"></i>Patient History </a>
                 
                </li>
                <li><a href="hTreatmentPlan.jsp"><i class="fa fa-home"></i> Treatment Plan </a>
                 
                </li>
                 <li><a href="hBilling.jsp"><i class="fa fa-home"></i> Patient Billing </a>
                 
                </li>
                <li><a href="hEvent.jsp"><i class="fa fa-home"></i>Generate Events </a>
                 
                </li>
              </ul>        
            </div>
            <div class="menu_section">
              <h3>Extras</h3>
              <ul class="nav side-menu">
               
                
                <li><a><i class="fa fa-wechat"></i>Chat  <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                    <li><a href="hChat.jsp">Inbox</a>
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
                  <li><a href="hProfile.jsp">  Profile</a>
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
            <label>Patient History</label>
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
   
          <!--AAAANNNISSSSHHHH-->
                   
                             
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title"> Medical condition </h3>
                            </div><br>                           
                            <div class="panel-body">
  
                                <div class="container">
                                   <div class="row">
                                           <div class="col-md-6 form-group has-success">
                                               <textarea class="form-control" placeholder="Patient medical condition"></textarea>
                                            </div>
                                   </div>
                                 </div>
                            </div>
                        </div>
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title"> Major illness </h3>
                            </div><br>                           
                            <div class="panel-body">
  
                                <div class="container">
                                   <div class="row">
                            
                                                                        
                                        <div class="col-md-6 form-group has-success">
                                            <input type="text" class="form-control" placeholder="Disease "><br>
                                        </div>
                                       <div class="col-md-6 form-group has-success">
                                          <input type="text" class="form-control" id="mname" placeholder="Disease code"><br>
                                       </div>
                                       
                                       <div class="col-md-6 form-group has-success">
                                           <input type="text" class="form-control" placeholder="Doctor"><br>
                                       </div>
                                       <div class="col-md-6 form-group has-success">
                                          <input type="text" class="form-control" placeholder="Notes">
                                       </div>
                                   </div>
                                       <div class="col-md-6 form-group has-success">
                                           <label><h4>Date of Disease</h4></label><br>
                                           <input type="date" class="form-control"><br>
                                       </div>
                                                                                  
                                   </div>
                                 </div>
                            </div>
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title"> Major surgery </h3>
                            </div><br>                           
                            <div class="panel-body">
  
                                <div class="container">
                                   <div class="row">
                            
                                                                        
                                        <div class="col-md-6 form-group has-success">
                                            <input type="text" class="form-control" placeholder="Patient name "><br>
                                        </div>
                                       <div class="col-md-6 form-group has-success">
                                          <input type="text" class="form-control" id="mname" placeholder="Doctor"><br>
                                       </div>
                                       
                                       
                                   </div>
                                       <div class="col-md-6 form-group has-success">
                                           <label><h4>Date of Disease</h4></label><br>
                                           <input type="date" class="form-control"><br>
                                       </div>
                                    <div class="col-md-6 form-group has-success">
                                               <textarea class="form-control" placeholder="Patient medical condition"></textarea>
                                            </div>
                                                                                  
                                   </div>
                                 </div>
                            </div>
                        </div>
                    </div>
                </div>  
                                            
          
          <!--AAAAANNNNIIIISSSSHHHH-->

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
