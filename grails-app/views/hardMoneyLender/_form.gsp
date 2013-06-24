<%@ page import="com.siscape.estimator.HardMoneyLender" %>



<div class="fieldcontain ${hasErrors(bean: hardMoneyLenderInstance, field: 'lenderName', 'error')} ">
	<label for="lenderName">
		<g:message code="hardMoneyLender.lenderName.label" default="Lender Name" />
		
	</label>
	<g:textField name="lenderName" value="${hardMoneyLenderInstance?.lenderName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: hardMoneyLenderInstance, field: 'points', 'error')} required">
	<label for="points">
		<g:message code="hardMoneyLender.points.label" default="Points" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="points" value="${fieldValue(bean: hardMoneyLenderInstance, field: 'points')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: hardMoneyLenderInstance, field: 'interestRate', 'error')} required">
	<label for="interestRate">
		<g:message code="hardMoneyLender.interestRate.label" default="Interest Rate" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="interestRate" value="${fieldValue(bean: hardMoneyLenderInstance, field: 'interestRate')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: hardMoneyLenderInstance, field: 'loanToValue', 'error')} required">
	<label for="loanToValue">
		<g:message code="hardMoneyLender.loanToValue.label" default="Loan To Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="loanToValue" value="${fieldValue(bean: hardMoneyLenderInstance, field: 'loanToValue')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: hardMoneyLenderInstance, field: 'percentDown', 'error')} required">
	<label for="percentDown">
		<g:message code="hardMoneyLender.percentDown.label" default="Percent Down" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="percentDown" value="${fieldValue(bean: hardMoneyLenderInstance, field: 'percentDown')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: hardMoneyLenderInstance, field: 'loanTermMonths', 'error')} ">
	<label for="loanTermMonths">
		<g:message code="hardMoneyLender.loanTermMonths.label" default="Loan Term Months" />
		
	</label>
	<g:field name="loanTermMonths" type="number" value="${hardMoneyLenderInstance.loanTermMonths}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: hardMoneyLenderInstance, field: 'loanFees', 'error')} required">
	<label for="loanFees">
		<g:message code="hardMoneyLender.loanFees.label" default="Loan Fees" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="loanFees" value="${fieldValue(bean: hardMoneyLenderInstance, field: 'loanFees')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: hardMoneyLenderInstance, field: 'lendingArea', 'error')} ">
	<label for="lendingArea">
		<g:message code="hardMoneyLender.lendingArea.label" default="Lending Area" />
		
	</label>
	<g:textField name="lendingArea" value="${hardMoneyLenderInstance?.lendingArea}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: hardMoneyLenderInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="hardMoneyLender.notes.label" default="Notes" />
		
	</label>
	<g:textField name="notes" value="${hardMoneyLenderInstance?.notes}"/>
</div>

