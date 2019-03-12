<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | A K Cable Network Solutions</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Aclonica">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Actor">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alegreya+Sans+SC">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bitter:400,700">
    <link rel="stylesheet" href="assets/css/Article-List.css">
    <link rel="stylesheet" href="assets/css/Footer-Dark.css">
    <link rel="stylesheet" href="assets/css/Google-Style-Login.css">
    <link rel="stylesheet" href="assets/css/Header-Dark.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="assets/css/MUSA_panel-table.css">
    <link rel="stylesheet" href="assets/css/MUSA_panel-table1.css">
    <link rel="stylesheet" href="assets/css/Pretty-Registration-Form.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
    <div>
        <div class="header-dark" style="height:715px;">
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
                            <div style="width:120px;" class="form-group"><label for="search-field"><i class="fa fa-search"></i></label><input class="form-control search-field" type="search" name="search" id="search-field"></div>
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
        <div><h6>${message3}</h6></div>
        <div><h6>${message2}</h6></div>
        <div><h6>${message4}</h6></div>
        <div><h6>${message }</h6></div>
        <div><h6>${message5}</h6></div>
        </nav>
        <div class="login-card" style="margin-top:112px;"><img src="assets/img/avatar_2x.png" class="profile-img-card">
            <p class="profile-name-card"> </p>
            <form action="LoginRegister" method="post" class="form-signin"><span class="reauth-email"> </span>
            <input name="uname" class="form-control" type="text" required="required" placeholder="Email address"  >
            <input name="passwd" class="form-control" type="password" required="required" placeholder="Password" >
                <input
                    class="form-control-plaintext" type="text" value="I am :"  style="height:20px;" disabled>
                    <div class="container d-flex" style="margin-top:-9px;">
                        <div class="form-check" style="width:95px;"><input class="form-check-input" type="radio" name="memberCheck" value="customer" checked="checked" id="formCheck-2" style="padding-left:0px;margin-left:-16px;"><label class="form-check-label d-inline-flex" for="formCheck-2" style="width:90px;padding-left:7px;">a Student</label></div>
                        <div
                            class="form-check" style="width:115px;padding-left:64px;"><input class="form-check-input" type="radio" name="memberCheck" value="employee" id="formCheck-1"><label class="form-check-label" for="formCheck-1" style="margin-top:0px;margin-left:-1px;width:105px;margin-bottom:-16px;padding-top:-2px;">A lecture</label></div>
        </div>
        <div class="checkbox">
            <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-3"></div>
        </div><button class="btn btn-primary btn-block btn-lg btn-signin" type="submit" name="submit" value="login" style="padding-top:0px;margin-top:7px;">Sign in</button>
        </form>
        <a href="contactUS.jsp" class="forgot-password" style="margin-top:9px;">Forgot your password?</a>
        <%
        try{
        String msg = (String) request.getAttribute("messagefail");
        if(msg != null){
        	%>
        <div class="alert alert-danger">
  		${messagefail}
		</div>
        	<%
        	} 
        }catch(NullPointerException e){
        	
        }
        
        %>
        </div>
    </div>
    </div>
    <div class="footer-dark">
        <footer>
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
                        <h3>A K Cable Network Solution</h3>
                        <p>A private company affiliated with Dish TV, TATA Docomo and Airtel to provide cable, satllite TV connections and solutions.<br><br></p>
                    </div>
                    <div class="col item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                </div>
                <p class="copyright"><br>A K Cable Network Solutions © 2018<br></p>
            </div>
        </footer>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-animation.js"></script>
</body>

</html>