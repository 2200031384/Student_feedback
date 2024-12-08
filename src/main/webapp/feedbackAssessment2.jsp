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
 
 String regulaion = request.getParameter("regulation");
String year = request.getParameter("year");
 String branch =request.getParameter("dep");
 String sece =request.getParameter("sece");

 Connection con = DBCon.getConnection();
 Statement st = con.createStatement();
  


 int a =st.executeUpdate("insert into feedbackAssessment(Punctuality,Subknowledge,Teaching,Clarity,discipline,cDoubts,Implementation,Revision,sCoverage,sExperience,scode,faculty,semi,branch,sece,regulation)values('"+punctuality+"','"+subknowledge+"','"+teach+"','"+clarity+"','"+maintain+"','"+doubts+"','"+implementation+"','"+revision+"','"+coverage+"','"+experience+"','"+scode+"','"+fid+"','"+year+"','"+branch+"','"+sece+"','"+regulaion+"')");
 if(a>0)
 {
		out.print("<script>alert(\"Feedback Added Sucess\"); window.location.replace(\"feedbackAssesment.jsp\");</script>");
 }else{
		out.print("<script>alert(\"Feedback Added Fails\"); window.location.replace(\"feedbackAssesment.jsp\");</script>");

 }
 
 
  
 %>