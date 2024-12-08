<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.DBCon"%>
<%@page import="java.sql.Connection"%>
<%
 String semi = request.getParameter("semi");
 String subject = request.getParameter("subject");
String dep=request.getParameter("dep");
String sece=request.getParameter("sece");
String empid=(String)session.getAttribute("empid");


 Connection con = DBCon.getConnection();
 Statement st = con.createStatement();
 ResultSet rs = st.executeQuery("select * from timetable where scode='"+subject+"' and semi='"+semi+"' and branch='"+dep+"' and fid='"+empid+"' and section='"+sece+"' ");
  
 if(rs.next())
 {
		out.print("<script>alert(\"Details Already Exist\"); window.location.replace(\"addTimetable.jsp\");</script>");
 }
 else
 {
 int a =st.executeUpdate("insert into timetable(scode,semi,branch,section,fid)values('"+subject+"','"+semi+"','"+dep+"','"+sece+"','"+empid+"')");
 if(a>0)
 {
		out.print("<script>alert(\"Subject Assigned Success\"); window.location.replace(\"addTimetable.jsp\");</script>");
 }else{
		out.print("<script>alert(\"Subject Assigned Fails\"); window.location.replace(\"addTimetable.jsp\");</script>");

 }
 }
  
 %>