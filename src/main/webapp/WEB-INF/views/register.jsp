<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>Registration Page</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<br> <br>
			<h1 align="center" style="color: orange">REGISTRATION FORM</h1>
			<br>
		</div>
		<form action="registerToLogin" method="post">
			<div class="row">
				<div class="col-sm-offset-2 col-sm-8">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h2 class="panel-title">Register</h2>
						</div>
						<div class="panel-content">
							<div class="form-group">
								<br>
								<div class="row">
								<div class="col-sm-1">
								<h6 style="color: red">${error1}</h6>
								<h6 style="color: red">${error2}</h6>
								<h6 style="color: red">${error3}</h6>
								<h6 style="color: red">${error4}</h6>
								<h6 style="color: red">${error5}</h6>
								<h6 style="color: red">${error6}</h6>
								</div>
								</div>
								<div class="row">
									<div class="col-sm-1"></div>
									<div class="col-sm-2">
										<label for="firstname"> FirstName: </label>
									</div>
									<div class="col-sm-3">
										<input class="form-control col-sm-3" id="text"
											placeholder="firstname" name="firstname" type="text"
											required="required" />	
									</div>
									<div class="col-sm-0"></div>
									<div class="col-sm-2">
										<label for="lastname"> LastName: </label>
									</div>
									<div class="col-sm-3">
										<input class="form-control col-sm-3" id="text"
											placeholder="lastname" name="lastname" type="text"
											required="required" />
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="row">
									<div class="col-sm-1"></div>
									<div class="col-sm-2">
										<label for="email"> Email:</label>
									</div>
									<div class="col-sm-5">
										<input class="form-control" type="text"
											placeholder="email@id.com" name="email" required="required">
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="row">
									<div class="col-sm-1"></div>
									<div class="col-sm-2">
										<label for="phonenumber"> PhoneNumber:</label>
									</div>
									<div class="col-sm-5">
										<input class="form-control" type="text"
											placeholder="(###)-### - ####" name="phonenumber"
											required="required">
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="row">
									<div class="col-sm-1"></div>
									<div class="col-sm-2">
										<label for="gender"> Gender:</label>
									</div>
									<label class="radio-inline"><input type="radio"
										name="optradio">Male</label> <label class="radio-inline"><input
										type="radio" name="optradio">Female</label>
								</div>
							</div>
							
							<div class="form-group">
								<div class="row">
									<div class="col-sm-1"></div>
									<div class="col-sm-2">
										<label for="username"> UserName: </label>
									</div>
									<div class="col-sm-5">
										<input class="form-control" type="text"
											placeholder="username" name="username" required="required">
									</div>
								</div>
							</div>
							
							<div class="form-group">
								<div class="row">
									<div class="col-sm-1"></div>
									<div class="col-sm-2">
										<label for="password"> Password: </label>
									</div>
									<div class="col-sm-5">
										<input class="form-control" type="password"
											placeholder="password" name="password" required="required">
									</div>
								</div>
							</div>
							
							<div class="form-group">
								<div class="row">
									<div class="col-sm-1"></div>
									<div class="col-sm-2">
										<label for="confirmpassword"> Confirm Password: </label>
									</div>
									<div class="col-sm-5">
										<input class="form-control" type="password"
											placeholder="confirm password" name="confirmpassword" required="required">
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="row">
									<div class="col-sm-1"></div>
									<div class="col-sm-2">
										<label for="message"> Message:</label>
									</div>
									<label class="checkbox-inline"><input type="checkbox"
										name="message">Require message alert</label>
								</div>
							</div>
							
							<div class="form-group">
							<div class="row">
							<div class="col-sm-3"></div>
							<div class="col-sm-3">
							<button type="submit" class="btn btn-primary" value="Register">Register</button>
							</div>
							</div>
							</div>
							</div>
						</div>
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