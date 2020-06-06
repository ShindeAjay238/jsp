<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
h1
{
 color:red;
 }
</style>
<meta charset="ISO-8859-1">
<title>Weclome to area</title>
</head>
<body>
<h1>Welcome to member area
</h1>
<a href="login.jsp" >Logout here</a>

<%
String username = null ,sessionID = null;
/* Cookie [] cookies = request.getCookies();
if(cookies != null )
{
	for(Cookie cookie : cookies){
		if(cookie.getName().equals("username"))
		{
			username = cookie.getValue();
		}
		if(cookie.getName().equals("JSESSIONID")){
			sessionID = cookie.getValue();
		}
	}

	
}
 */
 /* 
 if(sessionID == null || username == null){
	
	response.sendRedirect("login.jsp");
} */
 
 
if(request.getSession().getAttribute("username")== null){
	 
	 response.sendRedirect("login.jsp");
 }
else{
	username = request.getSession().getAttribute("username").toString();
	sessionID = request.getSession().getId();
	
}

%><%-- 
username<%=username%></br>
Current Session:<%=sessionID%></br>
 --%>MemberArea!!
 User Name: ${param.userName}
 </br>
<form action="<%= request.getContextPath()%>/MemberAreaController" method="get">
<input type="hidden" name="action" value="destroy">
<input type="submit" Value="Logout">

</form>
</body>
</html>