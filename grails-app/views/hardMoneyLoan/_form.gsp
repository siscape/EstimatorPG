<%@ page import="com.siscape.estimator.HardMoneyLoan" %>



<div class="fieldcontain ${hasErrors(bean: hardMoneyLoanInstance, field: 'hardMoneyLender', 'error')} required">
	<label for="hardMoneyLender">
		<g:message code="hardMoneyLoan.hardMoneyLender.label" default="Hard Money Lender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="hardMoneyLender" name="hardMoneyLender.id" from="${com.siscape.estimator.HardMoneyLender.list()}" optionKey="id" required="" value="${hardMoneyLoanInstance?.hardMoneyLender?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: hardMoneyLoanInstance, field: 'amountLoaned', 'error')} required">
	<label for="amountLoaned">
		<g:message code="hardMoneyLoan.amountLoaned.label" default="Amount Loaned" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="amountLoaned" value="${fieldValue(bean: hardMoneyLoanInstance, field: 'amountLoaned')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: hardMoneyLoanInstance, field: 'loanTerm', 'error')} required">
	<label for="loanTerm">
		<g:message code="hardMoneyLoan.loanTerm.label" default="Loan Term" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="loanTerm" type="number" value="${hardMoneyLoanInstance.loanTerm}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: hardMoneyLoanInstance, field: 'holdingCosts', 'error')} required">
	<label for="holdingCosts">
		<g:message code="hardMoneyLoan.holdingCosts.label" default="Holding Costs" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="holdingCosts" value="${fieldValue(bean: hardMoneyLoanInstance, field: 'holdingCosts')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: hardMoneyLoanInstance, field: 'costOfPoints', 'error')} required">
	<label for="costOfPoints">
		<g:message code="hardMoneyLoan.costOfPoints.label" default="Cost Of Points" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="costOfPoints" value="${fieldValue(bean: hardMoneyLoanInstance, field: 'costOfPoints')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: hardMoneyLoanInstance, field: 'totalHoldingCosts', 'error')} required">
	<label for="totalHoldingCosts">
		<g:message code="hardMoneyLoan.totalHoldingCosts.label" default="Total Holding Costs" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="totalHoldingCosts" value="${fieldValue(bean: hardMoneyLoanInstance, field: 'totalHoldingCosts')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: hardMoneyLoanInstance, field: 'totalLoanCosts', 'error')} required">
	<label for="totalLoanCosts">
		<g:message code="hardMoneyLoan.totalLoanCosts.label" default="Total Loan Costs" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="totalLoanCosts" value="${fieldValue(bean: hardMoneyLoanInstance, field: 'totalLoanCosts')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: hardMoneyLoanInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="hardMoneyLoan.notes.label" default="Notes" />
		
	</label>
	<g:textField name="notes" value="${hardMoneyLoanInstance?.notes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: hardMoneyLoanInstance, field: 'profitEstimate', 'error')} required">
	<label for="profitEstimate">
		<g:message code="hardMoneyLoan.profitEstimate.label" default="Profit Estimate" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="profitEstimate" name="profitEstimate.id" from="${com.siscape.estimator.ProfitEstimate.list()}" optionKey="id" required="" value="${hardMoneyLoanInstance?.profitEstimate?.id}" class="many-to-one"/>
</div>

