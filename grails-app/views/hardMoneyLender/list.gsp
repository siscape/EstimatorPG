
<%@ page import="com.siscape.estimator.HardMoneyLender" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hardMoneyLender.label', default: 'HardMoneyLender')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-hardMoneyLender" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-hardMoneyLender" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="lenderName" title="${message(code: 'hardMoneyLender.lenderName.label', default: 'Lender Name')}" />
					
						<g:sortableColumn property="points" title="${message(code: 'hardMoneyLender.points.label', default: 'Points')}" />
					
						<g:sortableColumn property="interestRate" title="${message(code: 'hardMoneyLender.interestRate.label', default: 'Interest Rate')}" />
					
						<g:sortableColumn property="loanToValue" title="${message(code: 'hardMoneyLender.loanToValue.label', default: 'Loan To Value')}" />
					
						<g:sortableColumn property="percentDown" title="${message(code: 'hardMoneyLender.percentDown.label', default: 'Percent Down')}" />
					
						<g:sortableColumn property="loanTermMonths" title="${message(code: 'hardMoneyLender.loanTermMonths.label', default: 'Loan Term Months')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${hardMoneyLenderInstanceList}" status="i" var="hardMoneyLenderInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${hardMoneyLenderInstance.id}">${fieldValue(bean: hardMoneyLenderInstance, field: "lenderName")}</g:link></td>
					
						<td>${fieldValue(bean: hardMoneyLenderInstance, field: "points")}</td>
					
						<td>${fieldValue(bean: hardMoneyLenderInstance, field: "interestRate")}</td>
					
						<td>${fieldValue(bean: hardMoneyLenderInstance, field: "loanToValue")}</td>
					
						<td>${fieldValue(bean: hardMoneyLenderInstance, field: "percentDown")}</td>
					
						<td>${fieldValue(bean: hardMoneyLenderInstance, field: "loanTermMonths")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${hardMoneyLenderInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
