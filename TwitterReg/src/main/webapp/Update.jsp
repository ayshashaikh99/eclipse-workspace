<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int x;
x=Integer.parseInt(request.getParameter("t1"));
String y,z;
y=request.getParameter("t2");
z=request.getParameter("t3");

Class.forName("com.mysql.jdbc.Driver");
Connection con;
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsptask","root","");

PreparedStatement ps=con.prepareStatement("update twitterreg set tname='"+y+"',temail='"+z+"' where tid='"+x+"'");
ps.executeUpdate();
response.sendRedirect("display.jsp");



%>
</body>
</html>