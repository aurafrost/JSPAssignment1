<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Results</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%
String empno=request.getParameter("empno");
if(empno!=null){
	Class.forName("oracle.jdbc.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost","hr","hr");
	String query="select * from employees where EMPLOYEE_ID="+empno;
	Statement stmt=conn.createStatement();
	ResultSet rs=stmt.executeQuery(query);
	
	while(rs.next()) {
		String s=rs.getString(2);
		//fails for some reason. rs.next() seems to always be true.
		if(s.isEmpty()){
			out.println("Unregistered user.");
			break;
		}
		else{
			out.print("Name: "+rs.getString(2)+" "+rs.getString(3)+
			"<br>Salary: "+rs.getDouble(8)+
			"<br>Department: ");//+rs.getInt(11));
			int i=rs.getInt(11);
			query="select department_name from departments where department_id="+i;
			ResultSet rs2=stmt.executeQuery(query);
			rs2.next();
			out.print(rs2.getString(1));
		}
	}
	conn.close();
}
else{
	out.println("Unregistered user.");
}
%>
</body>
</html>