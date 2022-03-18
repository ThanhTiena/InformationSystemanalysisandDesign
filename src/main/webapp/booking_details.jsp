<%@page import="com.modelsSRP.Booking"%>
<%@ include file="html.jsp"%>
<%
Booking b = (Booking) request.getSession().getAttribute("bookingDetails");
%>
<body>
	<%@ include file="header.jsp"%>
	<main>
		<section class="main-content">
			<div class="main-booking-title">
				<h1>BOOKING DETAIL</h1>
			</div>
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
								<td><%=!b.getStatus().equalsIgnoreCase("Pending") ? b.getStatus() : "Not Yet Response"%></td>
								<th>Admin Remark</th>
								<td><%=b.getRemark().equalsIgnoreCase("remark") ? "Not Updated Yet" : b.getRemark()%></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="row">
					<div class="invoice-btn-container">
						<button class="invoice-btn" onclick="invoiceAlert()">Invoice</button>
						<button class="invoice-btn" onclick="generateBill()">Get
							Bill</button>
					</div>
				</div>
			</div>
		</section>
		<div class="row">
			<div style="display: none;">
				<form action="InvoiceServlet" id="invoice-form">
					<input id="invoice-room-id" type="text" name="invoice"
						value="<%=b.getBid()%>">
				</form>
			</div>
			<div style="display: none;">
				<form action="MakePaymentServlet" id="payment-form">
					<input id="payment-room-id" type="text" name="bid"
						value="<%=b.getBid()%>">
				</form>
			</div>
		</div>
	</main>

	<%@ include file="footer.jsp"%>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>
	<script type="text/javascript">
		function invoiceAlert() {
			let confirm = window.confirm("Are you sure to invoice booking?");
			if (confirm) {
				alert("Booking canceled!");
				document.getElementById('invoice-form').submit();
			} else {
				alert("Invoicing canceled!");
			}
		};
		function generateBill() {
			document.getElementById('payment-form').submit();
		}
	</script>
</body>

</html>