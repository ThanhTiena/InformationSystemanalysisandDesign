<%@page import="com.modelsSRP.User"%>
<%
User user;
boolean flag = false;
String location = "book_room.jsp";
user = (User) (request.getSession().getAttribute("user"));
if (user == null) {
	user = new User();
	user.setUserName("");
	flag = true;
	location = "login.jsp";
}
%>


<header>
	<div class="header" id="home">
		<div class="desktop-menu">
			<div class="top-header">
				<div class="container-fluid">
					<div class="row">
						<div class="col-12 col-md-4">
							<p class="top-header-content1">
								<i class="fa fa-map-marker" aria-hidden="true"></i>555 Chanh Phu
								Hoa, Ben Cat, Binh Duong
							</p>
						</div>
						<div class="col-12 col-md-4">
							<p class="top-header-content2">
								<i class="fa fa-phone" aria-hidden="true"></i> 08.38 409 092
							</p>
						</div>
						<div class="col-12 col-md-2">
							<p class="top-header-fontawesome">
								<a href=""><i class="fa fa-facebook" aria-hidden="true"></i></a>
								<a href=""><i class="fa fa-instagram" aria-hidden="true"></i></a>
								<a href=""><i class="fa fa-twitter" aria-hidden="true"></i></a>
							</p>
						</div>
						<div class="col-12 col-md-2">
							<p class="top-header-account">
								<a href=""><i class='fa fa-user'></i></a> <a href=""><%=user.getUserName()%></a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="nav">
				<a href="homepage.jsp"><img src="./images/logo.png" alt="logo"
					loading="lazy"></a>
				<ul class="menu">
					<li class="active"><a href="homepage.jsp">Homepage</a></li>
					<li><a href="about.jsp">About Us</a></li>
					<li class="list"><a href="facilities.jsp">Facilities</a>
					<li class="list"><a href="galery.jsp">Book Room</a>
						<ul class="sub-menu" style="z-index: 999;">
							<li><a href="<%= location%>">Single room</a></li>
							<li><a href="<%= location%>">Double room</a></li>
							<li><a href="<%= location%>">Quad room</a></li>
							<li><a href="<%= location%>">Queen room</a></li>
						</ul></li>
					<%
					if (flag) {
					%>
					<li><a href="register.jsp">Sign Up</a></li>
					<li><a href="login.jsp">Login</a></li>
					<%
					} else {
					%>
					<li><a href="BookListServlet">Profile</a></li>
					<li><a href="LogoutServlet">Logout</a></li>
					<%
					}
					%>
				</ul>
			</div>
		</div>
	</div>
</header>