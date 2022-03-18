<%@ include file="html.jsp"%>

<body>
	<%@ include file="header.jsp"%>
	<main>
		<div class="service-1" id="service-id">
			<div class="container">
				<h1>Facilities</h1>
				<p>With professional service and modern facilities, Paradise
					hotel always brings great experiences to the satisfaction of the
					highest quality service in the country.</p>
				<div class="row">
					<div class="col-12 col-md-4">
						<div class="service-1-item">
							<div class="service-1-item-image">
								<img src="./images/swimming-service.jpg" alt="swimming"
									loading="lazy">
							</div>
							<div class="service-1-item-content">
								<h3>Swimming Pool</h3>
								<p>Coming to Paradise Hotel, guests will experience the most
									luxurious swimming pool service in Binh Duong</p>
							</div>
							<div class="service-1-item-button">
								<button type="button" onclick="moveToBook()">Book Now</button>
							</div>
						</div>
					</div>
					<div class="col-12 col-md-4">
						<div class="service-1-item">
							<div class="service-1-item-image">
								<img src="./images/restroom-service.jpg" alt="restroom"
									loading="lazy">
							</div>
							<div class="service-1-item-content">
								<h3>Room Facilities</h3>
								<p>Coming to Paradise Hotel, visitors will experience the
									four-season climate in one day, travel on cable cars, and
									immerse themselves in the natural landscape of Binh Duong.</p>
							</div>
							<div class="service-1-item-button">
								<button type="button" onclick="moveToBook()">Book Now</button>
							</div>
						</div>
					</div>
					<div class="col-12 col-md-4">
						<div class="service-1-item">
							<div class="service-1-item-image">
								<img src="./images/restaurant-service.jpg" alt="restaurant"
									loading="lazy">
							</div>
							<div class="service-1-item-content">
								<h3>Restaurant</h3>
								<p>Coming to Paradise Hotel, visitors will experience
									luxurious restaurant service with specialties, delicious and
									famous dishes of Binh Duong.</p>
							</div>
							<div class="service-1-item-button">
								<button type="button" onclick="moveToBook()">Book Now</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<%@ include file="footer.jsp"%>
</body>

<script type="text/javascript">
	function moveToBook() {
		window.location = "book_room.jsp";
	}
</script>
</html>