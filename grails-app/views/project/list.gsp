
<%@ page import="com.siscape.estimator.Project" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-project" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-project" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="projectType" title="${message(code: 'project.projectType.label', default: 'Project Type')}" />
					
						<g:sortableColumn property="projectStatus" title="${message(code: 'project.projectStatus.label', default: 'Project Status')}" />
					
						<g:sortableColumn property="startDate" title="${message(code: 'project.startDate.label', default: 'Start Date')}" />
					
						<g:sortableColumn property="endDate" title="${message(code: 'project.endDate.label', default: 'End Date')}" />
					
						<g:sortableColumn property="projectedProfit" title="${message(code: 'project.projectedProfit.label', default: 'Projected Profit')}" />
					
						<g:sortableColumn property="isStarred" title="${message(code: 'project.isStarred.label', default: 'Is Starred')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${projectInstanceList}" status="i" var="projectInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${projectInstance.id}">${fieldValue(bean: projectInstance, field: "projectType")}</g:link></td>
					
						<td>${fieldValue(bean: projectInstance, field: "projectStatus")}</td>
					
						<td><g:formatDate date="${projectInstance.startDate}" /></td>
					
						<td><g:formatDate date="${projectInstance.endDate}" /></td>
					
						<td>${fieldValue(bean: projectInstance, field: "projectedProfit")}</td>
					
						<td><g:formatBoolean boolean="${projectInstance.isStarred}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${projectInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
