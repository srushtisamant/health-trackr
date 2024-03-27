

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <title>Login</title>
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
                        <h1><a href="">HealthCare Hospital Register <span class="red"></span></a></h1>
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
                    <form action="HRegistration" method="post">
                        <h2>REGISTER TO <span class="red"><strong>Healthguard</strong></span></h2>
                        <label for="hospName">Hospital Name</label>
                        <input type="text" id="hospName" name="hospName" placeholder="Enter Hospital Name...">
                         <label for="hospRegNum">Registration Number</label>
                      <input type="text" id="hospRegNum" name="hospRegNum" placeholder="Enter Hospital Name...">
                      <label for="hospAdd">Hospital Address</label>
                      <input type="text" id="hospAdd" name="hospAdd" placeholder="Enter Hospital Address">
                    <label for="hospCity">City</label>
                      <input type="text" id="hospCity" name="hospCity" placeholder="City">
                            
                    <label for="hContact">Contact Number</label>
                        <input type="text" id="hContact" name="hContact" placeholder=" Hospital Contact+ Number...">
                        
                        <label for="huname">Username</label>
                        <input type="text" id="huname" name="huname" placeholder="Choose a Username...">
                        
                        <label for="password">Password</label>
                        <input type="password" id="password" name="password" placeholder="Choose a Password...">
                        <button type="submit">REGISTER</button>
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

