<%@ include file="html.jsp"%>
<body>
	<%@ include file="header.jsp"%>
	<main>
		<div class="login" id="login-id">
			<div class="container" style="padding: 30px;">
				<div class="mask d-flex align-items-center h-100 gradient-custom-3">
					<div class="container h-100">
						<div
							class="row d-flex justify-content-center align-items-center h-100"
							style="padding: 50px;">
							<div class="col-12 col-md-9 col-lg-7 col-xl-6">
								<div class="card" style="border-radius: 15px;">
									<div class="card-body p-5">
										<h3 class="text-uppercase text-center mb-3">Get Back Account</h3>
										<form action="GetBackAccount" method="post">
											<div class="form-outline mb-3">
												<input type="email" id="signup-password"
													name="email_getback" class="form-control form-control-lg" />
												<label class="form-label" for="signup-password">Enter you email</label>
											</div>
											<div class="d-flex justify-content-center">
												<button type="submit"
													class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Next</button>
											</div>
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