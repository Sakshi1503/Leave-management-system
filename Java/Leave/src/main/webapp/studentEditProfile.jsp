<%
	String userRole = new String("SUPERSTAR");
	
	if(session.getAttribute("role") != null){
		userRole = (String)session.getAttribute("role");
	}
	if(userRole.equals("student")){
%>
<title>Edit Profile</title>
<jsp:include page="headerStudent.jsp" />

<body style="height: -webkit-fill-available;">

	<a href="login.jsp">
		<div class="header" style="width: 100%; z-index: 980;" uk-sticky="" uk-sticky="bottom: #offset">
			<h1 class="uk-heading-divider"></h1>
			<h1 class="uk-heading-line uk-text-center"><span>Institute Leave Management System</span></h1>
			<h1 class="uk-heading-divider"></h1>
		</div>
	</a>
	<div class="uk-modal-container" style="padding: 0px; margin: 0px; background-color: #edf2fa;">
		<div class="container" style="height: 100%; width: 100%; padding: 0px; margin: 0px;">
			<div class="row" style="height: 100%; width: 100%;padding: 0px; margin: 0px;">
				<div class="col-sm-4 col-md-3 col-lg-2"
					style="padding: 10px; margin-top: 0px; background-color: #b3d9ff;">
					<div class="col-lg order-lg-first">
						<ul class="nav nav-tabs">
							<li class="nav-item">
								<a href="./studentHome.jsp" class="nav-link"><i class="fe fe-home"></i> Apply for
									Leave</a>
							</li>
							<li class="nav-item">
                                <a href="studentLeaveRequests.jsp" class="nav-link"><i class="fe fe-check-circle"></i> Your Leaves</a>
                            </li>
							<li class="nav-item">
								<a href="studentEditProfile.jsp" class="nav-link active"><i class="fe fe-plus"></i> Edit
									Profile</a>
							</li>
							<li class="nav-item">
								<a href="studentChangePassword.jsp" class="nav-link"><i class="fe fe-lock"></i> Change
									Password</a>
							</li>
							<li class="nav-item">
								<a href="logout.jsp" class="nav-link"><i class="fe fe-minus"></i> Logout</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-sm-8 col-md-9 col-lg-10" style="margin: 0px; padding: 0px; width: 100%;">
					<div class="page">
						<div class="page-single" style="width: 100%;">
							<div class="container">
								<div class="row">
									<div class="col col-login mx-auto">
										<form class="card" action="" method="post">
											<div class="card-body p-6">
												<div class="card-title">
													<center>Edit Profile</center>
												</div>
												<div class="form-group">
													<label class="form-label">You are</label>
													<select class="form-control custom-select">
														<option value="Student" selected="">Student</option>
													</select>
												</div>
												<div class="form-group">
													<label class="form-label">Name</label>
													<input type="username" class="form-control" id="exampleInputEmail1"
														aria-describedby="emailHelp" pattern="[a-zA-Z][a-zA-Z\s]*" placeholder="Enter Name">
												</div>
												<div class="form-group">
													<label class="form-label">Enrollment No</label>
													<input type="username" class="form-control" id="exampleInputEmail1"
														aria-describedby="emailHelp" pattern="[1][6][0][1][7][0][1][1][6][0][0-9][0-9]" placeholder="Enter Enrollmemt No"
														disabled="">
												</div>
												<div class="form-group">
													<label class="form-label">Address</label>
													<textarea type="address" class="form-control"
														id="exampleInputAddress" aria-describedby="addressHelp"
														placeholder="Enter Address"></textarea>
												</div>
												<div class="form-group">
													<label class="form-label">City</label>
													<input type="city" class="form-control" id="exampleInputCity"
														aria-describedby="cityHelp" placeholder="Enter City">
												</div>
												<div class="form-group">
													<label class="form-label">State</label>
													<input type="state" class="form-control" id="exampleInputState"
														aria-describedby="stateHelp" placeholder="Enter State">
												</div>
												<div class="form-group">
													<label class="form-label">Are you Hosteller?</label>
													<div class="selectgroup w-100">
														<label class="selectgroup-item">
															<input type="radio" name="hosteller" id="hosteller"
																value="Yes" class="selectgroup-input">
															<span class="selectgroup-button">Yes</span>
														</label>
														<label class="selectgroup-item">
															<input type="radio" name="hosteller" id="hosteller"
																value="No" class="selectgroup-input">
															<span class="selectgroup-button">No</span>
														</label>
													</div>
												</div>
												<div class="form-group" name="hostel" id="hostel"
													style="display: none;">
													<label class="form-label">Hostel</label>
													<select class="form-control custom-select">
														<option value="" disabled="" selected="">Select Hostel</option>
														<option value="">Hostel 1</option>
														<option value="">Hostel 2</option>
													</select>
												</div>
												<div class="form-group">
													<label class="form-label">Email Address</label>
													<input type="email" class="form-control" id="exampleInputEmail1"
														aria-describedby="emailHelp" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" placeholder="Enter Email">
												</div>
												<div class="form-group">
													<label class="form-label">Student's Contact No</label>
													<input type="mobileno" class="form-control" id="exampleInputMobile"
														aria-describedby="MobileNo" pattern="[0-9]{10}" placeholder="Student's No">
												</div>
												<div class="form-group">
													<label class="form-label">Father's Contact No</label>
													<input type="mobileno" class="form-control" id="exampleInputMobile1"
														aria-describedby="MobileNo" pattern="[0-9]{10}" placeholder="Father's No">
												</div>
												<div class="form-group">
													<label class="form-label">Mother's Contact No</label>
													<input type="mobileno" class="form-control" id="exampleInputMobile2"
														aria-describedby="MobileNo" pattern="[0-9]{10}" placeholder="Mother's No">
												</div>
												<div class="form-footer">
													<!-- <button type="submit" class="btn btn-primary btn-block" id="submit" disabled=""><a href="login.jsp" style="color: white;">Submit</a></button> -->
													<button type="submit" class="btn btn-primary btn-block"
														id="submitLink" value="submit" name="submit"
														formaction="index.jsp">Submit</button>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					<script type="text/javascript">
						$(document).ready(function () {
							$('input[type="radio"]').click(function () {
								if ($(this).attr('id') == 'hosteller' && $(this).attr('value') == 'yes') {
									$('#hostel').show();
								}
								else if ($(this).attr('id') == 'hosteller' && $(this).attr('value') == 'no') {
									$('#hostel').hide();
								}
								else { }
							});
						});
					</script>
</body>

</html>
<%
	}
	else{
		out.println("<script>alert('SESSION INVALID!!! PLEASE LOGIN AGAIN!!!!!');</script>");
		response.sendRedirect("login.jsp");
	}
%>