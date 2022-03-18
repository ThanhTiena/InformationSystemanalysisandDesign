<!DOCTYPE html>
<%@page import="com.modelsSRP.Booking"%>
<%@page import="java.util.List"%>
<html lang="en" dir="ltr">

<head>
<meta charset="UTF-8">
<title>Booking</title>
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
<link rel="stylesheet" href="css/homepage.css">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<link
	href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<%
Booking b = (Booking) request.getSession().getAttribute("bookingDetailsManagement");

if (b == null) {
	b = new Booking();
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
				<div>
					<section class="main-content">
						<div class="container table-container">
							<div class="row">
								<table class="table table-striped">
									<thead>
										<tr>
											<th scope="col" colspan="4" class="detail-title" id="book-id">Booking
												ID: <%=b.getBid()%></th>
										</tr>
									</thead>
									<tbody id="booking-detail-body">
										<tr>
											<td colspan="4" class="detail-title">Booking Detail:</td>
										</tr>
										<tr>
											<th>Customer Name</th>
											<td><%=b.getCustomer().getCname()%></td>
											<th>Phone Number</th>
											<td><%=b.getCustomer().getPhone()%></td>
										</tr>
										<tr>
											<th>Email</th>
											<td><%=b.getCustomer().getEmail()%></td>
											<th>Certification</th>
											<td><%=b.getCustomer().getCertificate()%></td>
										</tr>
										<tr>
											<th>Check in Date</th>
											<td><%=b.getArrivalDay()%></td>
											<th>Check out Date</th>
											<td><%=b.getLeaveDay()%></td>
										</tr>
										<tr>
											<td colspan="4" class="detail-title">Room Detail:</td>
										</tr>
										<tr>
											<th>Room Type</th>
											<td><%=b.getRoom().getRoomType()%></td>
											<th>Room Price</th>
											<td><%=b.getRoom().getRoomPrice()%></td>
										</tr>
										<tr>
											<th>Max Adult</th>
											<td><%=b.getRoom().getMaxAdult()%></td>
											<th>Max Child</th>
											<td><%=b.getRoom().getMaxChild()%></td>
										</tr>
										<tr>
											<th>Room Services</th>
											<td><%=b.getService().getsName()%></td>
											<th>Booking Date</th>
											<td><%=b.getDate()%></td>
										</tr>
										<tr>
											<th>Room Image</th>
											<td colspan="3"><img src="images/single-bed-2.jpg"
												alt="single room"></td>
										</tr>
										<tr>
											<td colspan="4" class="detail-title">Admin Remarks:</td>
										</tr>
										<tr>
											<th>Order Final Status</th>
											<td><%=!b.getStatus().equalsIgnoreCase("Pending")? b.getStatus() : "Not Yet Response"%></td>
											<th>Admin Remark</th>
											<td><%=b.getRemark().equalsIgnoreCase("remark") ? "Not Updated Yet" : b.getRemark()%></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="row">
								<div class="invoice-btn-container">
									<button class="invoice-btn" onclick="onoverlay()">Take Action</button>
								</div>
							</div>
						</div>
					</section>
				</div>
			</div>
			<div id="dark-overlay"></div>
			<div class="take-action-form" id="overlay">
				<div class="container">
					<h2>Take action</h2>
					<form action="UpdateBookingServlet" method="POST">
						<input style="display:none;" type="text" name="bid" id="bid" value="<%= b.getBid() %>"/>
						<input style="display:none;" type="text" name="cid" id="cid" value="<%= b.getCustomer().getCid() %>"/>
						<div class="form-lable-left">
							<label for="remark">Remark</label>
						</div>
						<textarea class="form-control" id="remark" name="remark" rows="3"></textarea>

						<label for="status">Status</label> <select
							class="mdb-select md-form" id="status" name="status">
							<option value="1">Approved</option>
							<option value="2">Canceled</option>
						</select>
						<div class=" take-action-button">
							<button type="button" class="btn btn-secondary"
								onclick="offoverlay()">Close</button>
							<button type="submit" class="btn btn-secondary">Update</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<style>
.take-action-form {
	background-color: lightsalmon;
	width: 440px;
	border: 1px solid black;
	border-radius: 5px;
}

.take-action-form h2 {
	text-align: center;
	padding-top: 10px;
	margin-bottom: 0px !important;
}

.take-action-form form {
	padding: 10px;
}

.take-action-form textarea {
	width: 80%;
	margin-left: 15%;
	height: 180px;
}

.form-lable-left label {
	margin-left: 10px;
}

.take-action-form label {
	margin-left: 10px;
}

#status {
	width: 120px;
}

.take-action-button {
	margin-top: 20px;
	margin-bottom: 10px;
	width: 130px;
	margin-left: auto;
	margin-right: auto;
}

.take-action-button button {
	width: 60px;
	padding-left: 5px;
	padding-right: 5px;
	border-radius: 5px;
}

#dark-overlay {
	position: fixed;
	display: none;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: #333;
	opacity: 0.6;
	z-index: 2;
	cursor: pointer;
}

#overlay {
	position: fixed;
	display: none;
	top: 200px;
	left: 650px;
	z-index: 3;
}
</style>
	</section>

	<script type="text/javascript" src="js/script.js"></script>
	<script>
		function onoverlay() {
			document.getElementById("overlay").style.display = "block";
			document.getElementById("dark-overlay").style.display = "block";
		}

		function offoverlay() {
			document.getElementById("overlay").style.display = "none";
			document.getElementById("dark-overlay").style.display = "none";
		}
	</script>

</body>

</html>