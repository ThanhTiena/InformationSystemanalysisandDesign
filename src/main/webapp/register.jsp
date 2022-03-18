<%@ include file="html.jsp"%>
<body>
	<%@ include file="header.jsp"%>
	<main>
		<div class="signup" id="signup-id">
			<div class="container" style="padding: 30px;">
				<div class="mask d-flex align-items-center h-100 gradient-custom-3">
					<div class="container h-100">
						<div
							class="row d-flex justify-content-center align-items-center h-100"
							style="padding: 50px;">
							<div class="col-12 col-md-9 col-lg-7 col-xl-6">
								<div class="card" style="border-radius: 15px;">
									<div class="card-body p-5">
										<h3 class="text-uppercase text-center mb-3">Create an
											account</h3>
										<form action="RegisterServlet" method="post">
											<div class="form-outline mb-3">
												<input type="text" id="signup-username" name="signup-username"
													class="form-control form-control-lg" /> <label
													class="form-label" for="signup-username">Your User Name</label>
											</div>

											<div class="form-outline mb-3">
												<input type="email" id="signup-email" name="signup-email"
													class="form-control form-control-lg" /> <label
													class="form-label" for="signup-email">Your Email</label>
											</div>

											<div class="form-outline mb-3">
												<input type="password" id="signup-password" name="signup-password"
													class="form-control form-control-lg" /> <label
													class="form-label" for="signup-password">Password</label>
											</div>

											<div class="form-outline mb-3">
												<input type="password" id="signup-confirm-password" name="signup-confirm-password"
													class="form-control form-control-lg" /> <label
													class="form-label" for="signup-confirm-password">Confirm
													your password</label>
											</div>

											<div class="d-flex justify-content-center">
												<button type="submit"
													class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Register</button>
											</div>

											<p class="text-center text-muted mt-3 mb-0">
												Have already an account? <a href="login.html"
													class="fw-bold text-body"><u>Login here</u></a>
											</p>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<%@ include file="footer.jsp"%>
</body>
</html>