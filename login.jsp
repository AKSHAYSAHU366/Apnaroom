<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%-- <!DOCTYPE html>
<html>
	<head>


	</head>
	<body>
		<h2>USER LOGIN</h2>
		<fieldset>
			<legend><b>Login:</b></legend>
			<form action="login_page.jsp" method="post">
			<table>
				<tr><td>USER NAME</td><td><input type="text" name="username"></td></tr>
				<tr><td>PASS WORD</td><td><input type="password" name="password"></td></tr>
				<tr><td></td><td><button type="submit">Login</button></td></tr>
			</table>
			</form>
		</fieldset>
	</body>
</html> --%>

<!DOCTYPE html>
<html>
  <head>
    <title><b>LOGIN PAGE</b></title>
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />

    <link
      href="https://fonts.googleapis.com/css2?family=Patrick+Hand&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="login_page.css" />
  </head>

  <body>
    <div class="background-image">
      <form action="login_page.jsp" method="post" class="box">
        <h1 class="heading">LOGIN</h1>
        <input type="text" name="username" placeholder="username" />
        <input type="password" name="userpassword" placeholder="password" />
        <a href="#forget-password" target="_blank">Forget Password</a>
        <input type="submit" name="" value="LOGIN" />
      </form>
    </div>
  </body>
</html>
