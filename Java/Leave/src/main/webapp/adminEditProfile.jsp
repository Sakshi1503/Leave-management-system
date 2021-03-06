<%@page import="java.sql.ResultSet"%>
<%@page import="Connection.Connect"%>
<%
	String userRole = new String("SUPERSTAR");

	if(session.getAttribute("role") != null){
		userRole = (String)session.getAttribute("role");
	}
	if(userRole.equals("admin")){
%>
<title>Edit Profile</title>
<jsp:include page="headerAdmin.jsp" />

<body style="height: -webkit-fill-available;">

	<a href="login.jsp">
		<div class="header" style="width: 100%; z-index: 980;" uk-sticky="">
			<h1 class="uk-heading-divider"></h1>
			<h1 class="uk-heading-line uk-text-center"><span>Institute Leave Management System</span></h1>
			<h1 class="uk-heading-divider"></h1>
		</div>
	</a>
	<div class="page" style="padding: 0px; margin: 0px; height: -webkit-fill-available; background-color: #edf2fa;">
		<div class="container" style="padding: 0px; margin: 0px; height: -webkit-fill-available;">
			<div class="row" style="height: 100%; width: 100%;padding: 0px; margin: 0px;">
				<div class="col-sm-4 col-md-3 col-lg-2"
					style="padding: 10px; margin-top: 0px; background-color: #b3d9ff; height: -webkit-fill-available;">
					<div class="col-lg order-lg-first">
						<ul class="nav nav-tabs">
							<li class="nav-item">
								<a href="./adminHome.jsp" class="nav-link"><i class="fe fe-home"></i> Home</a>
							</li>
							<li class="nav-item">
								<a href="adminApproveUsers.jsp" class="nav-link"><i class="fe fe-check-circle"></i>
									Approve User</a>
							</li>
							<li class="nav-item">
								<a href="adminRemoveUsers.jsp" class="nav-link"><i uk-icon="icon: close"></i> Remove
									User</a>
							</li>
							<li class="nav-item">
								<a href="adminApproveLeave.jsp" class="nav-link"><i class="fe fe-check-circle"></i>
									Approve Leave</a>
							</li>
							<li class="nav-item">
								<a href="adminAddAdmin.jsp" class="nav-link"><i class="fe fe-plus"></i> Add Admin</a>
							</li>
							<li class="nav-item">
								<a href="adminViewReports.jsp" class="nav-link"><i class="fe fe-file"></i> View Report</a>
							</li>
							<li class="nav-item">
								<a href="adminEditProfile.jsp" class="nav-link active"><i class="fe fe-user"></i> Edit
									Profile</a>
							</li>

							<li class="nav-item">
								<a href="adminChangePassword.jsp" class="nav-link"><i class="fe fe-lock"></i> Change
									Password</a>
							</li>
							<li class="nav-item">
								<a href="logout.jsp" class="nav-link"><i class="fe fe-minus"></i> Logout</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-sm col-md col-lg" style="margin: 0px; padding: 0px; width: 100%; height: max-content;">
					<div class="page">
						<div class="page-single" style="width: 100%;">
							<div class="container">
								<div class="row">
									<div class="col col-login mx-auto">
										<form class="card" action="adminEditProfile.jsp" method="post">
											<div class="card-body p-6">
												<div class="card-title">
													<center>Edit Profile</center>
												</div>
												<%
													Connect con=new Connect();
													String adminUsername=(String)session.getAttribute("adminUsername");
													ResultSet rs=con.SelectData("select * from admin_master where adminEmail='"+adminUsername+"'");
													if(rs.next()){
												%>
												<div class="form-group">
													<label class="form-label">Name</label>
													<input type="text" name="username" class="form-control" value="<%=rs.getString("adminName")%>"
														id="exampleUsername1" aria-describedby="nameHelp" pattern="[a-zA-Z][a-zA-Z\s]*"
														placeholder="Enter Name">
												</div>
												<div class="form-group">
													<label class="form-label">Contact No</label>
													<input type="text" name="contactNo" class="form-control" value="<%=rs.getString("adminContact")%>"
														id="exampleInputMobile" aria-describedby="MobileNo" pattern="[0-9]{10}"
														placeholder="Enter Mobile No">
												</div>

												<div class="form-group">
													<label class="form-label">Email</label>
													<input type="text" name="email" class="form-control" value="<%=rs.getString("adminEmail")%>"
														id="exampleInputEmail1" aria-describedby="emailHelp"
														pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
														placeholder="Enter Email">
												</div>

												<div class="form-footer">
													<!-- <button type="submit" class="btn btn-primary btn-block" id="submit" disabled=""><a href="login.jsp" style="color: white;">Submit</a></button> -->
													<button type="submit" class="btn btn-primary btn-block"
														id="submitLink" value="submit"
														name="adminEditProfile">Submit</button>
												</div>
											</div>
											<%
														if(request.getParameter("adminEditProfile")!=null)
													{
														int adminID=rs.getInt("adminID");
														if(con.Ins_Upd_Del("update admin_master set adminName='"+request.getParameter("username")+"',adminEmail='"+request.getParameter("email")+"',adminContact='"+request.getParameter("contactNo")+"' where adminID="+adminID+""))
														{
														out.println("<script>alert('Record Updated Successfully.')</script>");
														}
														else{
														out.println("<script>alert('There was a problem in updating your Information.')</script>");
														}
													}
												}
											%>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
</body>

</html>
<%
	}
	else{
		out.println("<script>alert('SESSION INVALID!!! PLEASE LOGIN AGAIN!!!!!');</script>");
		response.sendRedirect("login.jsp");
	}
%>
