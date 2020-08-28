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
	<acme:form-url code="anonymous.notice.label.header-picture" path="headerPicture"/>
	<acme:form-textbox code="anonymous.notice.label.title" path="title"/>
	<acme:form-moment code="anonymous.notice.label.creation-date" path="creationDate"/>
	<acme:form-moment code="anonymous.notice.label.deadline" path="deadline"/>
	<acme:form-textarea code="anonymous.notice.label.body" path="body"/>
	<acme:form-url code="anonymous.notice.label.web-links" path="webLinks"/>
	
  	<acme:form-return code="anonymous.notice.button.return"/>
	
</acme:form>
