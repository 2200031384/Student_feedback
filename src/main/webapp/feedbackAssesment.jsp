 <%@ include file="mhead.jsp" %>
 
 <html>
<head> <center><h1> ONline Feedback Assessment </h1> </head>
<body>
<div class="col-md-4"></div>
<div class="col-md-4">

<form action="feedbackAssesment1.jsp">
<div>
<label>Choose Regulation</label>
<select class="form-control" name="regulaion">
<option value="r16">R16</option>
<option value="r18">R18</option>
<option value="autonomous">Autonomous</option>



</select>
</div>
<div>
<label>Choose Year</label>
<select class="form-control" name="year">
<option value="1">1</option>

<option value="2">2</option>
<option value="3">3</option>

<option value="4">4</option>


</select>
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
<div>
<label>Choose Section</label>
<select class="form-control" name="sece">
<option value="a">A</option>
<option value="b">B</option>
<option value="c">C</option>
<option value="d">D</option>


</select>
</div>
<br>
<div>
<input type="text" name="subject" placeholder="Enter Subject Code" class="form-control">
</div>
<br>
<div>
<input type="text" name="facultyId" placeholder="Enter Faculty Id" class="form-control">
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
 