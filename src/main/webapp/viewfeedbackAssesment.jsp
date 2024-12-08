<%@include file="mhead.jsp" %>
<%@ page import="java.sql.*"%>
<%@page import="database.DBCon"%>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(document).ready(
			function() {
				$("#category").on(
						"change",
						function() {
							$.get("getSubCategories.jsp?categoryId=" + $(this).val(),
									function(data, status) {
										
										$("#subCategory").html(data)
									});
						});
			});
</script>
</head>
<html>
<body>




<%
	Connection con = DBCon.getConnection();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select *  from feedbackassessment");
%>

<div class="container">
<div class="row">
<div class="col-md-4">


</div>
<div class="col-md-4">


<form action="analysisfeedback1.jsp" >
<h3 style="margin-top: 5%; color:blue">View Feedback Here</h3>
<div>
	<label> Choose Category </label> <select class="form-control" name="scode" id="category">
		<option>choose Category</option>
		<%
			while (rs.next()) {
		%>
		<option value="<%=rs.getString("scode")%>">
			<%=rs.getString("scode")%>
		</option>
		<%
			}
		%>
		</select><br>
	<div>

		 <select  class="form-control" name="fid"
			id="subCategory">
			<option>choose Faculty</option>

		</select>
		</div>
		<br>
<div>
	<input type="submit" class="btn btn-success" value="Submit" class ="btn-primary">
</div>	
		
		

</div>

</form>

</div>

<div class="col-md-4">


</div>
</div>

</body>
</html>
 