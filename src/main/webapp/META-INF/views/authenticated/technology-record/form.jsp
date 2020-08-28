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
	<acme:form-textbox code="authenticated.technologyRecord.label.title" path="title"/>
	<acme:form-textbox code="authenticated.technologyRecord.label.activitySector" path="activitySector"/>
	<acme:form-textbox code="authenticated.technologyRecord.label.inventorName" path="inventorName"/>
	<acme:form-textarea code="authenticated.technologyRecord.label.description" path="description"/>
	<acme:form-url code="authenticated.technologyRecord.label.website" path="website"/>
	<acme:form-textbox code="authenticated.technologyRecord.label.email" path="email"/>
	<acme:form-textbox code="authenticated.technologyRecord.label.sourceType" path="sourceType"/>
	<acme:form-integer code="authenticated.technologyRecord.label.stars" path="stars"/>
	
  	<acme:form-return code="authenticated.technologyRecord.button.return"/>
	
</acme:form>
