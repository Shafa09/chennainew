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
String Name=request.getParameter("Name");
String Phone=request.getParameter("Phone");
String hotel=request.getParameter("hotel");
String room=request.getParameter("room");

try{
	Connection cn=MySqlConnect.getCn();
	Statement ps=cn.createStatement();
	ps.executeUpdate("insert into booking(Name,Phone,hotel,room) values('"+Name+"','"+Phone+"','"+hotel+"','"+room+"')");
	response.sendRedirect("success.html");
}
catch(Exception e){
	response.sendRedirect("error.html");
}
%>
</body>
</html>