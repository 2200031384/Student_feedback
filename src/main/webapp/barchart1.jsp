<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
 
<%
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
 int punctuality=Integer.parseInt(request.getParameter("punctuality"));
 int subknowledge=Integer.parseInt(request.getParameter("subknowledge"));
 int teaching=Integer.parseInt(request.getParameter("teaching"));
 int clarity=Integer.parseInt(request.getParameter("clarity"));
 int discipline=Integer.parseInt(request.getParameter("discipline"));
 int cDoubts=Integer.parseInt(request.getParameter("cDoubts"));
 int implementation=Integer.parseInt(request.getParameter("implementation"));
 int revision=Integer.parseInt(request.getParameter("revision"));
 int sCoverage=Integer.parseInt(request.getParameter("sCoverage"));
 int sExperience=Integer.parseInt(request.getParameter("sExperience"));


map = new HashMap<Object,Object>(); map.put("label", "Punctuality of the Teacher"); map.put("y", punctuality); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Subject Knowledge"); map.put("y", subknowledge); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Teaching with Innovative Ideas & Subject Meterials"); map.put("y", teaching); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Audibillity and Clarity of Expression and communication"); map.put("y", clarity); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Ability to maintain the discipline in the class"); map.put("y", discipline); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Clarification of Doubts"); map.put("y", cDoubts); list.add(map);
map = new HashMap<Object,Object>(); map.put("lable", "Implementation of AudioVideo Equipment in the class"); map.put("y", implementation); list.add(map);
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
	animationEnabled: true,
	title: {
		text: "ONLINE FEEDBACK ASSESSMENT"
	},
	axisY: {
		suffix: ""
	},
	axisX: {
		title: "PARAMETERS"
	},
	data: [{
		type: "column",
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