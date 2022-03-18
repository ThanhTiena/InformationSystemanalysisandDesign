<%@ include file="html.jsp"%>

<body>
	<%@ include file="header.jsp"%>
	<main>
		<div class="about" id="about-id">
			<h1>About Us</h1>
			<div class="container">
				<img src="./images/introduction.jpg" alt="about" loading="lazy">
				<div class="about-content">
					<h1>Welcome to Paradise Hotel</h1>
					<p>Paradise Hotel is a leading 5-star international standard
						hotel located right in the busy business, shopping, commercial and
						entertainment center of Ho Chi Minh City and just away from Tan
						Son Nhat International Airport about 8 km by road. Paradise Hotel
						provides luxurious services and ensures the professionalism of its
						staff. Popular services that are loved at the hotel include:
						swimming pool, restaurant,...</p>
					<div class="about-content-more">
						<p>Besides, the hotel also provides car rental service,
							airport shuttle and 24/7 service. We are committed to satisfying
							all guests who come to our hotel and provide many special offers
							for their next arrivals.</p>
					</div>

					<button type="button" id='more-btn' onclick="onMore()">More</button>
				</div>

			</div>
		</div>
	</main>
	<%@ include file="footer.jsp"%>
	<script type="text/javascript">
    let contentIndex = 0;
    let content = document.getElementsByClassName('about-content-more');
    moreBtnChange();

    function onMore() {
        try {
            let divContent = content[contentIndex];
            divContent.style.display = 'block' ;
            
            divContent.classList.remove('out');
            divContent.classList.add('active');
            contentIndex++;
            moreBtnChange();
        } catch {
            contentIndex = 0;
            document.querySelectorAll(".about-content-more").forEach(a => outActive(a));
            moreBtnChange();
        }


    }
    function outActive(element) {
        setTimeout(function () { element.style.display = 'none' }, 300)
        element.classList.remove('active');
        element.classList.add('out');
    }
    function moreBtnChange() {
        if (content[contentIndex]) {
            document.getElementById('more-btn').innerHTML = 'More';
        } else {
            document.getElementById('more-btn').innerHTML = 'Less';
        }
    }

</script>
</body>

</html>