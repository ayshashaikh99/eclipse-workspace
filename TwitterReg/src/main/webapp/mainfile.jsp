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
String a,b;
a=request.getParameter("t1");
b=request.getParameter("t2");

Class.forName("com.mysql.jdbc.Driver");
Connection con;
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsptask","root","");

PreparedStatement ps=con.prepareStatement("insert into twitterreg(tname,temail) values ('"+a+"','"+b+"')");

int i=ps.executeUpdate();
if(i>0){
	out.println("<script>");
	out.println("alert('Record save')");
	out.println("window.location.href='display.jsp'");
	out.println("</script>");
}
else{
	out.println("<script>alert('Something wrong')</script>");
}

%>

</body>
</html>