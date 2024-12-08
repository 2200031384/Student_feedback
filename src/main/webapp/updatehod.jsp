   <%@ include file="ahead.jsp" %>
  
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.DBCon"%>
<%@page import="java.sql.Connection"%>
<%
 String id = request.getParameter("id");


 Connection con = DBCon.getConnection();
 Statement st = con.createStatement();
 ResultSet rs = st.executeQuery("select * from hod where hId='"+id+"' ");
  
 if(rs.next())
 {%>
 <html>
<head> <center><h1>  Update HOD</h1> </head>
<body>
<div class="col-md-4"></div>
<div class="col-md-4">

<form action="updateHodAction.jsp">
<input type="hidden" maxlength="10"  name ="hid"  required  class="form-control" value="<%=id%>">
<div>
<label>Employee ID </label>
<input type="text" maxlength="10"  name ="empid"  required  class="form-control" value="<%=rs.getString("empid")%> ">
</div>
<div>
<label>Enter Mobile </label>
<input type="text" maxlength="10" size="10" minlength="10" name ="mobileNumber" required  class="form-control" value="<%=rs.getString("mobile")%> ">
</div>
<div>
<label>Enter Name </label>
<input type="text" name ="name" required  class="form-control" value="<%=rs.getString("name")%> ">
</div>
<div>
<label>Email </label>
<input type="email" name ="email" required  class="form-control" value="<%=rs.getString("email")%> ">
</div>

<div>
<label>Choose Department</label>
<select class="form-control" name="dep" value="<%=rs.getString("branch")%> " selected>
<option value="cse">CSE</option>
<option value="ece">ECE</option>
<option value="eee">EEE</option>
<option value="mech">MECH</option>
<option value="civil">CIVIL</option>

</select>
</div>
<br>
<div>
<input type="submit" value="Update " class="btn btn-primary">
</div>

</form>
</div>
<div class="col-md-4"></div>

</body>

</html>>
 
 <%}%>