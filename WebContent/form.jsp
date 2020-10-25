<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%
	if (session.getAttribute("login") != null) //check login session user not access or back to register.jsp page
{
	response.sendRedirect("welcome.jsp");
}
%>
<%
	if (request.getAttribute("successMsg") != null) {
	out.println(request.getAttribute("successMsg")); //register success message
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/register.css">
</head>
<body>

	<form class="form-register" action="welcomeU.jsp" method="get">
		<div class="form-register-with-email">

			<div class="form-white-background">

				<div class="form-title-row">
					<h1>Register</h1>
				</div>

				<div class="form-row">
					<label> <span>Firstname</span>
					</label> <input type="text" id="fname" placeholder="Enter firstname">
				</div>
				<div class="form-row">
					<label> <span>Lastname</span>
					</label> <input type="text" id="lname" placeholder="Enter lastname">
				</div>

				<div class="form-row">
					<label> <span>Email</span>
					</label> <input type="email" id="email" placeholder="Enter email">
				</div>

				<div class="form-row">
					<label> <span>Password</span>
					</label> <input type="password" id="password"
						placeholder="Enter password">
				</div>

				<div class="form-row">
					<label> <span>Confirm password</span>
					</label> <input type="password" id="confirm-password"
						placeholder="Confirm password">
				</div>

				<div class="form-row">
					<label> <span>Country</span>
					</label> <select name="item">
						<option value="1">Ho Chi Minh</option>
						<option value="2">Ha Noi</option>
						<option value="3">Dong Nai</option>
					</select>


				</div>
				<div class="combo-title">
					<label><span>Gender</span> </label>
				</div>
				<div class="test">

					<input class="combo-box" type="radio" id="male" name="gender"
						value="male"> <label for="male">Male</label> <br> <input
						class="combo-box" type="radio" id="female" name="gender"
						value="female"> <label for="female">Female</label> <br>
					<input class="combo-box" type="radio" id="other" name="gender"
						value="other"> <label for="other">Other</label>
				</div>
				<div class="combo-title">
					<label><span>Hobbies</span> </label>
				</div>
				<div class="test">
					<input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
					<label for="vehicle1">Music</label><br> <input
						type="checkbox" id="vehicle2" name="vehicle2" value="Car">
					<label for="vehicle2">Game</label><br> <input
						type="checkbox" id="vehicle3" name="vehicle3" value="Boat">
					<label for="vehicle3">...</label><br>
				</div>
				<input type="submit" name="btn_primary" value="Register">
			</div>

		</div>


	</form>

</body>
</html>