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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bitter:400,700">
    <link rel="stylesheet" href="assets/css/styles.min.css">
</head>

<body>
    <div>
        <div class="align-content-stretch flex-nowrap header-dark" style="height:550px;">
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
                        </form><span class="navbar-text"><a href="my account.jsp" class="login">${name }</a></span><a class="btn btn-light action-button" role="button" href="index.jsp">Logout</a></div>
        </div>
        </nav>
        <div class="container hero">
            <div >
                <div class="col-md-8 offset-md-2">
                    <h1 class="text-uppercase text-center text-danger visible" style="color:rgb(45,40,102);font-family:Acme, sans-serif;">ACCOUNT SETTINGS</h1>
                </div>
            </div>
        </div>
        <div >
           <form action="UpdateServlet" action="deleteServlet" method="post" class="regForm">
		<table align="center" style="color:white;">
			<tr>
				<td style="width:200px;height:40px;background-color:dark-blue;color:rgb(150,160,200);font-size:25px;font-family:Bitter, serif;">Email:</td>
				<td style="color:gray;font-size:45;"><h4>${email}</h4></td>
				<td><input type="hidden" name="email1" value="${email}" style="width: 200px; height: 30px; border-radius: 5px; border-style: solid; border-width: 1px; background-color:gray;"></td>
			</tr>
			<tr>
				<td style="width:200px;height:40px;background-color:dark-blue;color:rgb(150,160,200);font-size:25px;font-family:Bitter, serif;">Name:</td>
				<td><input type="text" name="name1" value="${name}"
					style="width: 200px; height: 30px; border-radius: 5px; border-style: solid; border-width: 1px; background-color:gray;"></td>
			</tr>
			<tr>
				<td style="width:200px;height:40px;background-color:dark-blue;color:rgb(150,160,200);font-size:25px;font-family:Bitter, serif;">Address:</td>
				<td><input type="text" name="address1" value="${address}"style="width: 200px; height: 30px; border-radius: 5px; border-style: solid; border-width: 1px; background-color:gray;"></td>
			</tr>
			<tr>
				<td style="width:200px;height:40px;background-color:dark-blue;color:rgb(150,160,200);font-size:25px;font-family:Bitter, serif;">Phone:</td>
				<td><input type="text" name="phone1" value="${phone}"
					style="width: 200px; height: 30px; border-radius: 5px; border-style: solid; border-width: 1px; background-color:gray;"></td>
			</tr>
			<tr>
				<td style="width:200px;height:40px;background-color:dark-blue;color:rgb(150,160,200);font-size:25px;font-family:Bitter, serif;">Province:</td>
				<td><input type="text" name="province1" value="${province}"
					style="width: 200px; height: 30px; border-radius: 5px; border-style: solid; border-width: 1px; background-color:gray;"></td>
			</tr>
		<tr></tr>
		<tr>
		<td></td>
		
		
		<tr></tr>

		</table>
		<div class="container" style="padding-top:20px;"><button class="btn btn-dark btn-lg" type="submit" name="submit1" value="update">MODIFY ACCOUNT</button></div>
        <div class="container"><a class="btn btn-dark btn-lg" role="button" href="deleteAccount.jsp">DELETE ACCOUNT</a></div>
	</form>
            
           
        </div>
        
        
        <div class="container invisible"></div><i class="fa fa-star"></i>
        <div></div>
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
                            <li><a href="#">Tutorials</a></li>
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
                        <h3>ABC LEARNING INSTITUTE</h3>
                        <p>Provide valuable details on buisness, IT nad enginnering</p>
                    </div>
                    <div class="col item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                </div>
                <p class="copyright">ABC © 2019</p>
            </div>
        </footer>
    </div>
    <div></div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
</body>

</html>