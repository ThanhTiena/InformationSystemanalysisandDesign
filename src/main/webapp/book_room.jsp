<%@page import="com.modelsSRP.Customer"%>
<%@ include file="html.jsp"%>
<%
Customer c = (Customer) request.getSession().getAttribute("customerInfo");
if (c == null) {
	c = new Customer();
	c.setCname("");
	c.setCertificate("");
}
%>
<body>
	<%@ include file="header.jsp"%>
	<main>
		<section class="main-booking-content">
			<div class="book-title">
				<h1>Book Your Room</h1>
			</div>
			<div class="form-fill">
				<div class="booking">
					<div class="container">
						<div class="booking-form">
							<form action="BookServlet" method="POST" onreset="onReset()">
								<div class="row">
									<div class="col-12 col-md-6">
										<div class="form-left">
											<label for="name">Full Name</label> <input id="name"
												type="text" name="name" placeholder="Full name" required
												value="<%= c.getCname()%>"> <label for="birth">Date
												of Birth</label> <input id="birth" type="date" name="birth"
												placeholder="mm/dd/yyyy" required> <label
												for="arrive-day">Arrival Date</label> <input id="arrive-day"
												type="date" name="arrive-day" placeholder="mm/dd/yyyy"
												required> <label for="people">Number of
												Customers</label> <input id="people" type="number" name="people"
												placeholder=" ---" required>
										</div>
									</div>
									<div class="col-12 col-md-6">
										<div class="form-right">
											<label for="phone-number">Phone Number</label> <input
												value="<%= c.getPhone()!=0?c.getPhone():""%>" id="phone-number" type="text" name="phone-number"
												placeholder="Phone number" required> <label
												for="id-number">Certificate Number</label> <input
												id="id-number" type="text" name="id-number"
												placeholder="ID number" required value="<%= c.getCertificate()%>"> <label
												for="leave-day">Leaving Date</label> <input id="leave-day"
												type="date" name="leave-day" placeholder="mm/dd/yyyy"
												required=""> <label for="type-room">Room
												Type</label> <select id="type-room" name="roomtype"
												onchange="changeRoom()">
												<option value="single" selected="">Single Room</option>
												<option value="double">Double Room</option>
												<option value="quad">Quad Room</option>
												<option value="queen">Queen Room</option>
											</select>
											<div id="room-show">

												<div class="main-pic" style="display: none;">
													<img src="images/single-bed.jpg" alt="Single Room"
														id="single"> <img src="images/double-bed.jpg"
														alt="Double Room" id="double"> <img
														src="images/quad-bed.jpg" alt="Quad Room" id="quad">
													<img src="images/queen-room.jpg" alt="Queen Room"
														id="queen">

												</div>
											</div>
										</div>
									</div>
								</div>

								<fieldset id="attached-services" class="border p-2">
									<legend class="w-auto">Services</legend>
									<div class="container">
										<div class="row">
											<div class="col-md-6">
												<input type="checkbox" id="breakfast" name="breakfast">
												<label for="breakfast">Free Breakfast</label>
											</div>
											<div class="col-md-6">
												<input type="checkbox" id="lunch"> <label
													for="lunch">Free Lunch</label>
											</div>
											<div class="col-md-6">
												<input type="checkbox" id="dinner"> <label
													for="dinner">Free Dinner</label>
											</div>
											<div class="col-md-6">
												<input type="checkbox" id="pool"> <label
													for="dinner">Free Swimming Pool</label>
											</div>
										</div>
									</div>
								</fieldset>
								<div class="row">
									<img alt="room-type" id="represent-img">
								</div>
								<div class="row">
									<div class="col-md-6">
										<button type="submit">Book Room</button>
									</div>
									<div class="col-md-6">
										<button type="reset">Clear Form</button>
									</div>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
	<%@ include file="footer.jsp"%>
	<script>
    document.querySelectorAll('input[type="checkbox"]').forEach(a => a.disabled = true);
    changeRoom();

    function changeRoom() {
        let type = document.getElementById("type-room").value;
        let img = document.getElementById(type);
        document.getElementById("represent-img").src = img.src;
        document.querySelectorAll('input[type="checkbox"]').forEach(a => isChecked(a, type));

    }

    function onReset() {
        let img = document.getElementById('single');
        document.getElementById("represent-img").src = img.src;
    }
    $('input[type="checkbox"').css('cursor', 'not-allowed');

    function isChecked(element, type) {

        if (type == 'single') {
            element.checked = false;

            if (element.id == 'breakfast') {
                element.checked = true;
            }
        } else if (type == 'double') {
            element.checked = false;
            if (element.id == 'breakfast' || element.id == 'lunch') {
                element.checked = true;
            }
        } else if (type == 'quad') {
            element.checked = true;
            if (element.id == 'pool') {
                element.checked = false;
            }
        } else {
            element.checked = true;
        }
    }
</script>
</body>

</html>