
<%@ page import="com.siscape.estimator.GapLoan" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'gapLoan.label', default: 'GapLoan')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-gapLoan" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-gapLoan" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="gapLoan.gapFunder.label" default="Gap Funder" /></th>
					
						<g:sortableColumn property="loanPurpose" title="${message(code: 'gapLoan.loanPurpose.label', default: 'Loan Purpose')}" />
					
						<g:sortableColumn property="amountLoaned" title="${message(code: 'gapLoan.amountLoaned.label', default: 'Amount Loaned')}" />
					
						<g:sortableColumn property="loanFees" title="${message(code: 'gapLoan.loanFees.label', default: 'Loan Fees')}" />
					
						<g:sortableColumn property="totalLoanCost" title="${message(code: 'gapLoan.totalLoanCost.label', default: 'Total Loan Cost')}" />
					
						<g:sortableColumn property="loanTerms" title="${message(code: 'gapLoan.loanTerms.label', default: 'Loan Terms')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${gapLoanInstanceList}" status="i" var="gapLoanInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${gapLoanInstance.id}">${fieldValue(bean: gapLoanInstance, field: "gapFunder")}</g:link></td>
					
						<td>${fieldValue(bean: gapLoanInstance, field: "loanPurpose")}</td>
					
						<td>${fieldValue(bean: gapLoanInstance, field: "amountLoaned")}</td>
					
						<td>${fieldValue(bean: gapLoanInstance, field: "loanFees")}</td>
					
						<td>${fieldValue(bean: gapLoanInstance, field: "totalLoanCost")}</td>
					
						<td>${fieldValue(bean: gapLoanInstance, field: "loanTerms")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${gapLoanInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
