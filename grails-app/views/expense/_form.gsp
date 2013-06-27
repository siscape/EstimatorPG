<%@ page import="com.siscape.estimator.Expense" %>



<div class="fieldcontain ${hasErrors(bean: expenseInstance, field: 'expenseName', 'error')} ">
	<label for="expenseName">
		<g:message code="expense.expenseName.label" default="Expense Name" />
		
	</label>
	<g:textField name="expenseName" value="${expenseInstance?.expenseName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: expenseInstance, field: 'cost', 'error')} required">
	<label for="cost">
		<g:message code="expense.cost.label" default="Cost" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cost" value="${fieldValue(bean: expenseInstance, field: 'cost')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: expenseInstance, field: 'profitEstimate', 'error')} required">
	<label for="profitEstimate">
		<g:message code="expense.profitEstimate.label" default="Profit Estimate" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="profitEstimate" name="profitEstimate.id" from="${com.siscape.estimator.ProfitEstimate.list()}" optionKey="id" required="" value="${expenseInstance?.profitEstimate?.id}" class="many-to-one"/>
</div>

