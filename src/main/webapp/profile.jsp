<%@page import="java.util.List"%>
<%@page import="com.modelsSRP.Booking"%>
<%@ include file="html.jsp"%>
<%
List<Booking> list = (List<Booking>) request.getSession().getAttribute("bookingInfo");
int i = 1;
%>
<body>
	<%@ include file="header.jsp"%>
	<main>
		<section class="main-content">
			<div class="container table-container">
				<table class="table table-striped">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Booking ID</th>
							<th scope="col">Name</th>
							<th scope="col">Phone Number</th>
							<th scope="col">Email</th>
							<th scope="col">Booking Status</th>
							<th scope="col">Details</th>
						</tr>
					</thead>
					<tbody id="profile-body">
						<%
						for (Booking b : list) {
						%>
						<tr>
							<th scope="row"><%= i++%></th>
							<td><%=b.getBid()%></td>
							<td><%=b.getCustomer().getCname()%></td>
							<td><%=b.getCustomer().getPhone()%></td>
							<td><%=b.getCustomer().getEmail()%></td>
							<td><%=b.getStatus()%></td>
							<td><a href="BookingDetailsServlet?bid=<%= b.getBid()%>">
									<button class="view-detail-btn">View</button>
							</a></td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
			</div>
		</section>
	</main>
	<%@ include file="footer.jsp"%>

</body>

</html>