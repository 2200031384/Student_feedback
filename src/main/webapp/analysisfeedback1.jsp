<%@page import="database.DBCon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<%
int punctuality =0;
int subknowledge =0;
int teaching  =0;
int clarity  =0;
int discipline   =0;
int cDoubts  =0;
int implementation  =0;
int revision  =0;
int sExperience    =0;
int sCoverage  =0;


String  fid = request.getParameter("fid");
String scode =request.getParameter("scode");
Connection con = DBCon.getConnection();
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from feedbackassessment where faculty='"+fid+"' and scode='"+scode+"'");
while(rs.next()){
	punctuality=Integer.parseInt(rs.getString("punctuality"))+punctuality;
	subknowledge=Integer.parseInt(rs.getString("subknowledge"))+subknowledge;
	teaching=Integer.parseInt(rs.getString("teaching"))+teaching;
	clarity=Integer.parseInt(rs.getString("clarity"))+clarity;
	discipline=Integer.parseInt(rs.getString("discipline"))+discipline;
	cDoubts=Integer.parseInt(rs.getString("cDoubts"))+cDoubts;
	implementation=Integer.parseInt(rs.getString("implementation"))+implementation;
	sExperience=Integer.parseInt(rs.getString("sExperience"))+sExperience;
	revision=Integer.parseInt(rs.getString("revision"))+revision;
	sCoverage=Integer.parseInt(rs.getString("sCoverage"))+sCoverage;
	System.out.println(punctuality);

	
}

String url="barchart.jsp?punctuality="+punctuality+"&subknowledge="+subknowledge+"&teaching="+teaching+"&clarity="+clarity+"&discipline="+discipline+"&cDoubts="+cDoubts+"&implementation="+implementation+"&sExperience="+sExperience+"&revision="+revision+"&sCoverage="+sCoverage;

/*Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
 
map = new HashMap<Object,Object>(); map.put("label", "Work"); map.put("y", 44); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Gym"); map.put("y", 9); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Leisure"); map.put("y", 8); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Routines"); map.put("y", 8); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Nap"); map.put("y", 2); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Sleep"); map.put("y", 29); list.add(map);
 
String dataPoints = gsonObj.toJson(list);*/

Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
 
map = new HashMap<Object,Object>(); map.put("label", "Punctuality of the Teacher"); map.put("y", punctuality); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Subject Knowledge"); map.put("y", subknowledge); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Teaching with Innovative Ideas & Subject Meterials"); map.put("y", teaching); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Audibillity and Clarity of Expression and communication"); map.put("y", clarity); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Ability to maintain the discipline in the class"); map.put("y", discipline); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Clarification of Doubts"); map.put("y", clarity); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Implementation of Audio-Video Equipment in the class"); map.put("y", implementation); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Subject Revision"); map.put("y", revision); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Syllabus Coverage with in allocated time"); map.put("y",sCoverage ); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Sharing Experience and introducing emerging trends"); map.put("y", sExperience); list.add(map);

 
String dataPoints = gsonObj.toJson(list);

%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light2", // "light1", "dark1", "dark2"
	exportEnabled: true,
	animationEnabled: true,
	title: {
		text: "ONLINE FEEDBACK ASSESSMENT"
	},
	data: [{
		type: "pie",
		toolTipContent: "<b>{label}</b>: {y}%",
		indexLabelFontSize: 16,
		indexLabel: "{label} : {y}%",
		dataPoints: <%out.print(dataPoints);%>
	}]
});
chart.render();
 
}
</script>
</head>
<body>
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>
<center><h1><a href="<%=url%>">Click Here for Bargraph</a></h1></center>