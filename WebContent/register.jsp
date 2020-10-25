<%@ page import="java.sql.*" %>  

<%
if(session.getAttribute("login")!=null) //check login session user not access or back to register.jsp page
{
	response.sendRedirect("welcome.jsp");
}
%>



<!DOCTYPE html>
<html>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		
	<title>Register : onlyxscript.blogspot.com</title>


	<link rel="stylesheet" href="css/login-register.css">
	
	<!-- javascript for registeration form validation-->
	<script>	
	
		
	</script>	

</head>

<body>

    <ul>
        <li><a href="http://onlyxscript.blogspot.in/2018/01/login-and-register-using-jsp-mysql.html">Back to Toturial</a></li>
    </ul>

    <div class="main-content">

        <form class="form-register" method="post" onsubmit="return validate();">

            <div class="form-register-with-email">

                <div class="form-white-background">

                    <div class="form-title-row">
                        <h1>Register</h1>
                    </div>
				   
					<p style="color:green">				   		
					<%
					if(request.getAttribute("successMsg")!=null)
					{
						out.println(request.getAttribute("successMsg")); //register success message
					}
					%>
					</p>
				   
		
				   
                    <div class="form-row">
                        <label>
                            <span>Firstname</span>
                            <input type="text" name="txt_firstname" id="fname" placeholder="enter firstname">
                        </label>
                    </div>
					<div class="form-row">
                        <label>
                            <span>Lastname</span>
                            <input type="text" name="txt_lastname" id="lname" placeholder="enter lastname">
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>Email</span>
                            <input type="text" name="txt_email" id="email" placeholder="enter email">
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>Password</span>
                            <input type="password" name="txt_password" id="password" placeholder="enter password">
                        </label>
                    </div>

					<input type="submit" name="btn_register" value="Register">
					
                </div>
				
<!--                 <a href="index.jsp" class="form-log-in-with-existing">Already have an account? <b> Login here </b></a>
 -->
            </div>

        </form>

    </div>

</body>

</html>
