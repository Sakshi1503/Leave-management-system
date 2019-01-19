<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>ViewButtonFaculty</title>
	<!-- UIkit CSS -->
	<link rel="stylesheet" href="css/uikit.min.css" />
	<!-- UIkit JS -->
	<script src="js/uikit.min.js"></script>

	<link rel="stylesheet" href="css/font-awesome.min.css">

	<link href="./css/dashboard.css" rel="stylesheet" />
	<link href="./css/register.css" rel="stylesheet" />


	<!-- <link rel="stylesheet" type="feather-icons" href="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.7.3/feather.js"> -->
</head>

<body style="height: -webkit-fill-available;">
	<div class="page" style="margin: 0px; padding: 0px;">
		<div class="page-single" style="width: 100%;">
			<div class="container">
				<div class="row">
					<div class="col col-login mx-auto">
						<form class="card" action="" method="post">
							<div class="card-body p-6">
								<div class="form-group">
									<label class="form-label">Role</label>
									<select class="form-control custom-select" disabled="">
										<option value="Faculty" selected="">Faculty</option>
									</select>
								</div>
								<div class="form-group">
									<label class="form-label">Name</label>
									<input type="username" class="form-control" id="exampleInputname" disabled="" aria-describedby="nameHelp"
									 placeholder="A. A. Patel">
								</div>
								<div class="form-group">
									<label class="form-label">Branch</label>
									<select class="form-control custom-select" disabled="">
										<option value="" disabled="">Select Branch</option>
										<option value="">Civil Engineering</option>
										<option value="">Chemical Enginnering</option>
										<option value="">Computer Engineering</option>
										<option value="">Electrincal Enginnering</option>
										<option value="">Electronics & Communication</option>
										<option value="" selected="">Information Technology</option>
										<option value="">Instrumentation & Control</option>
										<option value="">Mechanical Engineering</option>
										<option value="">Power Electronics</option>
									</select>
								</div>
								<div class="form-group">
									<label class="form-label">Email Address</label>
									<input type="email" class="form-control" id="exampleInputEmail1" disabled="" aria-describedby="emailHelp"
									 placeholder="aapatel@email.com">
								</div>
								<div class="form-group">
									<label class="form-label">Mobile No</label>
									<input type="mobileno" class="form-control" id="exampleInputMobile" disabled="" aria-describedby="MobileNo"
									 placeholder="8888888888">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>

</html>