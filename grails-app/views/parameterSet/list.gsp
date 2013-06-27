
<%@ page import="com.siscape.estimator.ParameterSet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'parameterSet.label', default: 'ParameterSet')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-parameterSet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-parameterSet" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="setName" title="${message(code: 'parameterSet.setName.label', default: 'Set Name')}" />
					
						<g:sortableColumn property="author" title="${message(code: 'parameterSet.author.label', default: 'Author')}" />
					
						<g:sortableColumn property="fileLink" title="${message(code: 'parameterSet.fileLink.label', default: 'File Link')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${parameterSetInstanceList}" status="i" var="parameterSetInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${parameterSetInstance.id}">${fieldValue(bean: parameterSetInstance, field: "setName")}</g:link></td>
					
						<td>${fieldValue(bean: parameterSetInstance, field: "author")}</td>
					
						<td>${fieldValue(bean: parameterSetInstance, field: "fileLink")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${parameterSetInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
