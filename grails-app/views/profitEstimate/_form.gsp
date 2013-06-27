<%@ page import="com.siscape.estimator.ProfitEstimate" %>



<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="profitEstimate.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${profitEstimateInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'property', 'error')} ">
	<label for="property">
		<g:message code="profitEstimate.property.label" default="Property" />
		
	</label>
	<g:select id="property" name="property.id" from="${com.siscape.estimator.Property.list()}" optionKey="id" value="${profitEstimateInstance?.property?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'repairEstimate', 'error')} ">
	<label for="repairEstimate">
		<g:message code="profitEstimate.repairEstimate.label" default="Repair Estimate" />
		
	</label>
	<g:select id="repairEstimate" name="repairEstimate.id" from="${com.siscape.estimator.RepairEstimate.list()}" optionKey="id" value="${profitEstimateInstance?.repairEstimate?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'parameterSet', 'error')} ">
	<label for="parameterSet">
		<g:message code="profitEstimate.parameterSet.label" default="Parameter Set" />
		
	</label>
	<g:select id="parameterSet" name="parameterSet.id" from="${com.siscape.estimator.ParameterSet.list()}" optionKey="id" value="${profitEstimateInstance?.parameterSet?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'offerPrice', 'error')} required">
	<label for="offerPrice">
		<g:message code="profitEstimate.offerPrice.label" default="Offer Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="offerPrice" value="${fieldValue(bean: profitEstimateInstance, field: 'offerPrice')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'afterRepairValue', 'error')} required">
	<label for="afterRepairValue">
		<g:message code="profitEstimate.afterRepairValue.label" default="After Repair Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="afterRepairValue" value="${fieldValue(bean: profitEstimateInstance, field: 'afterRepairValue')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'yearBuilt', 'error')} ">
	<label for="yearBuilt">
		<g:message code="profitEstimate.yearBuilt.label" default="Year Built" />
		
	</label>
	<g:field name="yearBuilt" type="number" value="${profitEstimateInstance.yearBuilt}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'squareFootage', 'error')} ">
	<label for="squareFootage">
		<g:message code="profitEstimate.squareFootage.label" default="Square Footage" />
		
	</label>
	<g:field name="squareFootage" type="number" value="${profitEstimateInstance.squareFootage}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'repairCosts', 'error')} required">
	<label for="repairCosts">
		<g:message code="profitEstimate.repairCosts.label" default="Repair Costs" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="repairCosts" value="${fieldValue(bean: profitEstimateInstance, field: 'repairCosts')}" required=""/>
</div>
<label for="expenseName">
    <g:message code="expense.expenseName.label" default="Expense Name" />
</label>
<g:textField name="expenseName" value=""/>

<label for="cost">
    <g:message code="expense.cost.label" default="Cost" />
</label>
<g:field name="cost" value=""/>
<button id="addExpense" onclick="${remoteFunction(action: 'saveExpense',
        controller: 'expense',
        id: profitEstimateInstance?.id,
        onSuccess: 'createExpense(data)',
        params: '\'expenseName=\' + expenseName.value + \'&cost=\' + cost.value')}">Add</button>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'expenses', 'error')} ">
	<label for="expenses">
		<g:message code="profitEstimate.expenses.label" default="Expenses" />
		
	</label>
<ul class="one-to-many" id="expenses">
<g:each in="${profitEstimateInstance?.expenses?}" var="e">
    <li><g:link controller="expense" action="show" id="${e.id}">${e.expenseName}</g:link> <label>${e.cost}</label></li>
