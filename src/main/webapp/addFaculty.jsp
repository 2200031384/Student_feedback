 <%@ include file="hodHead.jsp" %>
 
 <html>
<head> <center><h1>  Add Faculty</h1> </head>
<body>
<div class="col-md-4"></div>
<div class="col-md-4">

<form action="addFacultyAction.jsp">
<div>
<label>Employee ID </label>
<input type="text" maxlength="10"  name ="empid"  required  class="form-control">
</div>
<div>
<label>Enter Mobile </label>
<input type="text" maxlength="10" size="10" minlength="10" name ="mobileNumber" required  class="form-control">
</div>
<div>
<label>Enter Password </label>
<input type="password"  name="password" required  class="form-control">
</div>
<div>
<label>Enter Name </label>
<input type="text" name ="name" required  class="form-control">
</div>
<div>
<label>Email </label>
<input type="email" name ="email" required  class="form-control">
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
 