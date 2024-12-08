 <%@ include file="fhead.jsp" %>
 
 <html>
<head> <center><h1>  Add Student</h1> </head>
<body>
<div class="col-md-4"></div>
<div class="col-md-4">

<form action="addStudentAction.jsp">
<div>
<label>Student ID </label>
<input type="text" maxlength="10"  name ="empid"  required  class="form-control">
</div>
<div>
<label>Enter Mobile </label>
<input type="text" maxlength="10" size="10" minlength="10" name ="mobileNumber" required  class="form-control">
</div>
<div>
<label>Enter Name </label>
<input type="text" name ="name" required  class="form-control">
</div>
<div>
<label>Enter Password </label>
<input type="password"  name="password" required  class="form-control">
</div>
<div>
<label>Email </label>
<input type="email" name ="email" required  class="form-control">
</div>
<div>
<label>Choose Section</label>
<select class="form-control" name="sece">
<option value="a">A</option>
<option value="b">B</option>
<option value="c">C</option>
<option value="d">D</option>


</select>
</div>
<div>
<label>Choose Semester</label>
<select class="form-control" name="semi">
<option value="1-1">1-1</option>
<option value="1-2">1-2</option>
<option value="2-1">2-1</option>
<option value="2-2">2-2</option>
<option value="3-1">3-1</option>
<option value="3-2">3-2</option>
<option value="4-1">4-1</option>
<option value="4-2">4-2</option>

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
 