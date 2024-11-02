
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>eSHIKHYA-PORTAL</title>
        <link href="CSS.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="http:pure/pure-min.css">
         <!-- add icon link -->
    	<link rel="icon" href="img/tab.png" type="image/x-icon">
		<meta charset="utf-8">
		<meta content="" name="keywords">
		<meta content="" name="description">

		<!-- Favicon -->
		<link href="img/favicon.ico" rel="icon">

		<!-- Google Web Fonts -->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"rel="stylesheet">

		<!-- Icon Font Stylesheet -->
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"rel="stylesheet">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"rel="stylesheet">

		<!-- Libraries Stylesheet -->
		<link href="lib/animate/animate.min.css" rel="stylesheet">
		<link href="lib/owlcarousel/assets/owl.carousel.min.css"rel="stylesheet">

		<!-- Customized Bootstrap Stylesheet -->
		<link href="css/bootstrap.min.css" rel="stylesheet">

		<!-- Template Stylesheet -->
		<link href="css/style.css" rel="stylesheet">
    </head>
    <body>
    
    	<!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->


    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
        <a href="index.html" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <h2 class="m-0 text-primary"><i class="fa fa-book me-3"></i>eSHIKSHYA-PORTAL</h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="index.html" class="nav-item nav-link active">Home</a>
                <a href="about.html" class="nav-item nav-link">About</a>
                <a href="courses.html" class="nav-item nav-link">Courses</a>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                    <div class="dropdown-menu fade-down m-0">
                        <a href="team.html" class="dropdown-item">Our Team</a>
                        <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                        <a href="404.html" class="dropdown-item">404 Page</a>
                    </div>
                </div>
                <a href="contact.html" class="nav-item nav-link">Contact</a>
            </div>
            <a href="login.jsp" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">LOGIN HERE<i class="fa fa-arrow-right ms-3"></i></a>
        </div>
    </nav>
    <!-- Navbar End -->
    
    
    	<div class="pure-menu pure-menu-open pure-menu-horizontal nav bg-light bg-info text-black">
            <ul>
                <li><a href="adminController?action=showallinstructor" class="active">Instructor</a></li>
                <li><a href="adminController?action=showallstudent">Student</a></li>
                <li><a href="adminController?action=showcourse">Course</a></li>
                <li><a href="adminController?action=showdept">Department</a></li>
                <li><a href="login.jsp">Logout</a></li>

            </ul>
        </div>
    	
    	<!-- About Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="position-relative h-100">
                        <div style="border: solid 0px black;width:280px;height:450px;float:left;margin: auto">
                <h2>Student</h2>
                <form action="insertStuData" method="post">
                    <table>
                        <tr>
                            <td><label>Student ID :</label></td>
                            <td><input name="sid" type="text" size="25" style="height:20px;" id="user_name" class="input form-control"/></td>
                        </tr>
                        <tr>
                            <td><label>First Name :</label> </td>          
                            <td><input name="insfname" type="text"  id="user_pass" class="input form-control" value="" size="25" style="height:20px;" /></td>
                        </tr>
                        <tr>
                            <td><label>Last Name :</label></td>
                            <td><input name="inslname" type="text" size="25" style="height:20px;" id="user_name" class="input form-control"/></td>
                        </tr>
                        <tr>
                            <td><label>D.O.B :</label></td>
                            <td><input name="insdob" type="text"  id="user_pass" class="input form-control" value="" size="25" style="height: 20px;" /></td>
                        </tr>
                        <tr>
                            <td><label>Sex :</label></td>
                            <td><input name="inssex" type="text" size="25" style="height:20px;" id="user_name" class="input form-control"/></td>
                        </tr>
                        <tr>
                            <td><label>Email-id :</label></td>
                            <td><input  name="insemail" type="text"  id="user_name" class="input form-control" value="" size="25" style="height: 20px;"/></td>
                        </tr> 
                        <tr>
                            <td><label>Address :</label></td>
                            <td>  <input name="insaddress" type="text" size="25" style="height:20px;" id="user_name" class="input form-control"/></td>
                        </tr>
                        <tr>
                            <td> <label>Phone No :</label></td>
                            <td><input name="insphone" type="text"  id="user_pass" class="input form-control" value="" size="25" style="height: 20px;"></td>
                        </tr>
                        <tr>
                            <td> <label>Password :</label></td>
                            <td><input name="inspassword" type="text"  id="user_pass" class="input form-control" value="" size="25" style="height: 20px;"></td>
                        </tr>
                        <tr>
                            <td><label>Instructor ID :</label></td>
                            <td><input name="insid" type="text" size="25" style="height:20px;" id="user_name" class="input form-control"/></td>
                        </tr>
                        <tr>
                            <td> <label>Department-Id:</label></td>
                            <td><input name="insdepid" type="text"  id="user_pass" class="input form-control" value="" size="25" style="height: 20px;"></td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="Reset" class="btn btn-primary"></td>
                            <td><input type="submit" value="Submit" class="btn btn-primary" ></td>
                        </tr>
                    </table>
                </form>
            </div>
                    </div>
                </div>
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
                   <div style="border: solid 0px black;width:290px;height:450px;float:left;margin: auto">
                <h2>Instructor Details</h2>
                <form action="insertInsData" method="post">
                    <table>
                        <tr>
                            <td><label>Instructor ID :</label></td>
                            <td><input name="insid" type="text" size="25" style="height:20px;" id="user_name" class="input form-control"/></td>
                        </tr>
                        <tr>
                            <td><label>First Name :</label> </td>          
                            <td><input name="insfname" type="text"  id="user_pass" class="input form-control" value="" size="25" style="height:20px;" /></td>
                        </tr>
                        <tr>
                            <td><label>Last Name :</label></td>
                            <td><input name="inslname" type="text" size="25" style="height:20px;" id="user_name" class="input form-control"/></td>
                        </tr>
                        <tr>
                            <td><label>D.O.B :</label></td>
                            <td><input name="insdob" type="text"  id="user_pass" class="input form-control" value="" size="25" style="height: 20px;" /></td>
                        </tr>
                        <tr>
                            <td><label>Sex :</label></td>
                            <td><input name="inssex" type="text" size="25" style="height:20px;" id="user_name" class="input form-control"/></td>
                        </tr>
                        <tr>
                            <td><label>Address :</label></td>
                            <td>  <input name="insaddress" type="text" size="25" style="height:20px;" id="user_name" class="input form-control"/></td>
                        </tr>
                        <tr>
                            <td><label>Email-id :</label></td>
                            <td><input  name="insemail" type="text"  id="user_name" class="input form-control" value="" size="25" style="height: 20px;"/></td>
                        </tr> 
                        <tr>
                            <td> <label>Department-Id:</label></td>
                            <td><input name="insdepid" type="text"  id="user_pass" class="input form-control" value="" size="25" style="height: 20px;"></td>
                        </tr>
                        <tr>
                            <td> <label>Password :</label></td>
                            <td><input name="inspassword" type="text"  id="user_pass" class="input form-control" value="" size="25" style="height: 20px;"></td>
                        </tr>
                        <tr>
                            <td> <label>Phone No :</label></td>
                            <td><input name="insphone" type="text"  id="user_pass" class="input form-control" value="" size="25" style="height: 20px;"></td>
                        </tr>

                        <tr>
                            <td><input type="submit" value="Reset" class="btn btn-primary"></td>
                            <td><input type="submit" value="Submit" class="btn btn-primary" ></td>
                        </tr>
                    </table>
                </form>
            </div>
       </div>  
       <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
                  <div style="border: solid 0px black;width:280px;height:250px;float:left;margin: auto">
                <h2>Course</h2>
                <form action="insertCouData" method="post">
                			<div class="form-control">
                            <label>Course ID :</label>
                            <input name="cid" type="text" size="25" style="height:20px;" id="user_name" class="input form-control"/>
                        	</div>
                        	<div class="form-control">
                            <label>Course Title :</label>        
                            <input name="ctitle" type="text"  id="user_pass" class="input form-control" value="" size="25" style="height:20px;" />
                        	</div>
                        	<div class="form-control">
                            <label>Course Desc :</label>
                            <input name="cdesc" type="text" size="25" style="height:20px;" id="user_name" class="input form-control"/>
                        	</div>
                        	<div class="form-control">
                            <label>Course Credit :</label>
                           <input name="ccredit" type="text"  id="user_pass" class="input form-control" value="" size="25" style="height: 20px;" />
                        	</div>
                        	<div class="form-control">
                            <label>Department ID:</label>
                            <input name="depid" type="text" size="25" style="height:20px;" id="user_name" class="input form-control"/>
                            </div>
                        
                        <input type="submit" value="Reset" class="btn btn-primary">
                        <input type="submit" value="Submit" class="btn btn-primary" onclick="validateform()">
                       
                    
                </form>       
            </div> 
                   
            </div>
            <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
                  <div style="border: solid 0px black;width:240px;height:270px;float:left;margin:auto">
                <h2>Department</h2>
                <form action="insertDepData" method="post">
                    
                       <div class="form-control">
                            <label>Department ID :</label>
                            <input name="depid" class="form-control" type="text" size="25" style="height:20px;" id="user_name" class="input"/>
                        </div>
                        <div class="form-control">
                            <label>Department Name :</label>          
                            <input name="depname" type="text" class="form-control"  id="user_pass" class="input" value="" size="25" style="height:20px;" />
                        </div>
                        
                        <button type="reset" value="Reset" class="btn btn-primary">Reset</button>
                        <button type="submit" value="Submit" class="btn btn-primary" onclick="validateform()">Submit</button>
                       
                </form>
            </div>
                   
            </div>
        </div>
    </div>
    <!-- About End -->
        

        <br/>
        <br/>
        <br/>
		
       
        <!-- Footer Start -->
    <div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-3">Quick Link</h4>
                    <a class="btn btn-link" href="">About Us</a>
                    <a class="btn btn-link" href="">Contact Us</a>
                    <a class="btn btn-link" href="">Privacy Policy</a>
                    <a class="btn btn-link" href="">Terms & Condition</a>
                    <a class="btn btn-link" href="">FAQs & Help</a>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-3">Contact</h4>
                    <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>123 Street, New York, USA</p>
                    <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+012 345 67890</p>
                    <p class="mb-2"><i class="fa fa-envelope me-3"></i>info@example.com</p>
                    <div class="d-flex pt-2">
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-3">Gallery</h4>
                    <div class="row g-2 pt-2">
                        <div class="col-4">
                            <img class="img-fluid bg-light p-1" src="img/course-1.jpeg" alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light p-1" src="img/course-2.jpeg" alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light p-1" src="img/course-3.jpeg" alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light p-1" src="img/course-2.jpeg" alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light p-1" src="img/course-3.jpeg" alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light p-1" src="img/course-1.jpg" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-3">Newsletter</h4>
                    <p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
                    <div class="position-relative mx-auto" style="max-width: 400px;">
                        <input class="form-control border-0 w-100 py-3 ps-4 pe-5" type="text" placeholder="Your email">
                        <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="copyright">
                <div class="row">
                    <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                        &copy; <a class="border-bottom" href="#">Your Site Name</a>, All Right Reserved.

                        <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                        Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a>
                    </div>
                    <div class="col-md-6 text-center text-md-end">
                        <div class="footer-menu">
                            <a href="">Home</a>
                            <a href="">Cookies</a>
                            <a href="">Help</a>
                            <a href="">FQAs</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
        
    </body>
</html>
