<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
    <link rel="stylesheet" href="./style.css">
    <title>Evento's Magic</title>
    <style>
    * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Montserrat', sans-serif;
}

body {
    background-color: #ffe5ec;
    color: #fff;
    width: 100%;
    min-height: 100vh;
    padding: 32px;
    font-size: 14px;
}

h1.title {
    color: #000;
    margin-bottom: 24px;
    text-transform: uppercase;
    font-size: 1.5em;
    letter-spacing: 2px;
}

.list-container {
    width: 100%;
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
    grid-gap: 2em;
}

.photo-item {
    position: relative;
    overflow: hidden;
    background: #2a7995;
    text-align: center;
    cursor: pointer;
}

.photo-item img {
    display: block;
    min-height: 100%;
    max-width: 100%;
    opacity: 0.9;
    transition: opacity 0.3s;
}

figcaption {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;

    display: grid;
    grid-template-rows: 1fr auto;
    align-items: center;

    /* figure hover behaviour */
    opacity: 0;
    transform: translateY(65px);
    transition: transform linear 0.3s, opacity linear 0.3s;
}

.photo-item:hover figcaption {
    transform: translateY(0);
    opacity: 1;
}

.photo-item:hover img {
    opacity: 0.6;
}

.base {
    width: 100%;
    background-color: #fff;
    color: #2f3746;
    padding: 16px;
    display: flex;
    justify-content: space-between;
}

.base p {
    font-size: 1.4em;
    text-transform: uppercase;
    letter-spacing: 1px;
}

.base p span {
    font-weight: bold;
}

.social-links {
    display: flex;
    align-items: center;
}

.social-links a {
    color: #2f3746;
    font-size: 1.7em;
    margin-left: 12px;
    transform: translateY(10px);
}

.photo-item:hover .social-links a {
    animation: liftUp linear 0.3s forwards;
    animation-delay: 0.3s;
}

.photo-item:hover .social-links a:nth-child(2) {
    animation-delay: 0.4s;
}
.photo-item:hover .social-links a:nth-child(3) {
    animation-delay: 0.5s;
}
.event-description {
        font-size: 0.9em;
        margin-top: 10px;
        color: rgba(255, 255, 255, 0.7);
    }

.register-button {
        background-color: #ed6c9c;
        color: white;
        padding: 8px 16px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s;
        text-decoration: none;
    }
.register-button:hover {
        background-color: #ea428b;
    }
@keyframes liftUp {
    form {
        transform: translateY(10px);
    }
    to {
        transform: translateY(0px);
    }
}

    </style>
</head>
<body>
	
    <!-- body starts  here -->
    <h1 class="title">Evento's Magic</h1>
    
    <div class="list-container">
        <figure class="photo-item">
            <img src="image/wed1.jpg" alt="Place image" width="400" height="300">
            <figcaption>
                <div class="description">
                    <p>Weddings</p>
                    <p class="event-description"></p>
                </div>
                <div class="base">
                	<p><span>Weddings</span></p>
                    <a href="customerInsert.jsp" class="register-button">Register</a>
                </div>
            </figcaption>  
        </figure>

        <figure class="photo-item">
            <img src="image/w5.jpg" alt="Place image" width="400" height="300">
            <figcaption>
                <div class="description">
                    <p>Birthday Party</p>
                </div>
                <div class="base">
                    <p><span>Birthday Party</span></p>
                    <a href="customerInsert.jsp" class="register-button">Register</a>
                </div>
            </figcaption>  

        </figure>

        <figure class="photo-item">
            <img src="image/w6.jpg" alt="Place image" width="400" height="300">
            <figcaption>
                <div class="description">
                    <p><span>Conferences</span></p>
                </div>
                <div class="base">
                    <p><span>Conferences</span></p>
                    <a href="customerInsert.jsp" class="register-button">Register</a>
                </div>
            </figcaption>  

        </figure>

        <figure class="photo-item">
            <img src="image/w4.jpg" alt="Place image" width="400" height="300">
            <figcaption>
                <div class="description">
                    <p>Bridal Shower</p>
                </div>
            	<div class="base">
                    <p><span>Bridal Shower</span></p>
                    <a href="customerInsert.jsp" class="register-button">Register</a>
                </div>
            </figcaption>  

        </figure>
        
       <figure class="photo-item">
            <img src="image/wed3.png" alt="Place image" width="400" height="300">
            <figcaption>
                <div class="description">
                    <p>Post-wedding Reception</p>
                </div>
                <div class="base">
                    <p><span>Post-wedding Reception</span></p>
                    <a href="customerInsert.jsp" class="register-button">Register</a>
                </div>
            </figcaption>  

        </figure>

        <figure class="photo-item">
            <img src="image/bday.jpg" alt="Place image" width="400" height="100">
            <figcaption>
                <div class="description">
                    <p>Farewell Brunch</p>
                </div>
               <div class="base">
                    <p><span>Farewell Brunch</span></p>
                    <a href="customerInsert.jsp" class="register-button">Register</a>
                </div>
            </figcaption>  

        </figure>
    </div>
    

</body>
</html>
