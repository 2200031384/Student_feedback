<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.DBCon"%>
<%@page import="java.sql.Connection"%>
<%
 String semi = request.getParameter("semi");
 String subject = request.getParameter("subject");
String brnach=(String)session.getAttribute("branch");

String sece=request.getParameter("sece");

 Connection con = DBCon.getConnection();
 Statement st = con.createStatement();

 int a =st.executeUpdate("insert into assignsub(scode,semi,branch,section)values('"+subject+"','"+semi+"','"+brnach+"','"+sece+"')");
 if(a>0)
 {
		out.print("<script>alert(\"Subject Assigned Success\"); window.location.replace(\"assignSubject.jsp\");</script>");
 }else{
		out.print("<script>alert(\"Subject Assigned Fails\"); window.location.replace(\"assignSubject.jsp\");</script>");

 }
 
  
 %>