 <%@ include file="ahead.jsp" %>
 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.DBCon"%>
<%@page import="java.sql.Connection"%>
 <html>
 <div class="container">
  <h2>View HOD's </h2>
<table border ="2" class="table table-dark table-striped">
<thead>
<th>Employee ID</th>
<th> Mobile Number</th>
<th> Name </th>
<th> Branch </th>
<th> Email </th>
<th>Update</th>

<%
 
Connection con =DBCon.getConnection();
Statement st=con.createStatement();
ResultSet rs =st.executeQuery("select * from hod");
while(rs.next())
{
	String url="updatehod.jsp?id="+rs.getString("hId");
	
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
 