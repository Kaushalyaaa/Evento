<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Form</title>
    <link rel="stylesheet" href="eventinsert.css" />
    <style> body{background-image: url('image/img5.jpg');background-size:cover;background-repeat:no-repeat;background-position:center center;}

     </style>
    <script>
        function validateForm() {
            var password = document.getElementById("psw").value;
            var name = document.getElementById("name").value;
            var dateInput = document.getElementById('date');
            var time = document.getElementById("time").value;
            var location = document.getElementById("location").value;
            var theme = document.getElementById("theme").value;
            var noOfAttendee = document.getElementById("noOfAttendee").value;
            var uid = document.getElementById("uid").value;
            
            // Check if any field is empty
            if (password === "" || name === "" || date === "" || time === "" || location === "" || theme === "" || noOfAttendee === "" || uid === "") {
                alert("Please fill in all fields.");
                return false;
            }

            // Password validation
            if (password.length < 4) {
                alert("Password must be at least 4 characters long.");
                return false;
            }
            
           // Set the minimum date to today's date
            function setMinDate() {
              var today = new Date().toISOString().split('T')[0];
              document.getElementById('date').setAttribute('min', today);
            }

            // Call the setMinDate function when the page loads
            window.onload = setMinDate;

            // Validate date
            function validateDate(date) {
              var today = new Date().toISOString().split('T')[0];
              return date >= today;
            }

            return true; // Submit the form if all validations pass
        }

        // Function to get query parameters from the URL
        function getQueryParams() {
            var params = {};
            var queryString = window.location.search.slice(1);
            var pairs = queryString.split('&');
            pairs.forEach(function(pair) {
                var keyValue = pair.split('=');
                params[keyValue[0]] = decodeURIComponent(keyValue[1] || '');
            });
            return params;
        }

        // Function to set form values based on query parameters
        function setFormValues() {
            var params = getQueryParams();
            document.getElementById('name').value = params['name'] || '';
            document.getElementById('date').value = params['date'] || '';
            document.getElementById('time').value = params['time'] || '';
            document.getElementById('location').value = params['location'] || '';
            document.getElementById('theme').value = params['theme'] || '';
            document.getElementById('noOfAttendee').value = params['noOfAttendee'] || '';
            document.getElementById('uid').value = params['uid'] || '';
            document.getElementById('psw').value = params['psw'] || '';
        }

        // Set form values when the page loads
        window.onload = setFormValues;
    </script>
</head>
<body>

    <div class="container">
        <form action="Einsert" method="post" onsubmit="return validateForm()">
            <label for="name">Event Name:</label>
            <input type="text" id="name" name="name">

            <label for="date">Event Date:</label>
            <input type="date" id="date" name="date">

            <label for="time">Event Time:</label>
            <input type="time" id="time" name="time">

            <label for="location">Event Location:</label>
            <input type="text" id="location" name="location">

            <label for="theme">Event Theme:</label>
            <input type="text" id="theme" name="theme">

            <label for="noOfAttendee">Event No of Attendee:</label>
            <input type="text" id="noOfAttendee" name="noOfAttendee">

            <label for="uid">User Name:</label>
            <input type="text" id="uid" name="uid">

            <label for="psw">Password:</label>
            <input type="password" id="psw" name="psw">
           
           

            <input type="submit" name="submit" value="Create Event">
        </form>
    </div>
      <button id="back">back </button>
         <script>
        // JavaScript code to handle button click and redirect to eventinsert.html
        document.getElementById('back').addEventListener('click', function() {
            window.location.href = 'CreateEvent.jsp'; // Redirect to eventinsert.html
        });
    </script>
</body>
</html>