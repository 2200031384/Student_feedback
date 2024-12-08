<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@include file="mhead.jsp" %>
<head>
 <style type="text/css">
 body {
	background-image: url("images/m.png");
	background-repeat: no-repeat;
  background-size: cover;
}
 </style>
 </head>
<%
 String empid =request.getParameter("empid");
String password = request.getParameter("password");
 
 Connection con =DBCon.getConnection();
 Statement st= con.createStatement();
 Statement st1= con.createStatement();
 ResultSet rs =st.executeQuery("select * from faculty where empid='"+empid+"' and password='"+password+"'");
 if(rs.next())
 {
	 session.setAttribute("empid", empid);
	 session.setAttribute("id",rs.getInt("fId"));
	 session.setAttribute("email",rs.getString("email"));
	 session.setAttribute("name",rs.getString("name"));
	 session.setAttribute("branch",rs.getString("branch"));
	 session.setAttribute("mobileNumber",empid);
	 response.sendRedirect("FacultyHome.jsp");
	
	 %>
	 
	
 <%}
 else
 {
		out.print("<script>alert(\"Invalid Employee Details\"); window.location.replace(\"facultyLogin.jsp\");</script>");

 }%>
	
	
	 
  