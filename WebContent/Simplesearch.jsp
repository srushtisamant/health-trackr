
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <title>Health Care</title>
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



        <!-- Javascript -->
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
         
            <div class="row"  >
                <div class="register span6">
                    
                        <h2>Simple<span class="red"><strong>Search</strong></span></h2>
                        <ul>
                            <li><u><b>Hospital  Search</b></u></li>
                        </ul>
                        <form method="post" action="SearchSimple.jsp">
                       Hospital name or Area or Speciality :<input type="textbox" name="sparam"/>  
                     
                            <input type="submit" value="Search1"/>
                        </form>
                            <li><u><b>Blood Bank Search</b></u></li>
                        </ul>
                        <form method="post" action="BloodBank.jsp">
                       Blood Bank name or area:<input type="textbox" name="bloodbank"/>  
                     
                            <input type="submit" value="Search2"/>
                        </form>s
                        
                       
                    </form>
                </div>
            </div>
        </div>
        

    </body>

</html>

