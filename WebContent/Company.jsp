<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Results</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%
String company=request.getParameter("company1");
try {
	Class.forName("oracle.jdbc.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost","hr","hr");
	Statement stmt = conn.createStatement();
	String query="select * from product where company='"+company+"'";
	ResultSet rs=stmt.executeQuery(query);
	RequestDispatcher rd=request.getRequestDispatcher("GetDetails.html");
	
	while(rs.next()) {
		response.getWriter().print("Product no: "+rs.getInt(1)+" Product name: "+rs.getString(2)+" Price: "+rs.getDouble(3)+" Company: "+rs.getString(4));
		response.getWriter().append("<br>");
	}
	conn.close();
	rd.include(request, response);
}
catch(Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
</body>
</html>