<%@page import="com.modelsSRP.Booking"%>
<%@page import="com.modelsSRP.Payment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Payment</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>
<%
Payment payment = (Payment) request.getSession().getAttribute("payment");
Booking b = (Booking) request.getSession().getAttribute("bookingDetails");
%>
</head>
<body>
	<main>
		<div id="htmlContent">
			<div class="container" id="wrap1">
				<div class="row">
					<div class="col-8">
						<div class="title">Payment</div>
						<div class="patient-info">
							<div class="row">
								<div class="col-3">
									<div>Customer Name:</div>
								</div>
								<div class="col-9">
									<div class="pname"><%=b.getCustomer().getCname()%></div>
								</div>

								<div class="col-3">
									<div>Customer Email:</div>
								</div>
								<div class="col-9">
									<div class="paddress"><%=b.getCustomer().getEmail()%></div>
								</div>

								<div class="col-3">
									<div>Customer Phone:</div>
								</div>
								<div class="col-9">
									<div class="pphone"><%=b.getCustomer().getPhone()%></div>
								</div>

								<div class="col-3">
									<div>Date:</div>
								</div>
								<div class="col-9">
									<div class="payment-date"><%=payment.getDate()%></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-4" id="logo">
						<img src="images/logo.png" alt="logo" loading="lazy">
					</div>
				</div>
			</div>

			<div class="wrap">
				<div class="row">
					<div class="col-12">
						<table class="table" id="table">
							<thead>
								<tr style="background: skyblue;">
									<th style="width: 100px; text-align: center;">QTY</th>
									<th style="text-align: center";>Description</th>
									<th style="text-align: center";>Price</th>
								</tr>
							</thead>
							<tbody>
								<tr style="border-top: 2px solid black;">
									<td style="width: 100px; text-align: center;">1</td>
									<td style="width: 600px;">Booking a <%=b.getRoom().getRoomType()%>
										room
									</td>
									<td style="width: 100px; text-align: center;">$ <%=b.getRoom().getRoomPrice()%></td>
								</tr>
								<tr>
									<td style="width: 100px; text-align: center;">2</td>
									<td style="width: 600px;"><%=b.getService().getsDetails()%></td>
									<td style="width: 100px; text-align: center;"text-align:center;><%=b.getService().getPrice() != 0 ? "$ " + b.getService().getPrice() : "FREE"%></td>
								</tr>
								<tr>
									<td colspan="2"
										style="text-align: right; font-weight: bold; font-size: 24px;">Total</td>
									<td
										style="text-align: center; font-weight: bold; font-size: 24px">$
										<%=payment.getTotalPayment()%></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div id="editor"></div>
		<div class="main-button">
			<button class="btn btn-primary generatePDF" onclick="generateBill()">Save
				Bill</button>
		</div>
	</main>
	<style>
.title {
	font-weight: bold;
	font-size: 50px;
	color: skyblue;
}

#table {
	width: 70%;
	margin-left: auto;
	margin-right: auto;
}

#wrap1 {
	width: 100%;
	height: 200px;
}

#logo img {
	margin-left: 160px;
	max-width: 150px;
}

.main-button {
	display: flex;
	justify-content: center;
}
</style>
</body>
<script>
	//        Save pdf bill
	function generateBill() {
		var doc = new jsPDF('p', 'pt', 'a4', true);
		doc.fromHTML($('#htmlContent').get(0), 20, 20, {
			'width' : 700
		}, function() {
			doc.save('payment.pdf');
		});
	};
</script>
</html>
