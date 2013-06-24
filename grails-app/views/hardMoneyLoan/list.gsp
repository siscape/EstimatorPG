
<%@ page import="com.siscape.estimator.HardMoneyLoan" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hardMoneyLoan.label', default: 'HardMoneyLoan')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-hardMoneyLoan" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-hardMoneyLoan" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="hardMoneyLoan.hardMoneyLender.label" default="Hard Money Lender" /></th>
					
						<g:sortableColumn property="amountLoaned" title="${message(code: 'hardMoneyLoan.amountLoaned.label', default: 'Amount Loaned')}" />
					
						<g:sortableColumn property="loanTerm" title="${message(code: 'hardMoneyLoan.loanTerm.label', default: 'Loan Term')}" />
					
						<g:sortableColumn property="holdingCosts" title="${message(code: 'hardMoneyLoan.holdingCosts.label', default: 'Holding Costs')}" />
					
						<g:sortableColumn property="costOfPoints" title="${message(code: 'hardMoneyLoan.costOfPoints.label', default: 'Cost Of Points')}" />
					
						<g:sortableColumn property="totalHoldingCosts" title="${message(code: 'hardMoneyLoan.totalHoldingCosts.label', default: 'Total Holding Costs')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${hardMoneyLoanInstanceList}" status="i" var="hardMoneyLoanInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${hardMoneyLoanInstance.id}">${fieldValue(bean: hardMoneyLoanInstance, field: "hardMoneyLender")}</g:link></td>
					
						<td>${fieldValue(bean: hardMoneyLoanInstance, field: "amountLoaned")}</td>
					
						<td>${fieldValue(bean: hardMoneyLoanInstance, field: "loanTerm")}</td>
					
						<td>${fieldValue(bean: hardMoneyLoanInstance, field: "holdingCosts")}</td>
					
						<td>${fieldValue(bean: hardMoneyLoanInstance, field: "costOfPoints")}</td>
					
						<td>${fieldValue(bean: hardMoneyLoanInstance, field: "totalHoldingCosts")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${hardMoneyLoanInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
