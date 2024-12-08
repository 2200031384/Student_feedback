<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.DBCon"%>
<%@ include file="fhead.jsp" %>

<%@page import="java.sql.Connection"%>
<%
 String semi = request.getParameter("semi");
 String sece = request.getParameter("sece");
String dep=request.getParameter("dep");
Connection con = DBCon.getConnection();
Statement st = con.createStatement();
Statement st1 = con.createStatement();
Statement st3 = con.createStatement();

ResultSet rs = st.executeQuery("select * from assignsub where section='"+sece+"' and semi='"+semi+"' and branch='"+dep+"'");



 
 %>
  <html>
<head> <center><h1> Add TimeTable</h1> </head>
<body>
<div class="col-md-4"></div>
<div class="col-md-4">

<form action="addTimetableAction2.jsp">
 <input type="hidden" name="semi" value="<%=semi%>">
  <input type="hidden" name="sece" value="<%=sece%>">
  <input type="hidden" name="dep" value="<%=dep%>">
 
 <div>
<label>Choose Subject</label>

<select class="form-control" name="subject">

<% while(rs.next())
{
ResultSet rs1=st1.executeQuery("select * from subject where scode='"+rs.getString("scode")+"'");
if(rs1.next()){
ResultSet rs3=st3.executeQuery("select * from timetable where scode='"+rs.getString("scode")+"'  and section='"+sece+"'");
if(rs3.next()){
	
}else{%>
		<option value="<%=rs.getString("scode")%>"><%=rs.getString("scode") %>-<%=rs1.getString("stype") %></option>
	
<%}}} %>
</select>
</div>
<br>
<div>
<input type="submit" value="submit " class="btn btn-primary">
</div>

</form>
</div>
<div class="col-md-4"></div>

</body>

</html>