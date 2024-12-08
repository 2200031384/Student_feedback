<%@include file="mhead.jsp" %><br><br>
  <html>
  
  <head>
  <style>
 body{
  background-image: url("images/y.jpg");
  background-repeat: no-repeat;
  background-size: cover;
  }
  form{
  margin-top: 60px;
  }
  </style>
  
  </head>
  <body>
  
  <div class="container">
  <div class="row">
  <div class="col-md-4">
  
  </div>
  <div class="col-md-4" >
 

 <form action="adminLoginAction.jsp" class="form-controls">
  <h3><img  src="images/admin.png" width="50" height="50"> Admin Login</h3></center>
 
 <div>
 <label> Username </label>
 <input type ="text" class="form-control" name ="uname" placeholder="Enter User Name" required  >
 <div>
 
 <label>   Password </label>
 <input type ="password" class="form-control" name ="password" placeholder="Enter password" required >

  </div> <br>
  <div>
  <input type ="submit" class=" btn btn-success btn-block" value="Login" class="btn-primary">
  </div>
 
  </form>
  </div>
  <div class="col-mid-4"></div>
  </div>
  </div>
  </body>
  </html>