<%@page import="bean.DRegister"%>
<%@page import="bean.HRegister"%>
<%@page import="java.util.*,util.*,model.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
          

             
<div id="FamilyHistory" class="tableLeft">
    <div class="tab-heading">
        <h2>REQUEST AN APPOINTMENT</h2>
        
        <br clear="all">
    </div>
    
    <div class="row">
                        <div class="tab-heading">
        <h2>Appointment Details</h2>
        
        <br clear="all">
    </div>
                    <div class="col-lg-14">
                        <div class="panel panel-primary">
                   
                            
                            <div class="panel-body">

                                <form method="post" action="BookAppointmentDoctor">
                                        <div class="container">

                                                 <div class="row">
                                                   <div class="col-md-6 form-group has-success">  <br>
                                                         <select name="hospname" class="form-control">
                        <%
                         List<HRegister> reg = RegisterService.getHospName();
                         for(Iterator<HRegister> it = reg.iterator();it.hasNext();)
                         {
                        	 HRegister hr = it.next();
                        	 %>
                         
                        <option value="<%= hr.getHname()%>"><%= hr.getHname()%></option>
                        <% 
                        }
                        %>
                        </select><br>
                                                       <!-- <input type="submit" value="Search"  class="btn btn-success"> -->
                                                         <select name="docname" class="form-control">
                                                        
                                                         <%
                         List<DRegister> dreg = RegisterService.getDocName();
                         for(Iterator<DRegister> it = dreg.iterator();it.hasNext();)
                         {
                        	 DRegister dr = it.next();
                        	 %>
                         
                        <option value="<%= dr.getDname()%>"><%= dr.getDname()%></option>
                        <% 
                        }
                        %>
                        </select><br>
                                                        <!--<input type="submit" value="Search"  class="btn btn-success"><br>-->
                                                         <input type="text" name="dieases" placeholder="Diesease" class="form-control"><br>
                                                        
                                                        <label><h4>Date and Time of Appointment</h4></label>
                                                        <p><br>
                                                          <input type="date" name="date"class="form-control">
                                                          <br>
                                                          
                                                          
                                                          <select name="timeslot" id="ts">
                                                            <option selected="">SELECT TIME SLOT</option>
                                                            <option value="9 AM - 11 AM">9 AM - 11 AM</option>
                                                            <option value="9 AM - 11 AM">9 AM - 11 AM</option>
                                                            <option value="1 PM - 3 PM">1 PM - 3 PM</option>
                                                            <option value="3 PM - 5 PM">3 PM - 5 PM</option>
                                                            <option value="5 PM - 7 PM">5 PM - 7 PM</option>
                                                            <option value="7 PM - 9 PM">7 PM - 9 PM</option>
                                                          </select>
                                                        </p>
                                                        <p>                                                            <br>  
                                                            <input type="text" name="Other" placeholder="Other Details" class="form-control">
                                                          <br>
                                                           <p>                                                            <br>  
                                                               <input type="text" name="username"  class="form-control" readonly="true" value="<%= session.getAttribute("user") %> ">
                                                          <br>
                                                       
                                                          
                                                             <input type="submit" value="Book"  class="btn btn-success">
                                                             <input type="submit" value="Reset"  class="btn btn-warning">
                                                             <input type="submit" value="Cancel"  class="btn btn-danger">
                                                            </p>
                                                   </div>
                                                 </div>
                                            
                                        </div> 
                            </form>
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
