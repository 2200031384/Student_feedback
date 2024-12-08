  <%@ include file="mhead.jsp" %>
 <html>
 <head>
 <style type="text/css">
 body {
	background-image: url("https://png.pngtree.com/thumb_back/fh260/background/20240103/pngtree-vivid-abstract-texture-a-burst-of-colorful-background-image_13892083.png");
	background-repeat: no-repeat;
  background-size: cover;
}
 </style>
 </head>
 <body>
 <div class="container">
 <div class="row">
 <div class="col-md-4">
 
 </div>
 
 <div class="col-md-4"  >
  <h3 style=" margin-top: 50%;color:blue;text-align: center;"> HOD Login</h3>
 <form action="HodLoginAction.jsp" class="form-data" >
 <div>
 <lablel> <b>Enter Employee ID</b> </lablel>
 <input type="number" class="form-control" placeholder="Enter Employee ID" name ="empid" required="required" >
  </div>
   <div class="mt-2">
<label>Enter Password </label>
<input type="password"  name="password" required placeholder="Enter Password"  class="form-control">
</div>
   
 
  <div>
  <input type="submit" value="login" class="btn btn-primary btn-block mt-2">
 
 </div>
 </form>
  </div>
 
 
  <div class="col-md-4"></div>

 </div>
 
 
 
 
 </body>
 
 
 
 
 
 
>
 </html>