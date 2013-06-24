
<%@ page import="com.siscape.estimator.HardMoneyLoan" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hardMoneyLoan.label', default: 'HardMoneyLoan')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-hardMoneyLoan" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-hardMoneyLoan" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list hardMoneyLoan">
			
				<g:if test="${hardMoneyLoanInstance?.hardMoneyLender}">
				<li class="fieldcontain">
					<span id="hardMoneyLender-label" class="property-label"><g:message code="hardMoneyLoan.hardMoneyLender.label" default="Hard Money Lender" /></span>
					
						<span class="property-value" aria-labelledby="hardMoneyLender-label"><g:link controller="hardMoneyLender" action="show" id="${hardMoneyLoanInstance?.hardMoneyLender?.id}">${hardMoneyLoanInstance?.hardMoneyLender?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${hardMoneyLoanInstance?.amountLoaned}">
				<li class="fieldcontain">
					<span id="amountLoaned-label" class="property-label"><g:message code="hardMoneyLoan.amountLoaned.label" default="Amount Loaned" /></span>
					
						<span class="property-value" aria-labelledby="amountLoaned-label"><g:fieldValue bean="${hardMoneyLoanInstance}" field="amountLoaned"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hardMoneyLoanInstance?.loanTerm}">
				<li class="fieldcontain">
					<span id="loanTerm-label" class="property-label"><g:message code="hardMoneyLoan.loanTerm.label" default="Loan Term" /></span>
					
						<span class="property-value" aria-labelledby="loanTerm-label"><g:fieldValue bean="${hardMoneyLoanInstance}" field="loanTerm"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hardMoneyLoanInstance?.holdingCosts}">
				<li class="fieldcontain">
					<span id="holdingCosts-label" class="property-label"><g:message code="hardMoneyLoan.holdingCosts.label" default="Holding Costs" /></span>
					
						<span class="property-value" aria-labelledby="holdingCosts-label"><g:fieldValue bean="${hardMoneyLoanInstance}" field="holdingCosts"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hardMoneyLoanInstance?.costOfPoints}">
				<li class="fieldcontain">
					<span id="costOfPoints-label" class="property-label"><g:message code="hardMoneyLoan.costOfPoints.label" default="Cost Of Points" /></span>
					
						<span class="property-value" aria-labelledby="costOfPoints-label"><g:fieldValue bean="${hardMoneyLoanInstance}" field="costOfPoints"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hardMoneyLoanInstance?.totalHoldingCosts}">
				<li class="fieldcontain">
					<span id="totalHoldingCosts-label" class="property-label"><g:message code="hardMoneyLoan.totalHoldingCosts.label" default="Total Holding Costs" /></span>
					
						<span class="property-value" aria-labelledby="totalHoldingCosts-label"><g:fieldValue bean="${hardMoneyLoanInstance}" field="totalHoldingCosts"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hardMoneyLoanInstance?.totalLoanCosts}">
				<li class="fieldcontain">
					<span id="totalLoanCosts-label" class="property-label"><g:message code="hardMoneyLoan.totalLoanCosts.label" default="Total Loan Costs" /></span>
					
						<span class="property-value" aria-labelledby="totalLoanCosts-label"><g:fieldValue bean="${hardMoneyLoanInstance}" field="totalLoanCosts"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hardMoneyLoanInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="hardMoneyLoan.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${hardMoneyLoanInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hardMoneyLoanInstance?.profitEstimate}">
				<li class="fieldcontain">
					<span id="profitEstimate-label" class="property-label"><g:message code="hardMoneyLoan.profitEstimate.label" default="Profit Estimate" /></span>
					
						<span class="property-value" aria-labelledby="profitEstimate-label"><g:link controller="profitEstimate" action="show" id="${hardMoneyLoanInstance?.profitEstimate?.id}">${hardMoneyLoanInstance?.profitEstimate?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${hardMoneyLoanInstance?.id}" />
					<g:link class="edit" action="edit" id="${hardMoneyLoanInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
