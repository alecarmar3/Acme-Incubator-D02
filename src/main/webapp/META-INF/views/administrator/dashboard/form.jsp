<%--
- form.jsp
-
- Copyright (c) 2019 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<acme:form-panel code="administrator.dashboard.show.generalData"/>
<acme:form readonly="true">

<acme:form-double code="administrator.dashboard.form.totalNotices" path="totalNotices"/>
<acme:form-double code="administrator.dashboard.form.totalTechnologyRecords" path="totalTechnologyRecords"/>
<acme:form-double code="administrator.dashboard.form.totalToolRecords" path="totalToolRecords"/>
<acme:form-double code="administrator.dashboard.form.minimumMoneyIntervalActiveInquires" path="minimumMoneyIntervalActiveInquires"/>
<acme:form-double code="administrator.dashboard.form.maximumMoneyIntervalActiveInquires" path="maximumMoneyIntervalActiveInquires"/>
<acme:form-double code="administrator.dashboard.form.averageMoneyIntervalActiveInquires" path="averageMoneyIntervalActiveInquires"/>
<acme:form-double code="administrator.dashboard.form.deviationMoneyIntervalActiveInquires" path="deviationMoneyIntervalActiveInquires"/>
<acme:form-double code="administrator.dashboard.form.minimumMoneyIntervalActiveOvertures" path="minimumMoneyIntervalActiveOvertures"/>
<acme:form-double code="administrator.dashboard.form.maximumMoneyIntervalActiveOvertures" path="maximumMoneyIntervalActiveOvertures"/>
<acme:form-double code="administrator.dashboard.form.averageMoneyIntervalActiveOvertures" path="averageMoneyIntervalActiveOvertures"/>
<acme:form-double code="administrator.dashboard.form.deviationMoneyIntervalActiveOvertures" path="deviationMoneyIntervalActiveOvertures"/>
</acme:form>


<acme:form-panel code="administrator.dashboard.show.TechnologyChart"/>
<div>
<canvas id="canvas"></canvas>
</div>

<acme:form-panel code="administrator.dashboard.show.ToolChart"/>
<div>
<canvas id="canvasTool"></canvas>
</div>

<script type="text/javascript">
 $(document).ready(function(){
	 
	var dataTech = {
			labels : [
				"Technology", "Science", "Arts", "Business", "Health" 
			],
			datasets : [
				{
					data : [
						<jstl:out value="&{totalTechnologiesByTechnologySector}"/>
						/* <jstl:out value="&{totalTechnologiesByScienceSector}"/>
						<jstl:out value="&{totalTechnologiesByArtsSector}"/>
						<jstl:out value="&{totalTechnologiesByBusinessSector}"/>
						<jstl:out value="&{totalTechnologiesByHealthSector}"/> */
					]
				}
			]
	};
	
	var optionsTech = {
			scales : {
				yAxes : [
					{
						ticks : {
							suggestedMin : 0.0,
							suggestedMax: 1.0
						}
					}
				]
			},
			legend : {
				display : false
			}
	};
	
	var canvasTech, contextTech;
	
	canvasTech = document.getElementById("canvasTech");
	contextTech = canvas.getContext("2d");
	new Chart(contextTech, {
		type : "bar",
		data : dataTech,
		options: optionsTech
	});
	
	
	/* var dataTool = {			 
			labels : labelsTool,
			datasets : [
				{
					data : dataTool
				}
			]
	};
	
	var optionsTool = {
			scales : {
				yAxes : [
					{
						ticks : {
							suggestedMin : 0.0,
							suggestedMax: 1.0
						}
					}
				]
			},
			legend : {
				display : false
			}
	};
	
	var canvasTool, contextTool;
	
	canvasTool = document.getElementById("canvasTool");
	contextTool = canvasTool.getContext("2d");
	new Chart(contextTool, {
		type : "bar",
		data : dataTool,
		options: optionsTool
	}); */
});
	 
</script>

