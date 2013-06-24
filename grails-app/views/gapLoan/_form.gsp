<%@ page import="com.siscape.estimator.GapLoan" %>



<div class="fieldcontain ${hasErrors(bean: gapLoanInstance, field: 'gapFunder', 'error')} required">
	<label for="gapFunder">
		<g:message code="gapLoan.gapFunder.label" default="Gap Funder" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="gapFunder" name="gapFunder.id" from="${com.siscape.estimator.GapFunder.list()}" optionKey="id" required="" value="${gapLoanInstance?.gapFunder?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: gapLoanInstance, field: 'loanPurpose', 'error')} ">
	<label for="loanPurpose">
		<g:message code="gapLoan.loanPurpose.label" default="Loan Purpose" />
		
	</label>
	<g:textField name="loanPurpose" value="${gapLoanInstance?.loanPurpose}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: gapLoanInstance, field: 'amountLoaned', 'error')} required">
	<label for="amountLoaned">
		<g:message code="gapLoan.amountLoaned.label" default="Amount Loaned" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="amountLoaned" value="${fieldValue(bean: gapLoanInstance, field: 'amountLoaned')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: gapLoanInstance, field: 'loanFees', 'error')} ">
	<label for="loanFees">
		<g:message code="gapLoan.loanFees.label" default="Loan Fees" />
		
	</label>
	<g:field name="loanFees" value="${fieldValue(bean: gapLoanInstance, field: 'loanFees')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: gapLoanInstance, field: 'totalLoanCost', 'error')} required">
	<label for="totalLoanCost">
		<g:message code="gapLoan.totalLoanCost.label" default="Total Loan Cost" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="totalLoanCost" value="${fieldValue(bean: gapLoanInstance, field: 'totalLoanCost')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: gapLoanInstance, field: 'loanTerms', 'error')} ">
	<label for="loanTerms">
		<g:message code="gapLoan.loanTerms.label" default="Loan Terms" />
		
	</label>
	<g:textField name="loanTerms" value="${gapLoanInstance?.loanTerms}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: gapLoanInstance, field: 'dueDate', 'error')} ">
	<label for="dueDate">
		<g:message code="gapLoan.dueDate.label" default="Due Date" />
		
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${gapLoanInstance?.dueDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: gapLoanInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="gapLoan.notes.label" default="Notes" />
		
	</label>
	<g:textField name="notes" value="${gapLoanInstance?.notes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: gapLoanInstance, field: 'profitEstimate', 'error')} required">
	<label for="profitEstimate">
		<g:message code="gapLoan.profitEstimate.label" default="Profit Estimate" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="profitEstimate" name="profitEstimate.id" from="${com.siscape.estimator.ProfitEstimate.list()}" optionKey="id" required="" value="${gapLoanInstance?.profitEstimate?.id}" class="many-to-one"/>
</div>

