 <%@ include file="shead.jsp" %>
 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.DBCon"%>
<%@page import="java.sql.Connection"%>
 <html>
 <div class="container">
  <h2>View My Class Subjects </h2>
<table border ="2" class="table table-dark table-striped">
<thead>
<th>Faculty ID</th>
<th> Subject Code</th>


<th>Feedback</th>

<%
String branch=(String)session.getAttribute("branch");
String sece=(String)session.getAttribute("sece");
String semi=(String)session.getAttribute("semi");

Connection con =DBCon.getConnection();
Statement st=con.createStatement();
ResultSet rs =st.executeQuery("select * from timetable where branch='"+branch+"' and semi='"+semi+"' and section='"+sece+"'");
while(rs.next())
{
	String url="feedback.jsp?fid="+rs.getString("fId")+"&scode="+rs.getString("scode");

	%>
	<tr>
	<td><%=rs.getString("fid") %></td>
	 <td><%=rs.getString("scode") %></td>
	

	 	 <td><a href="<%=url%>"><button class="btn btn-primary">Feedback</button></a></td>
	 
	 
	 
	  
	
	 
	
	</tr>
<%}%>
</table>
</div>
</form>
</html>
 