</g:each>
%{--<li class="add">
<g:link controller="expense" action="create" params="['profitEstimate.id': profitEstimateInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'expense.label', default: 'Expense')])}</g:link>
</li>--}%
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'totalExpenses', 'error')} ">
	<label for="totalExpenses">
		<g:message code="profitEstimate.totalExpenses.label" default="Total Expenses" />
		
	</label>
	<g:field name="totalExpenses" value="${fieldValue(bean: profitEstimateInstance, field: 'totalExpenses')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'closingCosts', 'error')} ">
	<label for="closingCosts">
		<g:message code="profitEstimate.closingCosts.label" default="Closing Costs" />
		
	</label>
	<g:field name="closingCosts" value="${fieldValue(bean: profitEstimateInstance, field: 'closingCosts')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'totalInvestmentCost', 'error')} ">
	<label for="totalInvestmentCost">
		<g:message code="profitEstimate.totalInvestmentCost.label" default="Total Investment Cost" />
		
	</label>
	<g:field name="totalInvestmentCost" value="${fieldValue(bean: profitEstimateInstance, field: 'totalInvestmentCost')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'realtorFees', 'error')} ">
	<label for="realtorFees">
		<g:message code="profitEstimate.realtorFees.label" default="Realtor Fees" />
		
	</label>
	<g:field name="realtorFees" value="${fieldValue(bean: profitEstimateInstance, field: 'realtorFees')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'emdRequired', 'error')} ">
	<label for="emdRequired">
		<g:message code="profitEstimate.emdRequired.label" default="Emd Required" />
		
	</label>
	<g:field name="emdRequired" value="${fieldValue(bean: profitEstimateInstance, field: 'emdRequired')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'emdLoanAmount', 'error')} ">
	<label for="emdLoanAmount">
		<g:message code="profitEstimate.emdLoanAmount.label" default="Emd Loan Amount" />
		
	</label>
	<g:field name="emdLoanAmount" value="${fieldValue(bean: profitEstimateInstance, field: 'emdLoanAmount')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'emdLoanFee', 'error')} ">
	<label for="emdLoanFee">
		<g:message code="profitEstimate.emdLoanFee.label" default="Emd Loan Fee" />
		
	</label>
	<g:field name="emdLoanFee" value="${fieldValue(bean: profitEstimateInstance, field: 'emdLoanFee')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'cashProfit', 'error')} ">
	<label for="cashProfit">
		<g:message code="profitEstimate.cashProfit.label" default="Cash Profit" />
		
	</label>
	<g:field name="cashProfit" value="${fieldValue(bean: profitEstimateInstance, field: 'cashProfit')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'weeksToHold', 'error')} ">
	<label for="weeksToHold">
		<g:message code="profitEstimate.weeksToHold.label" default="Weeks To Hold" />
		
	</label>
	<g:field name="weeksToHold" type="number" value="${profitEstimateInstance.weeksToHold}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'hardMoneyLoan', 'error')} ">
	<label for="hardMoneyLoan">
		<g:message code="profitEstimate.hardMoneyLoan.label" default="Hard Money Loan" />
		
	</label>
	<g:select id="hardMoneyLoan" name="hardMoneyLoan.id" from="${com.siscape.estimator.HardMoneyLoan.list()}" optionKey="id" value="${profitEstimateInstance?.hardMoneyLoan?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'hmlAmount', 'error')} ">
	<label for="hmlAmount">
		<g:message code="profitEstimate.hmlAmount.label" default="Hml Amount" />
		
	</label>
	<g:field name="hmlAmount" value="${fieldValue(bean: profitEstimateInstance, field: 'hmlAmount')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'hmlCost', 'error')} ">
	<label for="hmlCost">
		<g:message code="profitEstimate.hmlCost.label" default="Hml Cost" />
		
	</label>
	<g:field name="hmlCost" value="${fieldValue(bean: profitEstimateInstance, field: 'hmlCost')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'hmlProfit', 'error')} ">
	<label for="hmlProfit">
		<g:message code="profitEstimate.hmlProfit.label" default="Hml Profit" />
		
	</label>
	<g:field name="hmlProfit" value="${fieldValue(bean: profitEstimateInstance, field: 'hmlProfit')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'gapLoans', 'error')} ">
	<label for="gapLoans">
		<g:message code="profitEstimate.gapLoans.label" default="Gap Loans" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${profitEstimateInstance?.gapLoans?}" var="g">
    <li><g:link controller="gapLoan" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="gapLoan" action="create" params="['profitEstimate.id': profitEstimateInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'gapLoan.label', default: 'GapLoan')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'gapAmount', 'error')} ">
	<label for="gapAmount">
		<g:message code="profitEstimate.gapAmount.label" default="Gap Amount" />
		
	</label>
	<g:field name="gapAmount" value="${fieldValue(bean: profitEstimateInstance, field: 'gapAmount')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'gapCost', 'error')} ">
	<label for="gapCost">
		<g:message code="profitEstimate.gapCost.label" default="Gap Cost" />
		
	</label>
	<g:field name="gapCost" value="${fieldValue(bean: profitEstimateInstance, field: 'gapCost')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'hmlWithGapProfit', 'error')} ">
	<label for="hmlWithGapProfit">
		<g:message code="profitEstimate.hmlWithGapProfit.label" default="Hml With Gap Profit" />
		
	</label>
	<g:field name="hmlWithGapProfit" value="${fieldValue(bean: profitEstimateInstance, field: 'hmlWithGapProfit')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'estimateLink', 'error')} ">
	<label for="estimateLink">
		<g:message code="profitEstimate.estimateLink.label" default="Estimate Link" />
		
	</label>
	<g:field type="url" name="estimateLink" value="${profitEstimateInstance?.estimateLink}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="profitEstimate.notes.label" default="Notes" />
		
	</label>
	<g:textField name="notes" value="${profitEstimateInstance?.notes}"/>
</div>

