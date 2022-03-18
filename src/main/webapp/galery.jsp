<%@ include file="html.jsp"%>

<body>
	<%@ include file="header.jsp"%>
	<p id="location" style="display:none;"><%= location%></p>
	<main>
		<div>
			<ul
				style="list-style: none; padding: 0; display: flex; justify-content: center;">
				<li class="sub-menu menu-galery"><a href="#single" onclick="changeRoom(0)">Single
						Room</a></li>
				<li class="sub-menu menu-galery"><a href="#double" onclick="changeRoom(1)">Double
						Room</a></li>
				<li class="sub-menu menu-galery"><a href="#quad" onclick="changeRoom(2)">Quad
						Room</a></li>
				<li class="sub-menu menu-galery"><a href="#queen" onclick="changeRoom(3)">Queen
						Room</a></li>
			</ul>
		</div>
		<section class="main-content">
			<div class="room-part">
				<div class="img-expand">
					<div class="blackDeep"
						onclick="this.parentElement.style.display='none', clearTimeout(timeOut)"></div>
					<span
						onclick="this.parentElement.style.display='none', clearTimeout(timeOut)"
						class="closebtn">&times;</span>
					<div class="arrows previous" onclick="onPrevious()"
						style="display: none;">
						<img src="images/next.png" alt="back"
							style="transform: scaleX(-1);">
					</div>
					<div class="arrows next" onclick="onNext()" style="display: none;">
						<img src="images/next.png" alt="next">
					</div>
					<img class="expandedImg" style="width: 100%">
					<div class="imgtext"></div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-md-5">
							<div class="img-part">
								<!-- This is where to insert room images -->
								<div class="main-pic" style="display: none;">
									<img src="images/single-bed-2.jpg" alt="Single Room" id="db01">
									<img src="images/single-bed-3.jpg" alt="Single Room" id="db02">
									<img src="images/single-bed.jpg" alt="Single Room" id="db03">
								</div>

								<img class="room-img" src="images/single-bed.jpg"
									alt="Single Room" onclick="imgExpand(this)"> <span
									class="tooltiptext">Click to open gallery</span>
							</div>
						</div>
						<div class="col-md-7">
							<div class="room-title">
								<h3 class="room-title-header">Single Room</h3>
							</div>
							<div class="room-description">
								<p>Beatiful rooms with one bed, the rooms can be assigned
									for one customer, suitable for ones who travels around.</p>
								<p>
									<b>Rooms include: </b>1 bed, a toilet with full equipments, a
									TV, a small set of sofas
								</p>
								<p>
									<b>Special: </b>A river view or a lake view.
								</p>
								<p class="price">
									<b>Price: </b><i class="fa-solid fa-dollar-sign"></i>20
								</p>
							</div>
							<div class="room-descript"></div>
						</div>
					</div>
					<div class="row">
						<div class="book-part">
							<button type="button" class="btn btn-primary"
								onclick="bookForward()">Book This Room</button>
						</div>
					</div>
				</div>
			</div>
			<div class="room-part">
				<div class="img-expand">
					<div class="blackDeep"
						onclick="this.parentElement.style.display='none', clearTimeout(timeOut)"></div>
					<span
						onclick="this.parentElement.style.display='none', clearTimeout(timeOut)"
						class="closebtn">&times;</span>
					<div class="arrows previous" onclick="onPrevious()"
						style="display: none;">
						<img src="images/next.png" alt="back"
							style="transform: scaleX(-1);">
					</div>
					<div class="arrows next" onclick="onNext()" style="display: none;">
						<img src="images/next.png" alt="next">
					</div>
					<img class="expandedImg" style="width: 100%">
					<div class="imgtext"></div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-md-5">
							<div class="img-part">
								<!-- This is where to insert room images -->
								<div class="main-pic" style="display: none;">
									<img src="images/double-bed-2.jpg" alt="Double Room" id="db11">
									<img src="images/double-bed-3.jpg" alt="Double Room" id="db12">
									<img src="images/double-bed.jpg" alt="Double Room" id="db13">

								</div>
								<img class="room-img" src="images/double-bed.jpg"
									alt="Double Room" onclick="imgExpand(this)"> <span
									class="tooltiptext">Click to open gallery</span>
							</div>
						</div>
						<div class="col-md-7">
							<div class="room-title">
								<h3 class="room-title-header">Double Room</h3>
							</div>
							<div class="room-description">
								<p>Beatiful rooms with two beds or twin beds, the rooms can
									be assigned for a couple or 2 adults and a chilld</p>
								<p>
									<b>Rooms include: </b>1 twin bed or 2 beds, a toilet with full
									equipments, a TV, a small set of sofas
								</p>
								<p>
									<b>Special: </b>A golf with river view.
								</p>
								<p class="price">
									<b>Price: </b><i class="fa-solid fa-dollar-sign"></i>30
								</p>
							</div>
							<div class="room-descript"></div>
						</div>
					</div>
					<div class="row">
						<div class="book-part">
							<button type="button" class="btn btn-primary"
								onclick="bookForward()">Book This Room</button>
						</div>
					</div>
				</div>
			</div>
			<div class="room-part">
				<div class="img-expand">
					<div class="blackDeep"
						onclick="this.parentElement.style.display='none', clearTimeout(timeOut)"></div>
					<span
						onclick="this.parentElement.style.display='none', clearTimeout(timeOut)"
						class="closebtn">&times;</span>
					<div class="arrows previous" onclick="onPrevious()"
						style="display: none;">
						<img src="images/next.png" alt="back"
							style="transform: scaleX(-1);">
					</div>
					<div class="arrows next" onclick="onNext()" style="display: none;">
						<img src="images/next.png" alt="next">
					</div>
					<img class="expandedImg" style="width: 100%">
					<div class="imgtext"></div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-md-5">
							<div class="img-part">
								<!-- This is where to insert room images -->
								<div class="main-pic" style="display: none;">
									<img src="images/quad-bed-2.jpg" alt="Quad Room" id="db21">
									<img src="images/quad-bed-3.jpg" alt="Quad Room" id="db22">
									<img src="images/quad-bed.jpg" alt="Quad Room" id="db23">

								</div>
								<img class="room-img" src="images/quad-bed.jpg" alt="Quad Room"
									onclick="imgExpand(this)"> <span class="tooltiptext">Click
									to open gallery</span>
							</div>
						</div>
						<div class="col-md-7">
							<div class="room-title">
								<h3 class="room-title-header">Quad Room</h3>
							</div>
							<div class="room-description">
								<p>Large rooms with 4 beds or 2 twin beds, the rooms can be
									assigned for four customers or family with maximum at five
									people</p>
								<p>
									<b>Rooms include: </b>2 twin beds or 4 beds, 2 toilets with
									full equipments, 2 TV, a big set of sofas
								</p>
								<p>
									<b>Special: </b>A hill with woods view.
								</p>
								<p class="price">
									<b>Price: </b><i class="fa-solid fa-dollar-sign"></i>100
								</p>
							</div>
							<div class="room-descript"></div>
						</div>
					</div>
					<div class="row">
						<div class="book-part">
							<button type="button" class="btn btn-primary"
								onclick="bookForward()">Book This Room</button>
						</div>
					</div>
				</div>
			</div>
			<div class="room-part">
				<div class="img-expand">
					<div class="blackDeep"
						onclick="this.parentElement.style.display='none', clearTimeout(timeOut)"></div>
					<span
						onclick="this.parentElement.style.display='none', clearTimeout(timeOut)"
						class="closebtn">&times;</span>
					<div class="arrows previous" onclick="onPrevious()"
						style="display: none;">
						<img src="images/next.png" alt="back"
							style="transform: scaleX(-1);">
					</div>
					<div class="arrows next" onclick="onNext()" style="display: none;">
						<img src="images/next.png" alt="next">
					</div>
					<img class="expandedImg" style="width: 100%">
					<div class="imgtext"></div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-md-5">
							<div class="img-part">
								<!-- This is where to insert room images -->
								<div class="main-pic" style="display: none;">
									<img src="images/queen-room-2.jpg" alt="Queen Room" id="db31">
									<img src="images/queen-room-3.jpg" alt="Queen Room" id="db32">
									<img src="images/queen-room.jpg" alt="Queen Room" id="db33">

								</div>
								<img class="room-img" src="images/queen-room.jpg"
									alt="Queen Room" onclick="imgExpand(this)"> <span
									class="tooltiptext">Click to open gallery</span>
							</div>
						</div>
						<div class="col-md-7">
							<div class="room-title">
								<h3 class="room-title-header">Queen Room</h3>
							</div>
							<div class="room-description">
								<p>Royal and luxurious rooms with one or two beds, the rooms
									bring customers a feeling of king's or queen's rooms. The rooms
									can be assigned for single or couple use.</p>
								<p>
									<b>Rooms include: </b>11 to 2 beds, a toilet with full
									equipments, a high-tech TV, a medium set of sofas.
								</p>
								<p>
									<b>Extra: </b>great decoration with pictures of British Royal
									from Middle Ages.
								</p>
								<p>
									<b>Special: </b>A golf with river view from a higher place.
								</p>
								<p class="price">
									<b>Price: </b><i class="fa-solid fa-dollar-sign"></i>120
								</p>
							</div>
							<div class="room-descript"></div>
						</div>
					</div>
					<div class="row">
						<div class="book-part">
							<button type="button" class="btn btn-primary"
								onclick="bookForward()">Book This Room</button>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
	<%@ include file="footer.jsp"%>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>

