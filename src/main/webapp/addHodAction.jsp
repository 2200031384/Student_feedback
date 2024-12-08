<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.DBCon"%>
<%@page import="java.sql.Connection"%>
<%
 String empid = request.getParameter("empid");
 String mobileNumber = request.getParameter("mobileNumber");
 String  name = request.getParameter("name");

 String dep = request.getParameter("dep");
 String email =request.getParameter("email");
 String password = request.getParameter("password");
 Connection con = DBCon.getConnection();
 Statement st = con.createStatement();
 ResultSet rs = st.executeQuery("select * from hod where empid='"+empid+"' ");
 System.out.println(email);
  
 if(rs.next())
 {
		out.print("<script>alert(\"Details Already Exist\"); window.location.replace(\"addHOD.jsp\");</script>");
 }
 else
 {
 int a =st.executeUpdate("insert into hod(empid,mobile,name,email,branch,password)values('"+empid+"','"+mobileNumber+"','"+name+"','"+email+"','"+dep+"','"+password+"')");

 if(a>0)
 {
		out.print("<script>alert(\"HOD Added Sucess\"); window.location.replace(\"addHOD.jsp\");</script>");
 }else{
		out.print("<script>alert(\"HOD Added Fails\"); window.location.replace(\"addHOD.jsp\");</script>");

 }
 }
  
 %>