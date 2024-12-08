  <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.DBCon"%>
<%@page import="java.sql.Connection"%>

<%
 String empid  = request.getParameter("empid");
 String otp = request.getParameter("otp");
 Connection con =DBCon.getConnection();
 Statement st =con.createStatement();
 System.out.println("select * from hod where empid  ='"+empid+"' and otp ='"+otp+"'");
 ResultSet rs =st.executeQuery("select * from hod where empid  ='"+empid+"' and otp ='"+otp+"'");
 if(rs.next())
 {
	 session.setAttribute("mobileNumber",empid);
	 response.sendRedirect("HODHome.jsp");
 }
 else
 {
		out.print("<script>alert(\"Wrong OTP\"); window.location.replace(\"HodLogin.jsp\");</script>");
 }
 %>