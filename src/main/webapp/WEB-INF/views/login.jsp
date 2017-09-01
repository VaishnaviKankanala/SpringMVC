<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>Login Page</title>
</head>
<body>

	<div class="container-fluid">
		<div class="row">
			<br>
			<h1 align="center" style="color: orange">Application Name</h1>
			<br>
		</div>
		<br>
		<form action="login" method="post">
			<div class="row">
				<br>
				<div class="col-sm-offset-4 col-sm-5">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h2 class="panel-title">Login Here</h2>
						</div>
						<div class="panel-content">
							<div class="form-group">
								<div class="row">
									<div class="col-sm-1">
										<h6 style="color: red">${loginerror}</h6>
									</div>
								</div>
								<div class=row>
									<br>
									<div class="col-sm-1"></div>
									<div class="col-sm-3">
										<label class="control-label"> UserName: </label>
									</div>
									<div class="col-sm-6">
										<div class="input-group">
											<div class="input-group-addon">
												<span class="glyphicon glyphicon-user"></span>
											</div>
											<input class="form-control col-sm-3"
												placeholder="Enter username" name="username" type="text"
												required="required" />
										</div>
									</div>
								</div>
								<br />
							</div>
							<div class="form-group">
								<div class=row>
									<div class="col-sm-1"></div>
									<div class="col-sm-3">
										<label class="control-label "> Password:
										</label>
									</div>
									<div class="col-sm-6">
										<div class="input-group">
											<div class="input-group-addon">
												<span class="glyphicon glyphicon-lock"></span>
											</div>
											<input class="form-control col-sm-3"
												placeholder="Enter password" name="password" type="password"
												required="required" />
										</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="row">
									<div class="col-sm-5"></div>
									<div class="col-sm-7">
										<button type="submit" class="btn btn-primary">Submit</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
		<form action="linkToRegisterTab" method="get">
			<div class="row">
				<div class="col-sm-4"></div>
				<div class="col-sm-1">
					<label>New User</label>
				</div>
				<div class="col-sm-0">
					<button type="submit" class="btn btn-success button">
						Register</button>
				</div>
			</div>
		</form>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>