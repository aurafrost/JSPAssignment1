<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Store</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%
	int prodno=Integer.parseInt(request.getParameter("prodno"));
String prodname=request.getParameter("prodname");
double price=Double.parseDouble(request.getParameter("price"));
String company=request.getParameter("company");

	Class.forName("oracle.jdbc.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost", "hr", "hr");
	String query = "insert into Product values(?,?,?,?)";
	PreparedStatement stmt = conn.prepareStatement(query);
	stmt.setInt(1, prodno);
	stmt.setString(2, prodname);
	stmt.setDouble(3, price);
	stmt.setString(4, company);
	stmt.executeUpdate();
	conn.commit();
	conn.close();
	/* RequestDispatcher rd = request.getRequestDispatcher("GetDetails.html");
	rd.include(request, response); */
	
%>
<jsp:forward page="GetDetails.html"/>
</body>
</html>