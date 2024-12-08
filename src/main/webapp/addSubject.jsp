 <%@ include file="hodHead.jsp" %>
 
 <html>
<head> <center><h1>  Add Subject</h1> </head>
<body>
<div class="col-md-4"></div>
<div class="col-md-4">

<form action="addSubjectAction.jsp">
<div>
<label>Subject Code </label>
<input type="text"   name ="scode"  required  class="form-control">
</div>
<div>
<label>Subject Name </label>
<input type="text"  name ="sname" required  class="form-control">
</div>
<div>
<label>Choose Subject Type</label>
<select class="form-control" name="stype">
<option value="Lab">Lab</option>
<option value="theory">Theory</option>



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
 