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

