<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<link rel="stylesheet" href="styles.css" />
</head>
<body>
	<div style="margin-left: auto;margin-right: auto;width: 350px;">
	<form action="adminLogin" method="post" style="background-color: rgba(255,255,255,0.13);position: absolute;margin-left: auto;margin-right: auto;border-radius: 10px;backdrop-filter: blur(2px);border: 2px solid rgba(255,255,255,0.1);box-shadow: 0 0 40px rgba(8,7,16,0.6);padding: 20px 35px;">
		<h3 style="text-align:center;">Admin Login</h3>
		<input type="text" name="uname" placeholder="Enter username"/><br/>
		<input type="password" name="pass" placeholder="Enter password"/><br/>
		<input style="display:block; margin: 0 auto; width: 100px;height: 30px;" type="Submit" value="Login"/>
		<br>
		<h4 style="text-align: center;"><a style="display:block; margin: 0 auto; width: 100px;height: 30px;color:#0000CD" href="index.jsp">homepage</a></h4>
	</form>
	</div>
</body>
</html>