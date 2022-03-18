<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isErrorPage="true"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Error</title>
<style>
.main-content {
	display: flex;
	flex-direction: column;
	align-items: center;
	text-align: center;
}

a {
	font-weight: 900;
	text-decoration: none;
	text-transform: uppercase;
}
</style>
</head>

<body>
	<main>
		<div class="main-content">
			<aside>
				<img src="images/error.jpg" alt="404 Image" style="height: 400px;" />
			</aside>
			<main>
				<h1>Sorry!</h1>
				<p>Look like something wrong just happen because</p>
				<p>
					The error is
					<%=exception%>
					<%
					out.print(request.getContextPath());
					%>
				</p>
				<a href="homepage.jsp">Go back to our life</a>
			</main>
		</div>
	</main>
</body>

</html>