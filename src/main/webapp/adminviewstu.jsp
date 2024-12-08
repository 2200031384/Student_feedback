 <%@ include file="ahead.jsp" %>
 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.DBCon"%>
<%@page import="java.sql.Connection"%>
 <html>
 <div class="container">
  <h2>View Students </h2>
<table border ="2" class="table table-dark table-striped">
<thead>
<th>Student ID</th>
<th> Mobile Number</th>
<th> Name </th>
<th> Branch </th>
<th> Email </th>
<th>Section</th>
<th>Semester</th>

<%
Connection con =DBCon.getConnection();
Statement st=con.createStatement();
ResultSet rs =st.executeQuery("select * from student  ");
while(rs.next())
{
	%>
	<tr>
	<td><%=rs.getString("stuid") %></td>
	 <td><%=rs.getString("mobile") %></td>
	 <td><%=rs.getString("name") %></td>
	 <td><%=rs.getString("branch") %></td>
	 <td><%=rs.getString("email") %></td>
	 
	 	 <td><%=rs.getString("sece") %></td>
	 	 <td><%=rs.getString("semi") %></td>
	 
	 
	  
	
	 
	
	</tr>
<%}%>
</table>
</div>
</form>
</html>
 