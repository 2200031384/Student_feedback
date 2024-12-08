 <%@ include file="hodHead.jsp" %>
 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.DBCon"%>
<%@page import="java.sql.Connection"%>
 <html>
 <div class="container">
  <h2>View Faculty </h2>
<table border ="2" class="table table-dark table-striped">
<thead>
<th>Employee ID</th>
<th> Mobile Number</th>
<th> Name </th>
<th> Branch </th>
<th> Email </th>
<th>Update</th>

<%
String branch=(String)session.getAttribute("branch");
Connection con =DBCon.getConnection();
Statement st=con.createStatement();
ResultSet rs =st.executeQuery("select * from faculty where branch='"+branch+"' ");
while(rs.next())
{
	String url="updatefaculty.jsp?id="+rs.getString("fId");

	%>
	<tr>
	<td><%=rs.getString("empid") %></td>
	 <td><%=rs.getString("mobile") %></td>
	 <td><%=rs.getString("name") %></td>
	 <td><%=rs.getString("branch") %></td>
	 <td><%=rs.getString("email") %></td>
	 	 <td><a href="<%=url%>"><button class="btn btn-primary">Update</button></a></td>
	 
	 
	 
	  
	
	 
	
	</tr>
<%}%>
</table>
</div>
</form>
</html>
 