<%-- <acme:form-panel code="administrator.dashboard.show.TechnologyChart"/>
<div>
<canvas id="canvas"></canvas>
</div>
<acme:form-panel code="administrator.dashboard.show.OpenVSClosedTechnologyChart"/>
<div>
<canvas id="canvas1"></canvas>
</div>
<acme:form-panel code="administrator.dashboard.show.OpenVSClosedToolChart"/>
<div>
<canvas id="canvas2"></canvas>
</div>
<acme:form-panel code="administrator.dashboard.show.JobChart"/>
<div>
<canvas id="canvas3"></canvas>
</div>
<acme:form-panel code="administrator.dashboard.show.AppsLastFourWeeks"/>
<div>
<canvas id="canvasAppsLastFourWeeks"></canvas>
</div>
<script type="text/javascript">
 $(document).ready(function(){
	var etiq=[];
	var dat=[];
	<jstl:forEach items="${CompanySectors}" var="cs">
    etiq.push("${cs}"); 
    </jstl:forEach>
    <jstl:forEach items="${totalCompaniesBySector}" var="tc">
    dat.push("${tc}"); 
    </jstl:forEach>
	 var data={
			 labels: etiq,
			 datasets:[
				 {
					data:dat
				 }
			 ]
	 };
	 var options ={
	 legend:{
		 display:false
	 },
	 scales:{yAxes:[{
		 ticks:{
			 suggestedMin:0.0,
			 suggestedMax:1.0
		 }
	 }]
		 
	 }
	 };
	
	 var canvas,context;
	 canvas=document.getElementById("canvas");
	 context=canvas.getContext("2d");
	 var c1=new Chart(context,{
		 type:"bar",
		 data:data,
		 options:options
	 });
	 
	 
	    var etiq1=[];
		var dat1=[];
		<jstl:forEach items="${InvestorSectors}" var="is">
	    etiq1.push("${is}"); 
	    </jstl:forEach>
	    <jstl:forEach items="${totalInvestorsBySector}" var="ti">
	    dat1.push("${ti}"); 
	    </jstl:forEach>
		 var data1={
				 labels: etiq1,
				 datasets:[
					 {
						data:dat1
					 }
				 ]
		 };
		 var options1 ={
		 legend:{
			 display:false
		 },
		 scales:{yAxes:[{
			 ticks:{
				 suggestedMin:0.0,
				 suggestedMax:1.0
			 }
		 }]
			 
		 }
		 };
		
		 var canvas1,context1;
		 canvas1=document.getElementById("canvas1");
		 context1=canvas1.getContext("2d");
		 var c2=new Chart(context1,{
			 type:"bar",
			 data:data1,
			 options:options1
		 });
		 var etiq2=[];
			var dat2=[];
			<jstl:forEach items="${status}" var="st">
		    etiq2.push("${st}"); 
		    </jstl:forEach>
		    <jstl:forEach items="${ratioAppPerStatus}" var="ra">
		    dat2.push("${ra}"); 
		    </jstl:forEach>
			 var data2={
					 labels: etiq2,
					 datasets:[
						 {
							data:dat2
						 }
					 ]
			 };
			 var options2 ={
			 legend:{
				 display:false
			 },
			 scales:{yAxes:[{
				 ticks:{
					 suggestedMin:0.0,
					 suggestedMax:1.0
				 }
			 }]
				 
			 }
			 };
			
			 var canvas2,context2;
			 canvas2=document.getElementById("canvas2");
			 context2=canvas2.getContext("2d");
			 var c3=new Chart(context2,{
				 type:"bar",
				 data:data2,
				 options:options2
			 });
			 var etiq3=[];
				var dat3=[];
				<jstl:forEach items="${status}" var="st">
			    etiq3.push("${st}"); 
			    </jstl:forEach>
			    <jstl:forEach items="${ratioJobsPerStatus}" var="rj">
			    dat3.push("${rj}"); 
			    </jstl:forEach>
				 var data3={
						 labels: etiq3,
						 datasets:[
							 {
								data:dat3
							 }
						 ]
				 };
				 var options3 ={
				 legend:{
					 display:false
				 },
				 scales:{yAxes:[{
					 ticks:{
						 suggestedMin:0.0,
						 suggestedMax:1.0
					 }
				 }]
					 
				 }
				 };
				
				 var canvas3,context3;
				 canvas3=document.getElementById("canvas3");
				 context3=canvas3.getContext("2d");
				 var c4=new Chart(context3,{
					 type:"bar",
					 data:data3,
					 options:options3
				 });
	
	// ------------ Accepted, Pending and Rejected Applications In The Last 4 Weeks ----------------
	var tagsAppsLastFourWeeks = [];
	var valuesAcceptedAppsLastFourWeeks = [];
	var valuesPendingAppsLastFourWeeks = [];
	var valuesRejectedAppsLastFourWeeks = [];
	<jstl:forEach   items="${legendApplicationsLastNWeeks}" var = "item" varStatus="loop">
		tagsAppsLastFourWeeks.push("${item}");
 	</jstl:forEach>
 	<jstl:forEach   items="${acceptedApplicationsLastNWeeks}" var = "item" varStatus="loop">
 		valuesAcceptedAppsLastFourWeeks.push("${item}");
	</jstl:forEach>
 	<jstl:forEach   items="${pendingApplicationsLastNWeeks}" var = "item" varStatus="loop">
 		valuesPendingAppsLastFourWeeks.push("${item}");
	</jstl:forEach>
 	<jstl:forEach   items="${rejectedApplicationsLastNWeeks}" var = "item" varStatus="loop">
 		valuesRejectedAppsLastFourWeeks.push("${item}");
	</jstl:forEach>
	
	var dataAppsLastFourWeeks={
			 labels: tagsAppsLastFourWeeks,
			 datasets:[
				 {
					label: "Accepted",
					fill: false,
					backgroundColor: "blue",
					borderColor: "blue",
					data:valuesAcceptedAppsLastFourWeeks
				 },
				 
				 {
					label: "Pending",
					fill: false,
					backgroundColor: "grey",
					borderColor: "grey",
					data:valuesPendingAppsLastFourWeeks
				},
				
				{
					label: "Rejected",
					fill: false,
					backgroundColor: "red",
					borderColor: "red",
					data:valuesRejectedAppsLastFourWeeks
				}
			 ]
	 };
	var optAppsLastFourWeeks ={
			 legend:{
				 display:true
			 },
			 scales:{yAxes:[{
				 ticks:{
					 suggestedMin:0,
					 suggestedMax:10,
				 	}
			 	}]
				 
			 }
		};
	
	var canvasAppsLastFourWeeks,contextAppsLastFourWeeks;
	 canvasAppsLastFourWeeks=document.getElementById("canvasAppsLastFourWeeks");
	 contextAppsLastFourWeeks=canvasAppsLastFourWeeks.getContext("2d");
	 var chartAppsLastFourWeeks = new Chart(contextAppsLastFourWeeks,{
		 type:"line",
		 data:dataAppsLastFourWeeks,
		 options:optAppsLastFourWeeks
	 });
	// ------ End Canvas Accepted, Pending and Rejected Applications In The Last 4 Weeks -------
	
 });
</script> --%>



