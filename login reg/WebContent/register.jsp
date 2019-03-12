<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Account</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Acme">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Akronim">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bitter:400,700">
    <link rel="stylesheet" href="https://daneden.github.io/animate.css/animate.min.css">
    <link rel="stylesheet" href="assets/css/styles.min.css">
</head>

<body>
    <div>
        <div class="align-content-stretch flex-nowrap header-dark" style="height:5px;">
            <nav class="navbar navbar-dark navbar-expand-md navigation-clean-search">
                <div class="container"><a class="navbar-brand" href="index.jsp">ABC CourseWeb</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                    <div
                        class="collapse navbar-collapse" id="navcol-1">
                        <ul class="nav navbar-nav">
                            <li class="nav-item" role="presentation"><a class="nav-link" href="index.jsp">Home</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link" href="contactUS.jsp">Contact Us</a></li>
                            <li class="dropdown"><a class="dropdown-toggle nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">More</a>
                                <div class="dropdown-menu" role="menu"><a class="dropdown-item" role="presentation" href="#">Services</a><a class="dropdown-item" role="presentation" href="#">Experience</a><a class="dropdown-item" role="presentation" href="#">Technicians</a></div>
                            </li>
                        </ul>
                        <form class="form-inline mr-auto" target="_self">
                            <div class="form-group"><label for="search-field"><i class="fa fa-search"></i></label><input class="form-control search-field" type="search" name="search" id="search-field"></div>
                        </form>
<%
                        String  un  = (String) session.getAttribute("username");
                            		System.out.println("username:"+un);
                        if(un!=null){
                        	%>
                        		<span class="navbar-text">Welcome, <%=un%> <a href="<%=request.getContextPath()%>/LogoutServlet" class="navbar-text"> (Logout) </a></span>
                        		<span class="navbar-text"><a href="<%=request.getContextPath()%>/AccountRedirServlet" class="navbar-text">| MyAccount</a></span>
                        		
                        	<% 
                        	
                        }else{
                        	%>
                        		<span class="navbar-text"><a href="login.jsp" class="login">Log In</a></span>
                        		<a class="btn btn-light action-button" role="button" href="register.jsp" data-bs-hover-animate="pulse">Sign Up</a>
                        	<% 
                        }
                        %>
                        </div>
        </div>
        </nav>
        <h6 style="padding-left:1100px;color:white">${message2}${message3}</h6>
        <div class="container invisible"></div>
        
    </div>
    </div>
   <div style="background-color:black" >
        <div class="row register-form">
            <div class="col-md-8 offset-md-2">
                <form class="custom-form" action="LoginRegister" method="post">
                    <h1 class="text-uppercase text-center text-danger visible" style="font-size:40;text-align:center;color:rgb(200,100,182);font-family:Acme;text-shadow: 1px 2px;">Register Form</h1>
                    <div class="form-row form-group">
                        <div class="col-sm-4 label-column"><label class="col-form-label" for="name-input-field" style="color:white">Name </label></div>
                        <div class="col-sm-6 input-column"><input class="form-control" type="text" name="name"></div>
                    </div>
                    <div class="form-row form-group">
                        <div class="col-sm-4 label-column"><label class="col-form-label" for="email-input-field" style="color:white">Email </label></div>
                        <div class="col-sm-6 input-column"><input class="form-control" type="email" name="uname"></div>
                    </div>
                    <div class="form-row form-group">
                        <div class="col-sm-4 label-column"><label class="col-form-label" for="pawssword-input-field" style="color:white">Password </label></div>
                        <div class="col-sm-6 input-column"><input class="form-control" type="password" name="passwd"></div>
                    </div>
                    <div class="form-row form-group">
                        <div class="col-sm-4 label-column"><label class="col-form-label" for="repeat-pawssword-input-field" style="color:white">Repeat Password </label></div>
                        <div class="col-sm-6 input-column"><input class="form-control" type="password" name="password2"></div>
                    </div>
                    <div class="form-row form-group">
                        <div class="col-sm-4 label-column"><label class="col-form-label" for="name-input-field" style="color:white">Address </label></div>
                        <div class="col-sm-6 input-column"><input class="form-control" type="text" name="address" ></div>
                    </div>
                    <div class="form-row form-group">
                        <div class="col-sm-4 label-column"><label class="col-form-label" for="name-input-field" style="color:white">Province</label></div>
                        <div class="col-sm-6 input-column"><input class="form-control" type="text" name="province"></div>
                    </div>
                    <div class="form-row form-group">
                        <div class="col-sm-4 label-column"><label class="col-form-label" for="name-input-field" style="color:white">Phone </label></div>
                        <div class="col-sm-6 input-column"><input class="form-control" type="number" name="phone"></div>
                    </div>
                    <div class="form-row form-group">
                        <div class="col-sm-4 label-column"><label class="col-form-label" for="name-input-field" style="color:white">NIC </label></div>
                        <div class="col-sm-6 input-column"><input class="form-control" type="text" name="nic"></div>
                    </div>
                    
                    <input type="hidden" name="memberCheck" value="customer">
            <button class="btn btn-primary btn-block btn-lg btn-signin" type="submit" name="submit" value="register" style="padding-top:0px;margin-top:7px;margin-left:10px;margin-right:500px">REGISTER</button>
        </form>
        </div>
        </div>
        </div>
         <div class="footer-dark">
        <footer style="padding:50px;">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-3 item">
                        <h3>Services</h3>
                        <ul>
                            <li><a href="#">New Connection</a></li>
                            <li><a href="#">Repairs</a></li>
                            <li><a href="#">FAQ</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-6 col-md-3 item">
                        <h3>About</h3>
                        <ul>
                            <li><a href="#">Company</a></li>
                            <li><a href="#">Team</a></li>
                            <li><a href="#">Careers</a></li>
                        </ul>
                    </div>
                    <div class="col-md-6 item text">
                        <h3>ABC CourseWeb</h3>
                        <p>A private company affiliated with Dish TV,TATA Docomo and Airtel to provide cable,satellite TV connections and solutions.</p>
                    </div>
                    <div class="col item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                </div>
                <p class="copyright">A K Cable Network Solutions © 2018</p>
            </div>
        </footer>
    </div>
    <div></div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/script.min.js"></script>
</body>

</html>