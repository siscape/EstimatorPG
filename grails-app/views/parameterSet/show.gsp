
<%@ page import="com.siscape.estimator.ParameterSet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'parameterSet.label', default: 'ParameterSet')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-parameterSet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-parameterSet" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list parameterSet">
			
				<g:if test="${parameterSetInstance?.setName}">
				<li class="fieldcontain">
					<span id="setName-label" class="property-label"><g:message code="parameterSet.setName.label" default="Set Name" /></span>
					
						<span class="property-value" aria-labelledby="setName-label"><g:fieldValue bean="${parameterSetInstance}" field="setName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parameterSetInstance?.author}">
				<li class="fieldcontain">
					<span id="author-label" class="property-label"><g:message code="parameterSet.author.label" default="Author" /></span>
					
						<span class="property-value" aria-labelledby="author-label"><g:fieldValue bean="${parameterSetInstance}" field="author"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parameterSetInstance?.fileLink}">
				<li class="fieldcontain">
					<span id="fileLink-label" class="property-label"><g:message code="parameterSet.fileLink.label" default="File Link" /></span>
					
						<span class="property-value" aria-labelledby="fileLink-label"><g:fieldValue bean="${parameterSetInstance}" field="fileLink"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parameterSetInstance?.parameters}">
				<li class="fieldcontain">
					<span id="parameters-label" class="property-label"><g:message code="parameterSet.parameters.label" default="Parameters" /></span>
					
						<g:each in="${parameterSetInstance.parameters}" var="p">
						<span class="property-value" aria-labelledby="parameters-label"><g:link controller="parameter" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${parameterSetInstance?.id}" />
					<g:link class="edit" action="edit" id="${parameterSetInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
