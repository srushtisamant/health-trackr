

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,util.Database" %>
<%!
   String user="";
   String fname="";
%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Conten+t-Type" content="text/html; charset=UTF-8">
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
                  
                <li> <a href="dDashboard.jsp"><i class="fa fa-dashboard"></i> Dashboard</a> </li>
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

          <!-- /menu footer buttons -->
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
                  <li><a href="dlogin.jsp"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
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
            <label>Doctor Profile</label>
        </h2>
        <br />
         <br />
         <p><a href="dUpdateProfile.jsp">Update</a></p>

        <br clear="all" />
    </div>
    <div id="valSaveSuccess" class="set_success_msg">
        
    </div>
    <div id="valVitalError" class="failure hideit" style="display: none; padding: 12px 12px 12px 50px;">
        <div class="validation-summary-valid" data-valmsg-summary="true"><ul><li style="display:none"></li>
</ul></div>
    </div>
    
     <!--retrieve data patient from table -->
   <%--  <%
    try
     {
   user = (String)session.getAttribute("user");
   Connection con = Database.dataConnection();
   Statement stmt = con.createStatement();
   String str = "Select fname from dregister where username = '"+user+"'";
   ResultSet rs = stmt.executeQuery(str);
   while(rs.next())
   {
       fname = rs.getString(1);
   }
   String strs = "select * from dprofile where pname = '"+fname+"'";
ResultSet rss = stmt.executeQuery(strs);
while(rss.next())
   {
%>


        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr valign="top">
                <td rowspan="3" width="134">
                        <img src="../Images/0091076166908999.jpg"  title="" height="100px" width="100px" class="patient_photo_mgn"/>
                        <br>
                        <br>

                </td>
                <td colspan="2" class="box1 table tr td">
                    <!-- IN Table Start -->
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr valign="top">
                            <td colspan="4">
                                <div class="Name">
                                    <h2>Dr.Andy</h2>
                                </div>
                            </td>
                        </tr>
                        <tr valign="top">
                            <td width="20%">
                                <div class="patient-text"><span>Doctor Registration Number:</span></div>
                            </td>
                            <td width="25%">
                                <p>
                                     <span> 12</span>
                                </p>
                            </td>
                            <td width="6%">
                                <div></div>
                            </td>
                            <td>
               <p>
                                     <tr valign="top">
                            <td>
                          <div class="patient-text"><span>Hospital : </span></div>
                            </td>
                            <td>
                                
                                <p> 
                            
                            </td>
                            <td align="right">
                                <div class="patient-text"><span>Reg.No.&nbsp;: </span></div>
                                
                            </td>
                            <td>
                                 <p>&nbsp; ---</p>
                               

                            </td>
                        </tr>
                        <tr valign="top">
                            <td>
                                <div class="patient-text"><span>Graduation : </span></div>
                            </td>
                            <td>
                                
                                <p> --</td>
                            <td align="right">
                                <div class="patient-text"><span>Post&nbsp;Graduation&nbsp;: </span></div>
                                
                            </td>
                            <td>
                                 <p>&nbsp; ---</p>
                               

                            </td>
                        </tr>
                        
                         <tr valign="top">
                            <td>
                                <div class="patient-text"><span>Specialization : </span></div>
                            </td>
                            <td>
                                
                                <p> --</p></td>
                            
                             <td align="right">
                                <div class="patient-text"><span>Practice&nbsp;Since: </span></div>
                                
                            </td>
                            <td>
                                <p>&nbsp; --</p>
                            </td>
                            
                        </tr>
                        
                         <tr style="height: 11px;"></tr>
                        <tr valign="top">
                            <td>
                                <div class="patient-text"><span>Hospital&nbsp;Address: </span></div>
                            </td>
                            <td colspan="3">
                                <p>

                            </td>

                            <td colspan="2"></td>
                            <td>&nbsp;  </td>

                        </tr>
                       
                      
                        <tr valign="top">
                            <td>&nbsp;  </td>
                            <td>
                                <p>


                                </p>
                            </td>
                        </tr>
                        <tr valign="top">
                            <td>&nbsp;  </td>
                            <td colspan="2">
                                <p>
India<b>.</b>
                                </p>

                                <td>&nbsp;  </td>
                            <td>&nbsp;  </td>

                        </tr>
                       
                        <tr valign="top">
                            <td>
                                <div class="patient-text"><span>Phone: </span></div>
                            </td>
                            <td colspan="3">

                                <p>
                                </p>

                            </td>
                            <td>&nbsp;  </td>
                            <td>&nbsp;  </td>

                        </tr>
                        <tr valign="top">
                            <td>
                                <div class="patient-text"><span>Email: </span></div>
                            </td>
                            <td colspan="3">

                                <p>
                             </p>

                            </td>
                            <td>&nbsp;  </td>
                            <td>&nbsp;  </td>
                        </tr>


                        
            
                         
                        
                        <tr style="height: 7px;"></tr>
                        <tr valign="top">
                            <td colspan="4">

                                <hr />
                            </td>
                        </tr>
                        <tr style="height: 11px;"></tr>
                        
                                    <tr valign="top">
                            <td>
                                <div class="patient-text"><span>Height: </span></div>
                            </td>
                            <td>
                                <p> --cm</td>
                            <td align="right">
                                <div class="patient-text"><span>Weight: </span></div>
                                
                            </td>
                            <td>
                                 <p> ---kg</p>
                               

                            </td>
                        </tr>           
                        
                        <tr valign="top">
                            <td>
                                <div class="patient-text"><span>Blood&nbsp;Group: </span></div>
                            </td>
                            <td>
                                <p>
                               </p>
                            </td>
                            <td>&nbsp;  </td>
                            <td>&nbsp;  </td>
                        </tr>
                        <tr valign="top">
                            <td>
                                <div class="patient-text"><span>Birth Date: </span></div>
                            </td>
                            <td>
                                <p>
                                </p>
                            </td>
                            <td align="right">
                                <div class="patient-text"><span>Age: </span></div>
                                
                            </td>
                            <td>
                                 <p> </p>
                               

                            </td>
                        </tr>
 .                       <tr valign="top">
                            <td>
                                <div class="patient-text"><span>Sex: </span></div>
                            </td>
                            <td>
                                <p>
Male                                </p>
                            </td>
                            <td>&nbsp;  </td>
                            <td>&nbsp;  </td>
                        </tr>
                        <tr valign="top">
                            <td>
                                <div class="patient-text"><span>Marital Status: </span></div>
                            </td>
                            <td>
                                <p>
                                </p>
                            </td>
                            <td>&nbsp;  </td>
                            <td>&nbsp;  </td>
                        </tr>
                        <tr valign="top">
                            <td>
                                <div class="patient-text"><span>Occupation: </span></div>
                            </td>
                            <td>
                                <p>
                            </td>
                            <td>&nbsp;  </td>
                            <td>&nbsp;  </td>
                        </tr>
                        <tr style="height: 11px;"></tr>
                        <tr valign="top">
                            <td colspan="4">
                                <hr />
                            </td>
                        </tr>
                        <tr style="height: 11px;"></tr>
                        <tr valign="top">
                            <td>
                                <div class="patient-text"><span>Home address: </span></div>
                            </td>
                            <td colspan="3">
                                <p>

                            </td>

                            <td colspan="2"></td>
                            <td>&nbsp;  </td>

                        </tr>
                       
                       
                        <tr valign="top">
                            <td>&nbsp;  </td>
                            <td>
                                <p>

Maharashtra<b>,</b>
                                </p>
                            </td>
                        </tr>
                        <tr valign="top">
                            <td>&nbsp;  </td>
                            <td colspan="2">
                                <p>
India<b>.</b>
                                </p>

                                <td>&nbsp;  </td>
                            <td>&nbsp;  </td>

                        </tr>
                        <tr valign="top">
                            <td>
                                <div class="patient-text"><span>Zip Code: </span></div>
                            </td>
                            <td>
                                <p>
                                </p>

                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp; </td>
                        </tr>
                        <tr valign="top">
                            <td>
                                <div class="patient-text"><span>Phone: </span></div>
                            </td>
                            <td colspan="3">

                                <p>

                            </td>
                            <td>&nbsp;  </td>
                            <td>&nbsp;  </td>

                        </tr>
                        <tr valign="top">
                            <td>
                                <div class="patient-text"><span>Email: </span></div>
                            </td>
                            <td colspan="3">

                                <p>
                               </p>

                            </td>
                            <td>&nbsp;  </td>
                            <td>&nbsp;  </td>
                        </tr>

                    </table>
                    <!-- IN Table End -->


                </td>
            </tr>
            <tr valign="top">
                <td class="box1 table tr td">

                    <div class="box-edit">
                        <div class="box-heading-edit">
                            <h4>Emergency Contact</h4>
                        </div>
                        <table width="100%" border="0" bgcolor="#fff8f6" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="33%" class="border-bottom">
                                    <div class="patient-text-emerg-con">
                                        <span>&nbsp;Name</span>
                                    </div>
                                </td>
                                <td width="33%" class="border-bottom">
                                    <div class="patient-text-emerg-con">
                                        <span>Relation</span>
                                    </div>
                                </td>
                                <td width="33%" class="border-bottom">
                                    <div class="patient-text-emerg-con">
                                        <span>Contact</span>
                                    </div>
                                </td>
                            </tr>

                        </table>
                    </div>

                </td>
            </tr>

            <tr valign="top">
                <td class="box1 table tr td1">

                    <div class="box">
                    </div>
                    
                </td>
            </tr>

<%
}
%>
 <% 
 }catch(Exception e)
                 {
     out.println("Error " +e);
 }
    %>
            
        </table>
 --%>        <!-- OUT Table End -->

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

 
 
  <!-- /footer content -->
</body>

</html>
