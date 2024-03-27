


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
                    <li><a href="pCurrentMedication.jsp">Current Medications</a>
                    </li>
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
          

          
        <div id="Medi" class="tableLeft">
    <div class="tab-heading">
        <h2>Medication</h2>

        <br clear="all">
    </div>
    
    <div class="popup_box32" id="popbox32" style="display: none;">
        <div class="popup_main32" id="popmain32">
            <!-- main -->
            <div class="popup_main_head32">
                <!-- Head -->
                <div class="popup_head32">Confirmation!</div>

                <div class="popupBoxClose32" onclick="unloadPopupBox32();">X</div>
            </div>
        </div>
    </div>

    


    <div id="valPrescriptionSaveError" class="failure hideit" style="display: none; padding: 12px 12px 12px 50px;">

        <div class="validation-summary-valid" data-valmsg-summary="true"><ul><li style="display:none"></li>
</ul></div>
    </div>
    <div class="box">
        <div class="box-heading">
            <h2>Current Medicines</h2>

        </div>
        <div id="displayOnly">
            </div><table border="0" cellpadding="0" cellspacing="0" width="100%">
            <thead align="left">
                <tr>
                    <th style="border-bottom: 1px #dedede solid;" width="110">Name</th>
                    <th style="border-bottom: 1px #dedede solid; text-align: right;" width="100"></th>
                    <th style="border-bottom: 1px #dedede solid;" width="100">Dosage</th>
                    <th class="Medi_days">Morning</th>
                    <th class="Medi_days">Afternoon</th>
                    <th class="Medi_days">Evening</th>
                    <th style="border-bottom: 1px #dedede solid;" width="100">Illness</th>
                    <th style="border-bottom: 1px #dedede solid;" width="122">Doctor</th>
                </tr>
            </thead>
            
            

        </table>
    </div>

    <div class="box border-box" id="box_display">
        <div class="box-heading">
            <h2>Prescriptions</h2>
            <a href="#"></a>
            <a>
                <img src="medication_files/icon-date.png" id="MedicationId1" alt="Date" title="Date" onclick="javascript:NewCssCal('MedicationId')" class="PrescriptionDate"></a>
            <input size="10" id="MedicationId" onchange="javascript:GetDate();" style="visibility: hidden" type="hidden">
            <select id="Medicin" name="medicin" onchange="ddlMedChange()" class="select-style ie7ddl">
                <option selected="selected" value="All">Select Medicine</option>
            </select>
            <select id="Doctor" name="doctor" onchange="ddlDocChange()" class="select-style ie7ddl">
                <option selected="selected" value="All">Select Doctor</option>
            </select>
        </div>



        <br>
    </div>


        <div class="box" id="box_edit" style="display: none;">
            <div class="box-heading">
                <h2>Prescriptions</h2>
                <a href="#"></a>
                <img title="" alt="cancel" src="medication_files/dr_edit_close.png" onclick="RediractPage();" style="float: right; margin-bottom: 0px; margin-right: 5px; cursor: pointer">
                <img title="" alt="cancel" src="medication_files/dr_save_btn.png" name="saveCurrentMedicine" id="saveCurrentMedicine" tabindex="10" value="Save" style="float: right; margin: 5px; cursor: pointer">
                
                <a>
                    
                    <img src="medication_files/icon-date.png">
                </a>
                <input size="10" id="MedicationId" onchange="javascript:GetDate();" style="visibility: hidden" type="hidden">
                <select id="Medicin" name="medicin" onchange="ddlMedChange()" disabled="disabled">
                    <option selected="selected" value="All">Select Medicine</option>
                </select>
                <select id="Doctor" name="doctor" onchange="ddlDocChange()" disabled="disabled">
                    <option selected="selected" value="All">Select Doctor</option>
                </select>
            </div>
            <div class="box" style="margin: 8px 5px" id="box_display">
                <table name="tabMedication" id="tabMedication" border="0" cellpadding="0" cellspacing="0" width="100%">


                    <tbody>
                    </tbody>

                </table>
            </div>
        </div>

        <div class="box" id="box_new" onload="setfocus1();" style="display: none;">
            <div class="box-heading">
                <h2>Prescriptions</h2>
                <a href="#"></a>
                <img title="" alt="cancel" src="medication_files/dr_edit_close.png" onclick="RediractPage();" style="float: right; margin-bottom: 5px; margin-right: 7px; cursor: pointer">
                <img title="" alt="cancel" src="medication_files/dr_save_btn.png" name="saveTempMedicine" id="saveTempMedicine" tabindex="11" value="Save" style="float: right; margin: 5px; cursor: pointer">
                <a>
                    
                    <img src="medication_files/icon-date.png">
                </a>
                <input size="10" id="MedicationId" onchange="javascript:GetDate();" style="visibility: hidden" type="hidden">
                <select id="Medicin" name="medicin" onchange="ddlMedChange()" disabled="disabled">
                    <option selected="selected" value="All">Select Medicine</option>
                   
                </select>
                <select id="Doctor" name="doctor" onchange="ddlDocChange()" disabled="disabled">
                    <option selected="selected" value="All">Select Doctor</option>
                  
                </select>
            </div>
            <div class="box" style="margin: 8px 5px 0" id="box_new">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody><tr class="box-heading">
                        <td colspan="7" style="border-bottom: 1px #dedede solid;">
                            <span style="height: 25px; width: 753px; float: left; font-weight: bold;">
