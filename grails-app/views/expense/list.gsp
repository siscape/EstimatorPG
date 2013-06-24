
<%@ page import="com.siscape.estimator.Expense" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'expense.label', default: 'Expense')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-expense" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-expense" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="expenseName" title="${message(code: 'expense.expenseName.label', default: 'Expense Name')}" />
					
						<g:sortableColumn property="cost" title="${message(code: 'expense.cost.label', default: 'Cost')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${expenseInstanceList}" status="i" var="expenseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${expenseInstance.id}">${fieldValue(bean: expenseInstance, field: "expenseName")}</g:link></td>
					
						<td>${fieldValue(bean: expenseInstance, field: "cost")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${expenseInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
