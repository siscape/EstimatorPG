
<%@ page import="com.siscape.estimator.Expense" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'expense.label', default: 'Expense')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-expense" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-expense" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list expense">
			
				<g:if test="${expenseInstance?.expenseName}">
				<li class="fieldcontain">
					<span id="expenseName-label" class="property-label"><g:message code="expense.expenseName.label" default="Expense Name" /></span>
					
						<span class="property-value" aria-labelledby="expenseName-label"><g:fieldValue bean="${expenseInstance}" field="expenseName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${expenseInstance?.cost}">
				<li class="fieldcontain">
					<span id="cost-label" class="property-label"><g:message code="expense.cost.label" default="Cost" /></span>
					
						<span class="property-value" aria-labelledby="cost-label"><g:fieldValue bean="${expenseInstance}" field="cost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${expenseInstance?.profitEstimate}">
				<li class="fieldcontain">
					<span id="profitEstimate-label" class="property-label"><g:message code="expense.profitEstimate.label" default="Profit Estimate" /></span>
					
						<span class="property-value" aria-labelledby="profitEstimate-label"><g:link controller="profitEstimate" action="show" id="${expenseInstance?.profitEstimate?.id}">${expenseInstance?.profitEstimate?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${expenseInstance?.id}" />
					<g:link class="edit" action="edit" id="${expenseInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
