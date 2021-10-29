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
String BusNo=request.getParameter("BusNo");
String BusName=request.getParameter("BusName");
String FromCity=request.getParameter("FromCity");
String ToCity=request.getParameter("ToCity");
String Date=request.getParameter("Date");
String Time=request.getParameter("Time");
String TicketPrice=request.getParameter("TicketPrice");

try{
	Connection cn=MySqlConnect.getCn();
	Statement ps=cn.createStatement();
	ps.executeUpdate("insert into bus(Name,BusNo,BusName,FromCity,ToCity,Date,Time,TicketPrice) values('"+Name+"','"+BusNo+"','"+BusName+"','"+FromCity+"','"+ToCity+"','"+Date+"','"+Time+"','"+TicketPrice+"')");
	response.sendRedirect("success.html");
}
catch(Exception e){
	response.sendRedirect("error.html");
}
%>
</body>
</html>