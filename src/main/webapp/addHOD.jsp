 <%@ include file="ahead.jsp" %>
 
 <html>
<head> <center><h1>  Add HOD</h1> </head>
<body>
<div class="col-md-4"></div>
<div class="col-md-4">

<form action="addHodAction.jsp">
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

<div>
<label>Choose Department</label>
<select class="form-control" name="dep">
<option value="cse">CSE</option>
<option value="ece">ECE</option>
<option value="eee">EEE</option>
<option value="mech">MECH</option>
<option value="civil">CIVIL</option>

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
 