<br>
                                <input name="addMultiple" id="addMultiple" value="Add" tabindex="10" onclick="addTempMedicines();" style="margin-top: -17px; width: 60px" type="button">
                            </span>
                        </td>
                    </tr>
                </tbody></table>

                <div style="color: green">
                                <b>* Search medicine from dropdown else type in local medicine textbox   </b>
                            </div><table name="tabMedicationAdd" id="tabMedicationAdd" border="0" cellpadding="0" cellspacing="0" width="100%">
                    <thead align="left">
                        <tr>
                            <th style="border-bottom: 1px #dedede solid;" width="110">Name</th>
                            <th style="border-bottom: 1px #dedede solid; text-align: right;" width="100"></th>
                            <th style="border-bottom: 1px #dedede solid;" width="150">Dosage</th>
                            <th style="border-bottom: 1px #dedede solid; text-align: left;" width="40">Morning</th>
                            <th style="border-bottom: 1px #dedede solid; text-align: center;" width="40">Afternoon</th>
                            <th style="border-bottom: 1px #dedede solid; text-align: right;" width="40">Evening</th>
                            <th style="border-bottom: 1px #dedede solid;" width="134">Illness</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td style="border-bottom: 1px #dedede solid;" class="patient-text" width="110">
                                <div class="search-item  ">
                                    <input id="SreachText" name="SreachText" value="search medicine" tabindex="1" onblur="if (this.value == '') {this.value = 'search medicine';}" onfocus="if (this.value == 'search medicine') {this.value = '';}" onkeyup="textChange();" type="text">
                                    <input value="" id="search" name="search" tabindex="2" onclick="textChange();" style="margin: 5px -13px 0 0;" type="submit">
                                </div>
                                <select id="NewMedicineName" tabindex="3" class="select-style medi_StyleIE ">
                                    <option selected="selected" value="0">Select</option>
                                </select>
                                <div class="ie7ddl1">
                                <input autocomplete="off" class="ui-autocomplete-input" id="new_medicine" name="new_med_nam" placeholder="Enter local medicine" style="display:block; width: 100%" type="text"><span class="ui-helper-hidden-accessible" aria-live="polite" role="status"></span>
                                    </div>
                            </td>
                            <td style="border-right: 1px #dedede solid; border-bottom: 1px #dedede solid;" class="patient-text" align="center" width="100">
                                <label for="Type" id="type" size="5" style="margin:0px;">Type</label><br>
                                
                                
                            </td>
                            <td class="patient-text" style="border-right: 1px #dedede solid; border-bottom: 1px #dedede solid;" width="150">
                                <div class="patient-text">
                                    <input id="DateToday" name="DateToday" value="29-03-2016" type="hidden">
                                    <span style="float: left; margin-top: 0px;"><input maxlength="2" class="TxtCenter" id="Days1" name="Days1" style="width:20px" tabindex="4" type="text">days from</span>
                                    <span style="float: left; margin-top: 12px; margin-left: 2px;"><input value="29-03-2016" id="fromDate" name="fromDate" style="width:70px" tabindex="5" type="text"></span>&nbsp; &nbsp; 
                                <span style="float: left; margin-top: 10px; margin-left: 5px;" class="calendericon">
                                    <img src="medication_files/calender-icon.jpg" id="fromDate" onclick="javascript:NewCssCal('fromDate')" class="fromDate " height="18">
                                </span>
                                </div>
                            </td>
                            <td style="border-bottom: 1px #dedede solid;" class="patient-text" align="center" width="40">

                                <input maxlength="2" value="0" class="TxtCenter" id="MorningDose1" name="MorningDose1" onblur="if (this.value == '') {this.value = '0';}" onfocus="if (this.value == '0') {this.value = '';}" style="width:20px" tabindex="6" type="text">
                            </td>
                            <td style="border-bottom: 1px #dedede solid;" class="patient-text" align="center" width="40">
                                <div><input maxlength="2" value="0" class="TxtCenter" id="AfterNoonDose1" name="AfterNoonDose1" onblur="if (this.value == '') {this.value = '0';}" onfocus="if (this.value == '0') {this.value = '';}" style="width:20px" tabindex="7" type="text"></div>
                            </td>
                            <td style="border-right: 1px #dedede solid; border-bottom: 1px #dedede solid;" class="patient-text" align="center" width="40">
                                <input maxlength="2" value="0" class="TxtCenter" id="EveningDose1" name="EveningDose1" onblur="if (this.value == '') {this.value = '0';}" onfocus="if (this.value == '0') {this.value = '';}" style="width:20px" tabindex="8" type="text">
                            </td>
                            <td class="patient-text" style="border-bottom: 1px #dedede solid;" width="160">
                            </td>
                        </tr>
                        <tr>
                            
                        </tr>
                        <tr>
                            <td colspan="7">
                                <div class="" style="margin: 8px 5px 0" id="box_new">
                                    <table id="tempMedicines" border="0" cellpadding="0" cellspacing="0" width="100%">
                                        <tbody>
                                        </tbody>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="patient-text" style="border-bottom: 0px #dedede solid;" colspan="7">
                                <b>Remarks:</b>
                                <input id="txtRemark1" maxlength="150" name="txtRemark1" placeholder="If medicine not available in List,Please enter the medicine name in Remarks" size="95" tabindex="9" type="text">
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>



        </div>

        
    </div>
    <br clear="all">
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
