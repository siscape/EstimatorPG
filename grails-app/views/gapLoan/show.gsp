
<%@ page import="com.siscape.estimator.GapLoan" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'gapLoan.label', default: 'GapLoan')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-gapLoan" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-gapLoan" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list gapLoan">
			
				<g:if test="${gapLoanInstance?.gapFunder}">
				<li class="fieldcontain">
					<span id="gapFunder-label" class="property-label"><g:message code="gapLoan.gapFunder.label" default="Gap Funder" /></span>
					
						<span class="property-value" aria-labelledby="gapFunder-label"><g:link controller="gapFunder" action="show" id="${gapLoanInstance?.gapFunder?.id}">${gapLoanInstance?.gapFunder?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${gapLoanInstance?.loanPurpose}">
				<li class="fieldcontain">
					<span id="loanPurpose-label" class="property-label"><g:message code="gapLoan.loanPurpose.label" default="Loan Purpose" /></span>
					
						<span class="property-value" aria-labelledby="loanPurpose-label"><g:fieldValue bean="${gapLoanInstance}" field="loanPurpose"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gapLoanInstance?.amountLoaned}">
				<li class="fieldcontain">
					<span id="amountLoaned-label" class="property-label"><g:message code="gapLoan.amountLoaned.label" default="Amount Loaned" /></span>
					
						<span class="property-value" aria-labelledby="amountLoaned-label"><g:fieldValue bean="${gapLoanInstance}" field="amountLoaned"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gapLoanInstance?.loanFees}">
				<li class="fieldcontain">
					<span id="loanFees-label" class="property-label"><g:message code="gapLoan.loanFees.label" default="Loan Fees" /></span>
					
						<span class="property-value" aria-labelledby="loanFees-label"><g:fieldValue bean="${gapLoanInstance}" field="loanFees"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gapLoanInstance?.totalLoanCost}">
				<li class="fieldcontain">
					<span id="totalLoanCost-label" class="property-label"><g:message code="gapLoan.totalLoanCost.label" default="Total Loan Cost" /></span>
					
						<span class="property-value" aria-labelledby="totalLoanCost-label"><g:fieldValue bean="${gapLoanInstance}" field="totalLoanCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gapLoanInstance?.loanTerms}">
				<li class="fieldcontain">
					<span id="loanTerms-label" class="property-label"><g:message code="gapLoan.loanTerms.label" default="Loan Terms" /></span>
					
						<span class="property-value" aria-labelledby="loanTerms-label"><g:fieldValue bean="${gapLoanInstance}" field="loanTerms"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gapLoanInstance?.dueDate}">
				<li class="fieldcontain">
					<span id="dueDate-label" class="property-label"><g:message code="gapLoan.dueDate.label" default="Due Date" /></span>
					
						<span class="property-value" aria-labelledby="dueDate-label"><g:formatDate date="${gapLoanInstance?.dueDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${gapLoanInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="gapLoan.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${gapLoanInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gapLoanInstance?.profitEstimate}">
				<li class="fieldcontain">
					<span id="profitEstimate-label" class="property-label"><g:message code="gapLoan.profitEstimate.label" default="Profit Estimate" /></span>
					
						<span class="property-value" aria-labelledby="profitEstimate-label"><g:link controller="profitEstimate" action="show" id="${gapLoanInstance?.profitEstimate?.id}">${gapLoanInstance?.profitEstimate?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${gapLoanInstance?.id}" />
					<g:link class="edit" action="edit" id="${gapLoanInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
