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
			<li><a href="ManagerBookingList"> <i class='bx bxs-book-alt'></i>
					<span class="links_name">Booking</span>
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
			<div class="profile-details"
				style="color: #2697FF; background: #F5F6FA; border: 2px solid #EFEEF1; border-radius: 6px; padding: 0 15px 0 2px;">
				<p style="margin-left: auto; margin-right: auto;">
					Hello,
					<%=user.getUserName()%></p>
			</div>
		</nav>
		<div class="home-content">
			<div class="about" id="about-id">
				<div class="container" style="width: 50%; padding-left: 5%;">
					<img src="./images/introduction.jpg" alt="about" loading="lazy">
				</div>
			</div>
		</div>
	</section>
	<script type="text/javascript" src="js/script.js"></script>
</body>

</html>