<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.DBCon"%>
<%@page import="java.sql.Connection"%>
<%
 String scode = request.getParameter("scode");
 String sname = request.getParameter("sname");
 String stype = request.getParameter("stype");

String brnach=(String)session.getAttribute("branch");
 Connection con = DBCon.getConnection();
 Statement st = con.createStatement();
 ResultSet rs = st.executeQuery("select * from subject where scode='"+scode+"' and sname='"+sname+"' and branch='"+brnach+"' ");
  
 if(rs.next())
 {
		out.print("<script>alert(\"Details Already Exist\"); window.location.replace(\"addSubject.jsp\");</script>");
 }
 else
 {
 int a =st.executeUpdate("insert into subject(scode,sname,branch,stype)values('"+scode+"','"+sname+"','"+brnach+"','"+stype+"')");
 if(a>0)
 {
		out.print("<script>alert(\"Subject Added Sucess\"); window.location.replace(\"addSubject.jsp\");</script>");
 }else{
		out.print("<script>alert(\"Subject Added Fails\"); window.location.replace(\"addSubject.jsp\");</script>");

 }
 }
  
 %>