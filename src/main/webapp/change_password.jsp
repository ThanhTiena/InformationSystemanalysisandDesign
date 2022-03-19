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
										<h3 class="text-uppercase text-center mb-3">Enter New Password</h3>
										<form action="ChangePassword" method="post">
											<div class="form-outline mb-3">
												<input type="text" id="new-password" name="new-password"
													class="form-control form-control-lg" /> <label
													class="form-label" for="new-password">Password</label>
											</div>

											<div class="form-outline mb-3">
												<input type="password" id="re-password"
													name="re-password" class="form-control form-control-lg" />
												<label class="form-label" for="re-password">Confirm Password</label>
											</div>
											<div class="d-flex justify-content-center">
												<button type="submit"
													class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Change</button>
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