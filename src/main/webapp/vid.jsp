<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Evento homepage</title>
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
   <!-- Font Awesome CDN link --> 
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"> <!-- Custom CSS file link --> 
   <link rel="stylesheet" href="/path/to/vid.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/vid.css">
</head>

<body>

	<!-- header section starts -->
    <header class="header">
        <a href="" class="logo">
        	<img src="image/ls.png" alt="Evento logo">
        </a>
        <nav class="navbar">
        	<div class="right-links">
            	<a href="vid.jsp">Home</a>
            	<a href="#service">Service</a>
           		<a href="events.jsp" class="gallery">Gallery</a>
            	<a href="Adminlogin.jsp">Admin Login</a>
            	<a href="login.jsp">Staff Login</a>
            	<a href="createCustomer.jsp">Join Our Team</a>
            </div>
            <div id="menu-bars" class="fas fa-bars"></div>
        </nav>
    </header>
    <!-- header ends here -->

	<div class="hero">
		<video autoplay loop muted plays-inline class="back-video">
			<source src="image/wedding3.mp4" type="video/mp4">
		</video>
				
		<div class="content">
			<h1>Evento</h1>
			<h2>"Designing dreams,delivering perfection"</h2>
		</div>
	</div>
	

   <!--service section starts-->
    <section class="service" id="service">
        <h1 class="heading"><span> Our Services</span></h1>
        <div class="box-container">
            <div class="box">
                <i class="fas fa-map-marker-alt"></i>
                <h3>Venue Selection</h3>
                <p>Choose the perfect venue for your special event.</p>
            </div>

            <div class="box">
                <i class="fas fa-envelope"></i>
                <h3>Invitations</h3>
                <p>Elegant invitations for every special cccassion.</p>
            </div>

            <div class="box">
                <i class="fas fa-music"></i>
                <h3>entertainment</h3>
                <p>Unleashing fun,top notch entertainment.</p>
            </div>

            <div class="box">
                <i class="fas fa-utensils"></i>
                <h3>food and drinks</h3>
                <p>Delicious food and refreshing drinks for every event.</p>
            </div>

            <div class="box">
                <i class="fas fa-photo-video"></i>
                <h3>photos and video</h3>
                <p>Capture memories with professional photos and videos.</p>
            </div>

            <div class="box">
                <i class="fas fa-birthday-cake"></i>
                <h3>custom menu</h3>
                <p>Craft your perfect meal with our custom menus.</p>
            </div>
           
        
        </div>
    </section>
    <!--service section end-->
    <!-- home section starts -->
    <section class="home" id="home">
    <div class="content">
    	<h2>Wedding Vibes</h2>
    </div>
        <div class="swiper-container home-slider">
            <div class="swiper-wrapper">
                <div class="swiper-slide"><img src="image/w1.jpg" alt="" width="400" height="700"></div>
                <div class="swiper-slide"><img src="image/w2.avif" alt="" width="400" height="700"></div>
                <div class="swiper-slide"><img src="image/w3.jpg" alt="" width="400" height="700"></div>
                <div class="swiper-slide"><img src="image/w4.jpg" alt="" width="400" height="700"></div>
                <div class="swiper-slide"><img src="image/w5.jpg" alt="" width="400" height="700"></div>
                <div class="swiper-slide"><img src="image/w7.jpg" alt="" width="400" height="700"></div>
            </div>
        </div>
    </section>
    <!--home section ends-->

    <!--about section start-->
    <section class="wedding-planner">
    	<div class="wedheader">
    		<h1>"Your Vision, Our Expertise Unforgettable Events Await!"</h1>
    		<h2>We bring your vision to vibrant life!</h2>
    	</div>
    	<div class="headcontent">
    		<p>Welcome to Evento, the ultimate event management system designed to turn your ideas into unforgettable experiences! Whether you're organizing a grand conference, an intimate wedding, or a bustling trade show, Evento is your one-stop solution for seamless planning and flawless execution.</p>
    	</div>
    	
    	<div class="images">
    		<img src="image/bride1.jpg" alt="Bride 1">
    		<img src="image/couple1.jpg" alt="Couple 1">
    		<img src="image/couple.jpg" alt="Couple 2">
    	</div>
    </section>
    
	<footer>
    <div class="footercontainer">
        <div class="socialIcons"> 
            <a href=""><i class="fa-brands fa-facebook"></i></a>
            <a href=""><i class="fa-brands fa-instagram"></i></a>
            <a href=""><i class="fa-brands fa-twitter"></i></a>
            <a href=""><i class="fa-brands fa-youtube"></i></a>
        </div>
        <div class="footerNav">
         <ul>
            <li><a href="">Home</a></li>
            <li><a href="">Services</a></li>
            <li><a href="">Gallery</a></li>
            <li><a href="">Contact</a></li>
            <li><a href="">Our team</a></li>
        </ul>
    	</div>
    </div>
    	<div class="footerBottom">
        	<p>Copyright &copy;2024; Evento website.<span class="designer">All rights reserved</span></p>
    	</div>
	</footer>
    
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script>
    var swiper = new Swiper(".home-slider", {
        effect: "coverflow",
        grabCursor: true,
        centeredSlides: true,
        slidesPerView: "auto",
        coverflowEffect: {
            rotate: 0,
            stretch: 0,
            depth: 100,
            modifier: 2,
            slideShadows: true,
        },
        loop:true,
        autoplay:{
            delay:3000,
            disableOnInteraction:false,
        }
    });
    
    </script>
</body>
</html>
