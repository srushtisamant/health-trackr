
<!DOCTYPE html>
<html lang="en">
        <meta charset="utf-8">

    <head>

        <title>Health Care </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Oleo+Script:400,700'>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    </head>

    <body>

        <div class="header">
            <div class="container">
                <div class="row">
                    <div class="logo span4">
<!--                         <h1><a href="">eSeva User Login <span class="red"></span> </a></h1> -->
                    </div>
                    <div class="links span8">
                        <a class="home" href="" rel="tooltip" data-placement="bottom" data-original-title="Home"></a>
                        <a class="blog" href="" rel="tooltip" data-placement="bottom" data-original-title="Blog"></a>
                    </div>
                </div>
            </div>
        </div>

        <div class="register-container container">
            <div class="row">
                <div class="register span6">
                    <form action="emergencySearchContinue.jsp" method="post">
                        <h2>Emergency<span class="red"><strong>Services</strong></span></h2>
                        <ul>
                            <li><u><b>Emergency Case:</b></u></li>
                        </ul>
                        <input type="radio" name="emer" value="Accident"/>Accident<BR>
                        <input type="radio" name="emer" value="Heart Attack"/>Heart Attack<BR>
                        <input type="radio" name="emer" value="Burn case"/>Burn Case<BR>
                        <input type="radio" name="emer" value="HeartAttack"/>Other: <input type="textbox" name="other"/><BR>
                        <BR>
                        <BR>
                        <u><b>Current Location:</b></u><BR>
                        <b>Area:</b>    <input type="textbox" name="area"/> 
                         <b>Sub-Area:</b>  <input type="textbox" name="subarea"/> <br>
                        <b>Patient Name:</b>  <input type="textbox" name="patientname"/><br>
                        <b>Patient Contact:</b>  <input type="textbox" name="contact"/>
                            <input type="submit" value="Search"/>
                        
                       
                    </form>
                </div>
            </div>
        </div>

        <!-- Javascript -->
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
         
  
        

    </body>

</html>

