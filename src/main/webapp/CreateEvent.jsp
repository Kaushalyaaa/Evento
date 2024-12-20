<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
    <link rel="stylesheet" href="create.css">
    <title>Events Ticket Card</title>
    
    <style>
.header {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    z-index: 10000;
    background: #FFB3C6;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 1.5rem 9%;
    font-family: 'Poppins', sans-serif;
    box-shadow: 0px 2px 10px rgba(0,0,0,0.1);
}

.header .logo {
    font-weight: bolder;
    color: #000000;
    font-size: 2.5rem;
}

.header .logo img{
	width: 100px;
	height: auto;
}

    
.header .logo span {
    color: var(--main-color);
}

.header .navbar a {
    font-size: 1.7rem;
    color: #333;
    font-weight: bold;
	margin-right: 1rem;
	text-decoration: none;
	transition: color 0.3s ease;
}

.header .navbar a:last-child{
	margin-right: 0;
}

.header .navbar a:hover {
    color: var(--main-color);
}
    
    </style>

</head>
<body>
	    <header class="header">
        <a href="#" class="logo">
        	<img src="image/ls.png" alt="logo">
        	</a>
        <nav class="navbar">
            <a href="vid.jsp">Home</a>
            <a href="#service">Services</a>
            <a href="#gallery">Gallery</a>
            <a href="#about">Contact</a>
            <a href="review">Join our team</a>
            <div id="menu-bars" class="fas fa-bars"></div>
        </nav>
        <button id="addEventBtn">Add Event</button>
    </header>
	


    
    <div class="container">
        <div class="item-container">
            <div class="img-container">
                <img src="image/w8.jpg" alt="Event image" width="300" height="300">
            </div>

            <div class="body-container">
                <div class="overlay"></div>

                <div class="event-info">
                    <p class="title">Mother's Day</p>
                    <div class="separator"></div>
                    <p class="info">Empowering Mothers to Relax, Recharge, & Renew
                                      Providing Support for Raising Future Generations</p>
                    <p class="price"></p>

                    <div class="additional-info">
                        <p class="info">
                            <i class="fas fa-map-marker-alt"></i>
                            Grand Central Terminal
                        </p>
                        <p class="info">
                            <i class="far fa-calendar-alt"></i>
                            SUN, May 12, 10:00 AM EDT
                        </p>

                        <p class="info description">
                            Join us for a heart warming Mother's Day celebration filled with love, laughter, and special memories.
                   <span>more...</span>
                        </p>
                    </div>
                </div>
                <button class="action">Book </button>
            </div>
        </div>

        

        <div class="item-container">
            <div class="img-container">
                <img src="image/w9.jpg" alt="Event image"width="300" height="300">
            </div>

            <div class="body-container">
                <div class="overlay"></div>

                <div class="event-info">
                    <p class="title">The Valenties's Day</p>
                    <div class="separator"></div>
                    <p class="info"> Love makes your soul crawl out from its hiding place</p>
                    

                    <div class="additional-info">
                        <p class="info">
                            <i class="fas fa-map-marker-alt"></i>
                           123 Love Street, Cityville
                        </p>
                        <p class="info">
                            <i class="far fa-calendar-alt"></i>
                            Sat, Sep 19, 10:00 AM EDT
                        </p>

                        <p class="info description">
                            Celebrate love this Valentine's Day with a romantic dinner at our enchanting restaurant. <span>more...</span>
                        </p>
                    </div>
                </div>
                <button class="action">Book </button>
            </div>
        </div>

        <div class="item-container">
            <div class="img-container">
                <img src="image/w10.jpg" alt="Event image"width="300" height="300">
            </div>

            <div class="body-container">
                <div class="overlay"></div>

                <div class="event-info">
                    <p class="title">The Children's day</p>
                    <div class="separator"></div>
                    <p class="info">Keep your children wild-don't make them grow up too fast</p>
                    

                    <div class="additional-info">
                        <p class="info">
                            <i class="fas fa-map-marker-alt"></i>
                           Central Park, Cityville
                        </p>
                        <p class="info">
                            <i class="far fa-calendar-alt"></i>
                           Sat, June 1, 2024, 10:00 AM - 4:00 PM EDT
                        </p>

                        <p class="info description">
                           Join us for a day filled with joy and excitement as we celebrate Children's Day at Central Park <span>more...</span>
                        </p>
                    </div>
                </div>
                <button class="action">Book </button>
            </div>
        </div>

        <div class="item-container">
            <div class="img-container">
                <img src="image/w11.jpg" alt="Event image"width="300" height="300">
            </div>

            <div class="body-container">
                <div class="overlay"></div>

                <div class="event-info">
                    <p class="title">The Father's day</p>
                    <div class="separator"></div>
                    <p class="info"> To the world you are a dad to our family you are the world</p>
                    

                    <div class="additional-info">
                        <p class="info">
                            <i class="fas fa-map-marker-alt"></i>
                              Smith Family Park, Cityville
                        </p>
                        <p class="info">
                            <i class="far fa-calendar-alt"></i>
                             Sun, June 16, 2024, 12:00 PM - 5:00 PM EDT
                        </p>

                        <p class="info description">
                            Celebrate Father's Day with a sizzling BBQ bash at Smith Family Park! Join us for a day of
                    delicious food, live music, fun games, and quality time with family. <span>more...</span>
                        </p>
                    </div>
                </div>
                <button class="action">Book </button>
            </div>
        </div>
    </div>
    
    <script>
        // JavaScript code to handle button click and redirect to eventinsert.html
        document.getElementById('addEventBtn').addEventListener('click', function() {
            window.location.href = 'eventinsert.jsp'; // Redirect to eventinsert.html
        });
    </script>
</body>
</html>