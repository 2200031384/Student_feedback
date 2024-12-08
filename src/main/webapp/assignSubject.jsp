 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ include file="hodHead.jsp" %>
 <%
 Connection con = DBCon.getConnection();

 Statement statement=con.createStatement();
 String branch=(String)session.getAttribute("branch");
 ResultSet rs =statement.executeQuery("select * from subject where branch='"+branch+"'");

 %>
 <html>
<head> <center><h1> Assign Subject</h1> </head>
<body>
<div class="col-md-4"></div>
<div class="col-md-4">

<form action="assignsubjectAction.jsp">

<div>
<label>Choose Semester</label>
<select class="form-control" name="semi">
<option value="1-1">1-1</option>
<option value="1-2">1-2</option>
<option value="2-1">2-1</option>
<option value="2-2">2-2</option>
<option value="3-1">3-1</option>
<option value="3-2">3-2</option>
<option value="4-1">4-1</option>
<option value="4-2">4-2</option>

</select>
</div>
<div>
<label>Choose Subject</label>

<select class="form-control" name="subject">

<% while(rs.next())
{%>

<option value="<%=rs.getString("scode")%>"><%=rs.getString("scode") %></option>
	 
<%} %>
</select>
</div>
<div>
<label>Choose Section</label>
<select class="form-control" name="sece">
<option value="a">A</option>
<option value="b">B</option>
<option value="c">C</option>
<option value="d">D</option>


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
 