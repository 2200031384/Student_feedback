<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.DBCon"%>
<%@page import="java.sql.Connection"%>
<%
 String empid = request.getParameter("empid");
 String mobileNumber = request.getParameter("mobileNumber");
 String  name = request.getParameter("name");
 String password = request.getParameter("password");

 String email =request.getParameter("email");
 Connection con = DBCon.getConnection();
 Statement st = con.createStatement();
 String dep=(String)session.getAttribute("branch");
 ResultSet rs = st.executeQuery("select * from faculty where empid='"+empid+"' and branch='"+dep+"' ");
  
 if(rs.next())
 {
		out.print("<script>alert(\"Details Already Exist\"); window.location.replace(\"addFaculty.jsp\");</script>");
 }
 else
 {
 int a =st.executeUpdate("insert into faculty(empid,mobile,name,email,branch,password)values('"+empid+"','"+mobileNumber+"','"+name+"','"+email+"','"+dep+"','"+password+"')");
 if(a>0)
 {
		out.print("<script>alert(\"Faculty Added Sucess\"); window.location.replace(\"addFaculty.jsp\");</script>");
 }else{
		out.print("<script>alert(\"Faculty Added Fails\"); window.location.replace(\"addFaculty.jsp\");</script>");

 }
 }
  
 %>