
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*,util.Database" %>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>HealthCare </title>

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
              <img src="RetrieveImage" alt="..." class="img-circle profile_img">
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
               
              <h3><br>Hospital</h3>
              <ul class="nav side-menu">
                  <li><a href="hIndex.jsp"><i class="fa fa-home"></i> DashBoard </a>
                 
                </li>
                 <li><a href="emerInsert.jsp"><i class="fa fa-home"></i> Emergency </a>
                 
                </li>
                 <li><a href="hAppointment.jsp"><i class="fa fa-home"></i> Appointments </a>
                 
                </li>
                 <li><a href="hUpdatePatHist.jsp"><i class="fa fa-home"></i>Patient History </a>
                 
                </li>
                <li><a href="hTreatmentPlan.jsp"><i class="fa fa-home"></i> Treatment Plan </a>
                 
                </li>
                 <li><a href="hBilling.jsp"><i class="fa fa-home"></i> Patient Billing </a>
                 
                </li>
                <li><a href="notification.jsp"><i class="fa fa-home"></i>Notification </a>
                 
                </li>
                 </li>
                <li><a href="speicality.jsp"><i class="fa fa-home"></i>Add Speciality </a>
                 
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
                  <li><a href="hlogin.jsp"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
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
          


          
          
          
          
          
          
          
          
          
          
          
          
          
        <!-- footer content -->

        <footer>
          <div class="copyright-info">
            <p class="pull-right">Designed by Team <a href="pIndex.jsp">eSEVA</a>  
            </p>
          </div>
            <div class="clearfix">
                
                <%-- <% 
                 try
                 {
                     String hname = "";
                     String user = (String)session.getAttribute("user");
                     //out.println(user);
                     Connection con = Database.dataConnection();
                     Statement stmt = con.createStatement();
                     String str = "select * from hospreg where username = '"+user+"'";
                     ResultSet rs = stmt.executeQuery(str);
                     while(rs.next())
                     {
                         hname = rs.getString(1);
                        // out.println(hname);
                     }
                     String str1 = "Select * from emerinsert where hname = '"+hname+"'";
                     ResultSet rs1 = stmt.executeQuery(str1);
                     while(rs1.next())
                     {
                         if(hname.equals(rs1.getString(1)))
                                 {
                         //out.println("<br>You have to attend the spot "  +rs1.getString(2) );
                                 }
                     }
                 }catch(Exception e)
                 {
                     out.println(e);
                 }
                    %> --%>
            </div>
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
   
  <script src="js/custom.js"></script>

 
 
  <!-- /footer content -->
</body>

</html>
