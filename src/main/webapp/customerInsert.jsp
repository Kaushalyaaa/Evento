<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event Registration</title>
<link rel="stylesheet" href="customerInsert.css">
</head>
<body>
<h1>Event Planning Form</h1>
	
<form action="insert" method="post">
    <div class="form-group">
        <label for="name">Full Name:</label>
        <input type="text" id="name" name="name" required>
    </div>
    <div class="form-group">
        <label for="email">Email:</label>
        <input type="text" id="email" name="email" required>
    </div>
    <div class="form-group">
        <label for="location">Location:</label>
        <input type="text" id="location" name="location" required>
    </div>
    <div class="form-group">
        <label for="uid">User Name:</label>
        <input type="text" id="uid" name="uid" required>
    </div>
    <div class="form-group">
        <label for="pwd">Password:</label>
        <input type="password" id="pwd" name="pwd" required>
    </div>
    <div class="form-group">
        <label for="specialServices">Special Services:</label>
        <select id="specialServices" name="additionalRequirements" required>
            <option value="none">None</option>
            <option value="catering">Catering</option>
            <option value="photography">Photography</option>
            <option value="music">Music</option>
            <option value="decoration">Decoration</option>
            <option value="security">Security</option>
        </select>
    </div>
    <div class="form-group">
        <label for="date">Event Date:</label>
        <input type="date" id="date" name="date" required>
    </div>
    <div class="form-group">
        <label for="guestcount">Number of Guests:</label>
        <input type="number" id="guestcount" name="guestcount" required>
    </div>
    <div class="form-group">
        <label for="budget">Budgetary Allocation:</label>
        <input type="number" id="budget" name="budget" required>
    </div>
    <div>
        <label for="mealpreference">Meal Preference:</label>
            <input type="radio" id="veg" name="mealpreference" value="Vegetarian">
            <label for="veg">Vegetarian</label>
            <input type="radio" id="nonveg" name="mealpreference" value="Nonvegetarian">
            <label for="nonveg">Non-Vegetarian</label>
    </div>       
    <br>
    <input type="submit" name="submit" value="Create Customer">
</form>
<a href="events.jsp" class="home-btn">Home page</a>




<!-- Script validations -->
<script>

//Validate name
function validateName(name) {
  var re = /^[a-zA-Z\s]*$/;
  return re.test(name);
}

// Validate email
function validateEmail(email) {
  var re = /\S+@\S+\.\S+/;
  return re.test(email);
}

// Validate password
function validatePassword(password) {
  	return password.length >= 8;
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

  // Call the setMinDate function when the page loads
  window.onload = setMinDate;

// Validate guest count
function validateGuestCount(count) {
  	return count <= 5000;
}

function handleSubmit() {
  	var nameInput = document.getElementById('name');
  	var emailInput = document.getElementById('email');
  	var passwordInput = document.getElementById('pwd');
    var dateInput = document.getElementById('date');
  	var guestCountInput = document.getElementById('guestcount');

  	var name = nameInput.value.trim();
  	var email = emailInput.value.trim();
  	var password = passwordInput.value.trim();
  	var date = dateInput.value;
  	var guestCount = parseInt(guestCountInput.value.trim(), 10);

	if (!validateName(name)) {
   		alert('Please enter a valid name without numbers!');
    	nameInput.focus();
    	return false;
  	}
	
	if (!validateEmail(email)) {
    	alert('Please enter a valid email address!');
    	emailInput.focus();
    	return false;
  	}

  	if (!validatePassword(password)) {
    	alert('Please enter a password with at least 8 characters!');
    	passwordInput.focus();
    	return false;
 	}
  	
    if (!validateDate(date)) {
        alert('The event date cannot be in the past!');
        dateInput.focus();
        return false;
      }
  	

  	if (!validateGuestCount(guestCount)) {
    	alert('Number of guests cannot exceed 5000!');
    	guestCountInput.focus();
    	return false;
  	}

  	// If all validations are true
  	return true;
}

document.querySelector('form').addEventListener('submit', function(event) {
  if (!handleSubmit()) {
    event.preventDefault();
  }
});
</script>

</body>
</html>
