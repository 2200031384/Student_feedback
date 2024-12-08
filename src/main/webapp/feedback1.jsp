<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.DBCon"%>
<%@page import="java.sql.Connection"%>
 


<%
 String punctuality = request.getParameter("punctuality");
 String subknowledge = request.getParameter("subknowledge");
 String  teach = request.getParameter("teach");
 String clarity =request.getParameter("clarity");
 String  fid = request.getParameter("fid");
 String scode =request.getParameter("scode");
 String maintain = request.getParameter("maintain");
 String doubts =request.getParameter("doubts");
 String coverage =request.getParameter("coverage");
 String implementation = request.getParameter("implementation");
String experience = request.getParameter("experience");
 String revision =request.getParameter("revision");
 String branch=(String)session.getAttribute("branch");
 String sece=(String)session.getAttribute("sece");
 String semi=(String)session.getAttribute("semi");
 String feedbackby=(String)session.getAttribute("empid");
 Connection con = DBCon.getConnection();
 Statement st = con.createStatement();
 ResultSet rs = st.executeQuery("select * from feedback where feebackby='"+feedbackby+"' and scode='"+scode+"'");
  
 if(rs.next())
 {
		out.print("<script>alert(\"Feedback Already Done\"); window.location.replace(\"addStudent.jsp\");</script>");
 }
 else
 {
 int a =st.executeUpdate("insert into feedback(Punctuality,Subknowledge,Teaching,Clarity,discipline,cDoubts,Implementation,Revision,sCoverage,sExperience,scode,faculty,semi,branch,sece,feebackby)values('"+punctuality+"','"+subknowledge+"','"+teach+"','"+clarity+"','"+maintain+"','"+doubts+"','"+implementation+"','"+revision+"','"+coverage+"','"+experience+"','"+scode+"','"+fid+"','"+semi+"','"+branch+"','"+sece+"','"+feedbackby+"')");
 if(a>0)
 {
		out.print("<script>alert(\"Feedback Added Sucess\"); window.location.replace(\"viewSubjects.jsp\");</script>");
 }else{
		out.print("<script>alert(\"Feedback Added Fails\"); window.location.replace(\"viewSubjects.jsp\");</script>");

 }
 }
  
 %>