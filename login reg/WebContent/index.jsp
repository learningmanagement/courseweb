<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home | ABC</title>
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
        <div class="header-dark" style="background-position:top;">
            <nav class="navbar navbar-dark navbar-expand-md navigation-clean-search">
                <div class="container"><a class="navbar-brand" href="index.jsp"></a>ABC courseWeb<button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                    <div
                        class="collapse navbar-collapse" id="navcol-1">
                        <ul class="nav navbar-nav">
                            <li class="nav-item" role="presentation"><a class="nav-link active" href="index.jsp">Home</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link" href="contactUS.jsp">Contact us</a></li>
                            <li class="dropdown"><a class="dropdown-toggle nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">More</a>
                                <div class="dropdown-menu" role="menu"><a class="dropdown-item" role="presentation" href="#">Services</a><a class="dropdown-item" role="presentation" href="#">Experience</a><a class="dropdown-item" role="presentation" href="#">Technicians</a></div>
                            </li>
                        </ul>
                        <form class="form-inline mr-auto" target="_self">
                            <div style="width:120px;" class="form-group"><label for="search-field"><i class="fa fa-search"></i></label><input class="form-control search-field" type="search" name="search" id="search-field"></div>
                        </form>
                        
                        <%
                        System.out.println(session.getAttribute("member"));
                        String  un  = (String) session.getAttribute("username");
                            		System.out.println("username:"+un);
                        if(un!=null){
                        	%>
                        		<span class="navbar-text">Welcome, <%=un%> <a href="<%=request.getContextPath()%>/LogoutServlet" class="navbar-text"> (Logout) </a></span>
                        		<span class="navbar-text"><a href="<%=request.getContextPath()%>/AccountRedirServlet?member=<%=session.getAttribute("member") %>" class="navbar-text">| MyAccount</a></span>
                        		
                        	<% 
                        	
                        }else{
                        	%>
                        		<span class="navbar-text"><a href="login.jsp" class="login">Log In</a></span>
                        		<a class="btn btn-light action-button" role="button" href="register.jsp" data-bs-hover-animate="pulse">Sign Up</a>
                        	<% 
                        }
                        %> </div>
        </div>
        </nav>
        <%
        	String messageSet = (String) session.getAttribute("message");
        	if(messageSet != null){
        		%>
        		<marquee style="color:white"><%=messageSet %></marquee>
        		<%
        	}
        %>
       
        <div class="container hero">
            <div class="row no-gutters">
                <div class="col">
                    <div class="carousel slide" data-ride="carousel" id="carousel-1">
                        <div class="carousel-inner" role="listbox">
                            <div class="carousel-item active"><img class="w-100 d-block" src="assets/img/69a03288c37cd08b02e194788f5c0e47.jpg" alt="Slide Image"></div>
                            <div class="carousel-item"><img class="w-100 d-block" src="assets/img/banner.png" alt="Slide Image"></div>
                            <div class="carousel-item"><img class="w-100 d-block" src="assets/img/satellite-wallpapers.jpg"></div>
                        </div>
                        <div><a class="carousel-control-prev" href="#carousel-1" role="button" data-slide="prev"><span class="carousel-control-prev-icon"></span><span class="sr-only">Previous</span></a><a class="carousel-control-next" href="#carousel-1" role="button"
                                data-slide="next"><span class="carousel-control-next-icon"></span><span class="sr-only">Next</span></a></div>
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-1" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-1" data-slide-to="1"></li>
                            <li data-target="#carousel-1" data-slide-to="2"></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <div class="article-list">
        <div class="container-fluid" style="background-image:url(&quot;assets/img/mountain_bg.jpg&quot;);background-position:bottom;">
            <div class="intro">
                <p class="text-center" style="color:rgb(255,255,255);">ABC(PVT) Ltd. provides a vast number of services to students along with maintainence and repairements.</p>
            </div>
            <div class="row articles">
                <div class="col-sm-6 col-md-4 item"><a href="#"><img class="img-fluid" src="assets/img/front-star-track-fta-remote.jpg" style="height:215px;"></a>
                    <h3 class="name">Article Title</h3>
                    <p class="description" style="color:rgb(255,255,255);">The ABC Faculty of computing is equipped with a range of courses specializing in various arms of the IT sector.</p><a href="#" class="action"><i class="fa fa-arrow-circle-right"></i></a></div>
                <div class="col-sm-6 col-md-4 item"><a href="#"><img class="img-fluid" src="assets/img/517b12e8d310a.image.jpg" style="height:215px;"></a>
                    <h3 class="name">Article Title</h3>
                    <p class="description" style="color:rgb(255,255,255);">The faculty of buisness within SLIIT continues to rise up to the challenge of hurturing leaders, managers and IS professional that can make decisions and implement actions that are right for themselves. </p><a href="#" class="action"><i class="fa fa-arrow-circle-right"></i></a></div>
                <div
                    class="col-sm-6 col-md-4 item"><a href="#"><img class="img-fluid" src="assets/img/rv-satellite-tv-service-1.jpg" style="height:215px;"></a>
                    <h3 class="name">Article Title</h3>
                    <p class="description" style="color:rgb(255,255,255);">The faculty of Engineering of SL institute of engineering education, research , knowledge creation and distribution in SL.</p><a href="#" class="action"><i class="fa fa-arrow-circle-right"></i></a></div>
        </div>
    </div>
    </div>
    <div class="article-list"></div>
    <div class="footer-dark">
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-3 item">
                        <h3>Services</h3>
                        <ul>
                            <li><a href="#">New faculties</a></li>
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
                        <h3>ABC(pvt) ltd.</h3>
                        <p>A private company affiliated with all educational facilities.</p>
                    </div>
                    <div class="col item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                </div>
                <p class="copyright">ABC pvt Ltd© 2019</p>
            </div>
        </footer>
    </div>
    <div class="article-list"></div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-animation.js"></script>
</body>

</html>