<%@page import="com.modelsSRP.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
<meta charset="UTF-8">
<title>Home</title>
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
<link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/homepage.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<%
User user = (User) request.getSession().getAttribute("manager");
if (user == null) {
	request.getRequestDispatcher("manager_login.jsp").forward(request, response);
}
%>
<body>
	<div class="sidebar">
		<div class="logo-details">
			<i class='bx bxl-product-hunt'></i> <span class="logo_name">Paradise
				Hotel</span>
		</div>
		<ul class="nav-links">
			<li><a href="homepage_manager.jsp" class="active"> <i
					class='bx bx-grid-alt'></i> <span class="links_name">Home</span>
			</a></li>
			<li><a href="#"> <i class='bx bx-calendar'></i> <span
					class="links_name">Room Category</span>
			</a></li>
			<li><a href="#"> <i class='bx bx-building-house'></i> <span
					class="links_name">Facility</span>
			</a></li>
			<li><a href="#"> <i class='bx bx-pencil'></i> <span
					class="links_name">New Room</span>
			</a></li>
			<li><a href="ManagerBookingList"> <i class='bx bxs-book-alt'></i> <span
					class="links_name">Booking</span>
			</a></li>
			<li><a href="#"> <i class='bx bx-user'></i> <span
					class="links_name">Users</span>
			</a></li>
			<li><a href="#"> <i class='bx bx-book-content'></i><span
					class="links_name">Enquiry</span>
			</a></li>
			<li><a href="#"> <i class='bx bxs-report'></i> <span
					class="links_name">Reports</span>
			</a></li>
			<li class="log_out"><a href="LogoutServlet"
				onclick="clearCookie()"> <i class='bx bx-log-out'></i> <span
					class="links_name">Log out</span>
			</a></li>
		</ul>
	</div>
	<section class="home-section">
		<nav class="narbar">
			<div class="sidebar-button">
				<i class='bx bx-menu sidebarBtn'></i> <span class="dashboard">Home</span>
			</div>
			<div class="search-box">
				<input type="text" placeholder="Search..."> <i
					class='bx bx-search'></i>
			</div>
			<div class="profile-details">Hello, <%= user.getUserName() %></div>
		</nav>
		<div class="home-content">
			<div class="about" id="about-id">
				<div class="container" style="width: 50%;">
					<img src="./images/introduction.jpg" alt="about" loading="lazy">
					<div class="about-content">
						<h1>Welcome to Paradise Hotel</h1>
						<p>Paradise Hotel is a leading 5-star international standard
							hotel located right in the busy business, shopping, commercial
							and entertainment center of Ho Chi Minh City and just away from
							Tan Son Nhat International Airport about 8 km by road. Paradise
							Hotel provides luxurious services and ensures the professionalism
							of its staff. Popular services that are loved at the hotel
							include: swimming pool, restaurant,...</p>
						<p>Besides, the hotel also provides car rental service,
							airport shuttle and 24/7 service. We are committed to satisfying
							all guests who come to our hotel and provide many special offers
							for their next arrivals.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script type="text/javascript" src="js/script.js"></script>
</body>

</html>