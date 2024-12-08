  <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.DBCon"%>
<%@page import="java.sql.Connection"%>

<%
 String empid  = request.getParameter("empid");
 String otp = request.getParameter("otp");
 Connection con =DBCon.getConnection();
 Statement st =con.createStatement();
 ResultSet rs =st.executeQuery("select * from student where stuid  ='"+empid+"' and otp ='"+otp+"'");
 if(rs.next())
 {
	 session.setAttribute("mobileNumber",empid);
	 response.sendRedirect("StudentHome.jsp");
 }
 else
 {
		out.print("<script>alert(\"Wrong OTP\"); window.location.replace(\"studentLogin.jsp\");</script>");
 }
 %>