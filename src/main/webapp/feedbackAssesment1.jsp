 <%@ include file="mhead.jsp" %>

<%
 String regulaion = request.getParameter("regulaion");
 String year = request.getParameter("year");
 String  dep = request.getParameter("dep");
 String sece =request.getParameter("sece");
 String subject =request.getParameter("subject");
 String facultyId =request.getParameter("facultyId");



 %>
  <html>
<head> <center>
 </head>
<body>
<div class="col-md-4"></div>
<div class="col-md-4">
<h3>Faculty name : <%=facultyId%></h3>
<h3>Subject Code : <%=subject%></h3>

<form action="feedbackAssessment2.jsp">

<input type="hidden" value="<%=facultyId%>" name="fid" >
<input type="hidden" value="<%=subject%>" name="scode" >
<input type="hidden" value="<%=regulaion%>" name="regulation" >
<input type="hidden" value="<%=year%>" name="year" >
<input type="hidden" value="<%=dep%>" name="dep" >
<input type="hidden" value="<%=sece%>" name="sece" >


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
