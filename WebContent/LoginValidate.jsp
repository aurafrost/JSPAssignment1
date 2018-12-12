<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Validation</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%
String usr=request.getParameter("username");
String pw=request.getParameter("password");
if(usr!=null&&pw!=null){
	Class.forName("oracle.jdbc.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost","hr","hr");
	String query="select count(*) from login where username='"+usr+"' AND password='"+pw+"'";
	Statement stmt=conn.createStatement();
	ResultSet rs=stmt.executeQuery(query);
	rs.next();
	int i=rs.getInt(1);
	conn.close();
	if(i>=1){
		RequestDispatcher rd=request.getRequestDispatcher("valid.jsp");
		rd.include(request, response);
	}
	else{
		RequestDispatcher rd=request.getRequestDispatcher("invalid.jsp");
		rd.include(request, response);
	}
	
}
else{
	out.println("Empty field detected.");
}
%>
</body>
</html>