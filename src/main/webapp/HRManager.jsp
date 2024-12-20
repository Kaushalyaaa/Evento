<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HR Panel</title>
<link rel = "stylesheet" href="HRdash.css">
<script>
function redirectToStaffing (){
	window.location.href="staffing.jsp"
}
</script>
</head>

<body>

<div class = "side-menu">
		<div class = "HR-Dashboard">
		<h1> Evento</h1>
		</div>
	<ul>
		<li> Dashboard  </li>
		<li>Events </li>
		<li> Exhibitors </li>
		<li> Employees </li>
		<li> Clients </li>
		<li> Work Allocation </li>
		<li> Settings </li>
	</ul>
	</div>
<div class="rectangle">
	<div class="search-container">
	<input type= "text" class="search-input" placeholder="Search..">
	<button class = "search button">Search</button>
	</div>
	<button class="submit" onclick = "redirectToStaffing ()">Assign Employees </button>
 <span class="icon user-icon">&#128100;</span> <!-- Referred By Google -->
 <span class="icon notification-icon">&#128276;</span> <!-- Referred By Google -->
</div>

<div class="card-container">
	<div class ="card">
	<h2>Wedding</h2>
	<p> Date : June 12,2024 </p>
	<p> Location: Kingsbury </p>
	</div>
	
	<div class ="card">
	<h2>Birthday</h2>
	<p> Date : May 28,2024 </p>
	<p> Location:Marino Beach </p>
	</div>

	<div class ="card">
	<h2>Mother's day</h2>
	<p> Date : May 12,2024 </p>
	<p> Location: Galle Face </p>
	</div>
</div>

<div class="card2">
	<div class="card-content">
	<h2>Employee Count</h2>
		<div class="employee-count">
			<span class= "count">250</span>
			<span class="description">Employees</span>
		</div>
	</div>
	
	<div class="card4">
	<h2>Clients</h2>
	<p>Total Clients : 50 Clients </p>
	<p> Existing Clients : 25 Clients </p>
	<p> New Clients : 25 Clients </p>
	</div>	 
	
	<div class="card5">
	<h2>Exhibitors</h2>
	<p>Photographer : Getty Images /Chase Jarvis Studios </p>
	<p> Cosmetics :  MAC Cosmetics/ Makeup Forever </p>
	<p> Accessories : Louis Vuitton/ Michael Kors </p>
	<p> Costume : Costume SuperCenter / Costume Express </p>
	<p> Caterer : Levy Restaurants / Dushi Catering </p>
	<p> Decorations : Event Direct Decor / Luna Bazaar</p>
	</div>	 
	
		<div class="card6">
	<h2>Work Allocation for upcoming events</h2>
	<h3> Planning for Wedding </h3>
			<p>Customer Requirements : Photography,Catering,Technical,Security and Decoration </p>
			<p>Photographer : Ave</p>
                    <p> Catering : James  </p>
                    <p> Decoration : William  </p>
                    <p>  Security: Tom</p>
                    <p> Technical: Sam </p>
                    <p> Additional Employees : Yes  </p>
                    <p> Salary Range:2500.00</p>
                    <p>Extra Notes : Heavy Decorations </p>
	</div>

</div>

<div class="main-content">
            <h1> for Events</h1>
            <div class="packages-container">
                <div class="card3">
                    <h2>1.Wedding</h2>
                    <h3>Customer Requiremnets and Incharges</h3>
                     <p>Not Required </p>
                    <p> 1. Photographer :Ann  </p>
                    <p> 2. Catering : James  </p>
                    <p> 3.Decoration : Ava  </p>
                    <p> 4. Security: Sara </p>
                    <p> 5. Technical: Olivia  </p>
                    <p> 6. Additional Employees : Yes  </p>
                    <p> Salary Range: 7000.00</p>
                    <p>Extra Notes : Simple Elegant Decorations </p>
                    <p>Username: Harshu</p>
                    <p>Password:H123</p>
                 
                </div>
                <div class="card3">
                <h2>2.Birthday</h2>
                    <h3>Customer Requiremnets and Incharges</h3>
                     <p>Not Required </p>
                    <p> 1. Photographer : Simson</p>
                    <p> 2. Catering : James  </p>
                    <p> 3.Decoration : William  </p>
                    <p> 4. Security: N/R</p>
                    <p> 5. Technical: Sam </p>
                    <p> 6. Additional Employees : Yes  </p>
                    <p> Salary Range: 800.00</p>
                    <p>Extra Notes : Heavy Decorations </p>
                    <p>Username: Shalini</p>
                    <p>Password:S123</p>
                 
                    
                    
                </div>
                <div class="card3">
                    <h2>2.Business Meeting</h2>
                    <h3>Customer Requiremnets and Incharges</h3>
                    <p>Not Required </p>
                    <p> 1. Photographer :N/R  </p>
                    <p> 2. Catering : N/R  </p>
                    <p> 3.Decoration : John </p>
                    <p> 4. Security: N/R </p>
                    <p> 5. Technical: Nisha </p>
                    <p> 6. Additional Employees: Yes  </p>
                    <p> Salary Range: 1000.00</p>
                    <p>Extra Notes : Heavy Decorations </p>
                    <p>Username: Peter</p>
                    <p>Password:P123</p>
                    
                </div>
            </div>
            </div>
            
</body>
</html>