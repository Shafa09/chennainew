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
String Phone=request.getParameter("Phone");
String Email=request.getParameter("Email");

try{
	Connection cn=MySqlConnect.getCn();
	Statement ps=cn.createStatement();
	ps.executeUpdate("insert into user (Username,Password,Phone,Email) values('"+Username+"','"+Password+"','"+Phone+"','"+Email+"')");
	response.sendRedirect("index.html");
}
catch(Exception e){
	response.sendRedirect("error.html");
}
%>



</body>
</html>