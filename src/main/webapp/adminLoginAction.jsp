

<%
 String  username =request.getParameter("uname");
 String  password =request.getParameter("password");
 if(username.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin")){
	 response.sendRedirect("adminHome.jsp");
	 
 }else{
	 response.sendRedirect("index.jsp");
	 
 }
 
 %>