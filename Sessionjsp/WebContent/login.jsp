<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("p").click(function(){
    $(this).hide();
  });
});
</script>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<style>
p
{
color:aqua;
}
</style>

<body>
<form action="<%= request.getContextPath() %>/SiteController" method="post">
UserName : <input type="text" name="username" placeholder="enter user name"></br></br>
Password : <input type="password" name="password"> </br>
<input type="hidden" name="action">
<input type="submit" value="Submit"> 
</form>
<p>login here click to log</p>
</body>
</html>