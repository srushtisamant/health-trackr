<%@page import="bean.HRegister"%>
<%@page import="java.util.*,util.*,model.*" %>
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
                        <h1><a href=""><span class="red">HealthCare</span> Doctor Register </a></h1>
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
                    <form action="DRegistration" method="post">
                        <h2>REGISTER TO <span class="red"><strong>Healthguard</strong></span></h2>
                        <label for="doctName">Hospital Name</label>
                        <select name="hospname">
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
                        </select>
                        <label for="doctName">Doctor Name</label>
                        <input type="text" id="doctName" name="doctName" placeholder="Enter Doctor Name...">
                        <label for="doctRegNo">Doctor Registration </label>
                        <input type="text" id="doctRegNo" name="doctRegNo" placeholder="Doctor Registration Number">
                        <label for="mobnum">Mobile Number</label>
                        <input type="text" id="mobnum" name="mobnum" placeholder="Mobile  Number">
                        
                        <label for="duname">Username</label>
                        <input type="text" id="duname" name="duname" placeholder="choose a username...">
                        
                        <label for="password">Password</label>
                        <input type="password" id="password" name="password" placeholder="choose a password...">
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

