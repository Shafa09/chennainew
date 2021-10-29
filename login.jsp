<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*,mypack.*"  %>

<%

String Username=request.getParameter("Username");
String Password=request.getParameter("Password");

Connection cn=MySqlConnect.getCn();

PreparedStatement ps=cn.prepareStatement("select Username from user where Username=? and Password=?");
ps.setString(1, Username);
ps.setString(2, Password);
ResultSet rs=ps.executeQuery();
if(rs.next()) {
	response.sendRedirect("city.html");
	 
}else {
	response.sendRedirect("error.html");
}




%>
	 
	 
	 

	

</body>
</html>