<script>
    function imgExpand(imgs) {
        resetTimeout();
        var expandImg = document.getElementsByClassName("expandedImg")[currentRoomIndex];
        var imgText = document.getElementsByClassName("imgtext")[currentRoomIndex];
        expandImg.src = imgs.src;
        imgText.innerHTML = imgs.alt;
        expandImg.parentElement.style.display = "block";
        let black = document.getElementsByClassName("blackDeep")[currentRoomIndex];
        black.style.display = "block";
        document.querySelectorAll(".arrows").forEach(a => a.style.display = "block");

    }

    function bookForward() {
    	var location = document.getElementById("location").innerHTML;
        window.location.href = location;
    }
    let currentRoomIndex = 0;
    let currentID = 1;
    picClass = document.getElementsByClassName('main-pic');
    picNum = 0;

    function onNext() {
        let changePic = document.getElementsByClassName('expandedImg')[currentRoomIndex];
        let current = document.getElementById("db" + currentRoomIndex + currentID);
        if (current == null) {
            let btn = document.getElementsByClassName('next')[currentRoomIndex];
            btn.style.opacity = 0.8;
            currentID = 1;
            current = document.getElementById("db" + currentRoomIndex + currentID);
            changePic.src = current.src;
            currentID++;
            resetTimeout()
                // $('#next').hover(function(){
                //     $(this).css("cursor","not-allowed");
                // });
        } else {
            changePic.src = current.src
            currentID++;
            resetTimeout()
        }

    }

    function onPrevious() {
        let changePic = document.getElementsByClassName('expandedImg')[currentRoomIndex];
        let current = document.getElementById("db" + currentRoomIndex + currentID);
        if (current == null) {
            let btn = document.getElementsByClassName('previous')[currentRoomIndex];
            btn.style.opacity = 0.8;
            currentID = picNum;
            current = document.getElementById("db" + currentRoomIndex + currentID);
            changePic.src = current.src;
            currentID--;
            resetTimeout()
                // $('#previous').hover(function(){
                //     $(this).css("cursor","not-allowed");
                // });
        } else {
            changePic.src = current.src
            currentID--;
            resetTimeout()
        }

    }
    let timeOut = setTimeout(onNext, 3000);

    function resetTimeout() {
        if (timeOut) {
            clearTimeout(timeOut);
            timeOut = setTimeout(onNext, 3000);
        } else {
            timeOut = setTimeout(onNext, 3000);
        }
    }

    changeRoom(0);

    function changeRoom(index) {
        picNum = picClass[index].childElementCount;
        currentRoomIndex = index;
        console.log(index)
        console.log(document.getElementsByClassName('room-part'));
        let roomList = document.getElementsByClassName('room-part');
        for (room of roomList) {
            room.style.display = 'none';
        }
        currentRoom = roomList[index];
        currentRoom.style.display = 'block';
    }
</script>

</html>