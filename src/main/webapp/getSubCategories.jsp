<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.DBCon"%>
<%@page import="java.sql.Connection"%>
<option value="">Choose Faculty </option>
<%
String categoryId =request.getParameter("categoryId");
Connection con =DBCon.getConnection();
Statement st =con.createStatement();
ResultSet rs =st.executeQuery("select * from feedbackassessment where scode ='"+categoryId+"'");
while(rs.next())
{
%>
<option value="<%=rs.getString("faculty")%>">  <%=rs.getString("faculty")%>  </option>

<%} 
%>