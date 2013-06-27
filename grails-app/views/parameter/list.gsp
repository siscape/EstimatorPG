
<%@ page import="com.siscape.estimator.Parameter" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'parameter.label', default: 'Parameter')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-parameter" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-parameter" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="parameter" title="${message(code: 'parameter.parameter.label', default: 'Parameter')}" />
					
						<g:sortableColumn property="formula" title="${message(code: 'parameter.formula.label', default: 'Formula')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${parameterInstanceList}" status="i" var="parameterInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${parameterInstance.id}">${fieldValue(bean: parameterInstance, field: "parameter")}</g:link></td>
					
						<td>${fieldValue(bean: parameterInstance, field: "formula")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${parameterInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
