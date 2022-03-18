<!DOCTYPE html>
<%@page import="com.dao.DAOBooking"%>
<%@page import="com.modelsSRP.Booking"%>
<%@page import="java.util.List"%>
<html lang="en" dir="ltr">

<head>
<meta charset="UTF-8">
<title>Booking</title>
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
<link rel="stylesheet" href="css/homepage.css">
<link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<%
List<Integer> list = (List<Integer>) request.getSession().getAttribute("ListBookingManagement");
DAOBooking dao = new DAOBooking();
if (list == null) {
	request.getRequestDispatcher("manager_login.jsp").forward(request, response);
}
int i = 1;
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
			<li class="log_out"><a href="LogoutServlet"> <i
					class='bx bx-log-out'></i> <span class="links_name">Log out</span>
			</a></li>
		</ul>
	</div>
	<section class="home-section">
		<nav class="narbar">
			<div class="sidebar-button">
				<i class='bx bx-menu sidebarBtn'></i> <span class="booking">Booking</span>
			</div>
			<div class="search-box">
				<input type="text" placeholder="Search..."> <i
					class='bx bx-search'></i>
			</div>
			<div class="profile-details"></div>
		</nav>

		<div class="booking-content">
			<h2 class="mb-5">Paradise Hotel System</h2>
			<div class="booking-form-check">
				<div class="container">
					<div class="table-responsive">
						<table class="table table-striped custom-table" id="cus-table">
							<thead>
								<tr>
									<th scope="col" style="padding-right: 20px;">S.No</th>
									<th scope="col">Booking Number</th>
									<th scope="col">Name</th>
									<th scope="col">Email</th>
									<th scope="col">Mobile Number</th>
									<th scope="col">Booking Date</th>
									<th scope="col">Status</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<%
								for (int temp : list) {
									Booking b = dao.getEachBooking(temp);
								%>
								<tr scope="row">
									<td><%=i%></td>
									<td><%=b.getBid()%></td>
									<td><%=b.getCustomer().getCname()%></td>
									<td><%=b.getCustomer().getEmail()%></td>
									<td><%=b.getCustomer().getPhone()%></td>
									<td><%=b.getDate()%></td>
									<td><%=b.getStatus()%></td>
									<td><span class="more"><a
											href="BookingDetailsManagerServlet?bid=<%=b.getBid()%>&uid=<%=b.getCustomer().getCid()%>">Details</a></span></td>
								</tr>
								<%
								i++;
								}
								%>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script type="text/javascript" src="js/script.js"></script>
</body>

</html>