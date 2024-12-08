<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.DBCon"%>
<%@page import="java.sql.Connection"%>
 <html>
 <div class="container">
  <h2>View Elective Subjects </h2>
<table border ="2" class="table table-dark table-striped">
<thead>
<th> ID</th>
<th>SubjectName</th>

<%
 String empid = request.getParameter("empid");
 String mobileNumber = request.getParameter("mobileNumber");
 String  name = request.getParameter("name");
 String email =request.getParameter("email");
 String password = request.getParameter("password");

 String sece = request.getParameter("sece");
 String semi =request.getParameter("semi");
 String dep=(String)session.getAttribute("branch");
 Connection con = DBCon.getConnection();
 Statement st = con.createStatement();
 ResultSet rs = st.executeQuery("select * from student where stuid='"+empid+"' and email='"+email+"' and sece='"+sece+"' ");
  
 if(rs.next())
 {
		out.print("<script>alert(\"Details Already Exist\"); window.location.replace(\"addStudent.jsp\");</script>");
 }
 else
 {
 int a =st.executeUpdate("insert into student(stuid,mobile,name,email,branch,sece,semi,password)values('"+empid+"','"+mobileNumber+"','"+name+"','"+email+"','"+dep+"','"+sece+"','"+semi+"','"+password+"')");
 if(a>0)
 {
		out.print("<script>alert(\"Student Added Sucess\"); window.location.replace(\"addStudent.jsp\");</script>");
 }else{
		out.print("<script>alert(\"Student Added Fails\"); window.location.replace(\"addStudent.jsp\");</script>");

 }
 }
  
 %>