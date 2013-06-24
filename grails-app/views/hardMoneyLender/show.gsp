
<%@ page import="com.siscape.estimator.HardMoneyLender" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hardMoneyLender.label', default: 'HardMoneyLender')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-hardMoneyLender" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-hardMoneyLender" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list hardMoneyLender">
			
				<g:if test="${hardMoneyLenderInstance?.lenderName}">
				<li class="fieldcontain">
					<span id="lenderName-label" class="property-label"><g:message code="hardMoneyLender.lenderName.label" default="Lender Name" /></span>
					
						<span class="property-value" aria-labelledby="lenderName-label"><g:fieldValue bean="${hardMoneyLenderInstance}" field="lenderName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hardMoneyLenderInstance?.points}">
				<li class="fieldcontain">
					<span id="points-label" class="property-label"><g:message code="hardMoneyLender.points.label" default="Points" /></span>
					
						<span class="property-value" aria-labelledby="points-label"><g:fieldValue bean="${hardMoneyLenderInstance}" field="points"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hardMoneyLenderInstance?.interestRate}">
				<li class="fieldcontain">
					<span id="interestRate-label" class="property-label"><g:message code="hardMoneyLender.interestRate.label" default="Interest Rate" /></span>
					
						<span class="property-value" aria-labelledby="interestRate-label"><g:fieldValue bean="${hardMoneyLenderInstance}" field="interestRate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hardMoneyLenderInstance?.loanToValue}">
				<li class="fieldcontain">
					<span id="loanToValue-label" class="property-label"><g:message code="hardMoneyLender.loanToValue.label" default="Loan To Value" /></span>
					
						<span class="property-value" aria-labelledby="loanToValue-label"><g:fieldValue bean="${hardMoneyLenderInstance}" field="loanToValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hardMoneyLenderInstance?.percentDown}">
				<li class="fieldcontain">
					<span id="percentDown-label" class="property-label"><g:message code="hardMoneyLender.percentDown.label" default="Percent Down" /></span>
					
						<span class="property-value" aria-labelledby="percentDown-label"><g:fieldValue bean="${hardMoneyLenderInstance}" field="percentDown"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hardMoneyLenderInstance?.loanTermMonths}">
				<li class="fieldcontain">
					<span id="loanTermMonths-label" class="property-label"><g:message code="hardMoneyLender.loanTermMonths.label" default="Loan Term Months" /></span>
					
						<span class="property-value" aria-labelledby="loanTermMonths-label"><g:fieldValue bean="${hardMoneyLenderInstance}" field="loanTermMonths"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hardMoneyLenderInstance?.loanFees}">
				<li class="fieldcontain">
					<span id="loanFees-label" class="property-label"><g:message code="hardMoneyLender.loanFees.label" default="Loan Fees" /></span>
					
						<span class="property-value" aria-labelledby="loanFees-label"><g:fieldValue bean="${hardMoneyLenderInstance}" field="loanFees"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hardMoneyLenderInstance?.lendingArea}">
				<li class="fieldcontain">
					<span id="lendingArea-label" class="property-label"><g:message code="hardMoneyLender.lendingArea.label" default="Lending Area" /></span>
					
						<span class="property-value" aria-labelledby="lendingArea-label"><g:fieldValue bean="${hardMoneyLenderInstance}" field="lendingArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hardMoneyLenderInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="hardMoneyLender.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${hardMoneyLenderInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${hardMoneyLenderInstance?.id}" />
					<g:link class="edit" action="edit" id="${hardMoneyLenderInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
