
<%@ page import="com.siscape.estimator.GapFunder" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'gapFunder.label', default: 'GapFunder')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-gapFunder" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-gapFunder" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list gapFunder">
			
				<g:if test="${gapFunderInstance?.funderName}">
				<li class="fieldcontain">
					<span id="funderName-label" class="property-label"><g:message code="gapFunder.funderName.label" default="Funder Name" /></span>
					
						<span class="property-value" aria-labelledby="funderName-label"><g:fieldValue bean="${gapFunderInstance}" field="funderName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gapFunderInstance?.feeType}">
				<li class="fieldcontain">
					<span id="feeType-label" class="property-label"><g:message code="gapFunder.feeType.label" default="Fee Type" /></span>
					
						<span class="property-value" aria-labelledby="feeType-label"><g:fieldValue bean="${gapFunderInstance}" field="feeType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gapFunderInstance?.feeRate}">
				<li class="fieldcontain">
					<span id="feeRate-label" class="property-label"><g:message code="gapFunder.feeRate.label" default="Fee Rate" /></span>
					
						<span class="property-value" aria-labelledby="feeRate-label"><g:fieldValue bean="${gapFunderInstance}" field="feeRate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gapFunderInstance?.gapFees}">
				<li class="fieldcontain">
					<span id="gapFees-label" class="property-label"><g:message code="gapFunder.gapFees.label" default="Gap Fees" /></span>
					
						<span class="property-value" aria-labelledby="gapFees-label"><g:fieldValue bean="${gapFunderInstance}" field="gapFees"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gapFunderInstance?.gapPoints}">
				<li class="fieldcontain">
					<span id="gapPoints-label" class="property-label"><g:message code="gapFunder.gapPoints.label" default="Gap Points" /></span>
					
						<span class="property-value" aria-labelledby="gapPoints-label"><g:fieldValue bean="${gapFunderInstance}" field="gapPoints"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gapFunderInstance?.gapTerms}">
				<li class="fieldcontain">
					<span id="gapTerms-label" class="property-label"><g:message code="gapFunder.gapTerms.label" default="Gap Terms" /></span>
					
						<span class="property-value" aria-labelledby="gapTerms-label"><g:fieldValue bean="${gapFunderInstance}" field="gapTerms"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gapFunderInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="gapFunder.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${gapFunderInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${gapFunderInstance?.id}" />
					<g:link class="edit" action="edit" id="${gapFunderInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
