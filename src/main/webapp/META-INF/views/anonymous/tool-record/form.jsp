<%--
- jsp
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

<acme:form>
	<acme:form-textbox code="anonymous.toolRecord.label.title" path="title"/>
	<acme:form-textbox code="anonymous.toolRecord.label.activity-sector" path="activitySector"/>
	<acme:form-textbox code="anonymous.toolRecord.label.inventor-name" path="inventorName"/>
	<acme:form-textarea code="anonymous.toolRecord.label.description" path="description"/>
	<acme:form-url code="anonymous.toolRecord.label.website" path="website"/>
	<acme:form-textbox code="anonymous.toolRecord.label.email" path="email"/>
	<acme:form-textbox code="anonymous.toolRecord.label.source-type" path="sourceType"/>
	<acme:form-integer code="anonymous.toolRecord.label.stars" path="stars"/>
	
  	<acme:form-return code="anonymous.toolRecord.button.return"/>
	
</acme:form>
