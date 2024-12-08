<%@page import="database.DBCon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String fid = request.getParameter("fid");
String scode = request.getParameter("scode");
Connection con =DBCon.getConnection();
Statement st=con.createStatement();
ResultSet rs =st.executeQuery("select * from faculty where empid='"+fid+"' ");
if(rs.next()){
	

%>

 <%@ include file="shead.jsp" %>
 
 <html>
<head> <center>
 </head>
<body>
<div class="col-md-4"></div>
<div class="col-md-4">
<h3>Faculty name : <%=rs.getString("name") %></h3>
<form action="feedback1.jsp">

<input type="hidden" value="<%=fid%>" name="fid" >
<input type="hidden" value="<%=scode%>" name="scode" >

<div>
<label>Punctuality of the Teacher </label>
<select class="form-control" name="punctuality">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>


</select>
</div>
<div>
<label>Subject Knowledge</label>
<select class="form-control" name=subknowledge>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
</select>
</div>
<div>
<label>Teaching with Innovative Ideas & Subject Meterials</label>
<select class="form-control" name="teach">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
</select>
</div>
<div>
<label>Audibillity and Clarity of Expression and communication</label>
<select class="form-control" name="clarity">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
</select>
</div>
<div>
<label>Ability to maintain the discipline in the class</label>
<select class="form-control" name="maintain">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
</select>
</div>
<div>
<label>Clarification of Doubts</label>
<select class="form-control" name="doubts">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
</select>
</div>
<div>
<label>Implementation of Audio-Video Equipment in the class</label>
<select class="form-control" name="implementation">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
</select>
</div>
<div>
<label>Subject Revision</label>
<select class="form-control" name="revision">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
</select>
</div>
<div>
<label>Syllabus Coverage with in allocated time</label>
<select class="form-control" name="coverage">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
</select>
</div>
<div>
<label>Sharing Experience and introducing emerging trends</label>
<select class="form-control" name="experience">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
</select>
</div>
<br>
<div>
<input type="submit" value="Add " class="btn btn-primary">
</div>

</form>
</div>
<div class="col-md-4"></div>

</body>

</html>
 <%}%>