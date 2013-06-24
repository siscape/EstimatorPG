<%@ page import="com.siscape.estimator.ProfitEstimate" %>



<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'property', 'error')} required">
	<label for="property">
		<g:message code="profitEstimate.property.label" default="Property" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="property" name="property.id" from="${com.siscape.estimator.Property.list()}" optionKey="id" required="" value="${profitEstimateInstance?.property?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'repairEstimate', 'error')} required">
	<label for="repairEstimate">
		<g:message code="profitEstimate.repairEstimate.label" default="Repair Estimate" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="repairEstimate" name="repairEstimate.id" from="${com.siscape.estimator.RepairEstimate.list()}" optionKey="id" required="" value="${profitEstimateInstance?.repairEstimate?.id}" class="many-to-one"/>
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

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'repairCosts', 'error')} required">
	<label for="repairCosts">
		<g:message code="profitEstimate.repairCosts.label" default="Repair Costs" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="repairCosts" value="${fieldValue(bean: profitEstimateInstance, field: 'repairCosts')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'expenses', 'error')} ">
	<label for="expenses">
		<g:message code="profitEstimate.expenses.label" default="Expenses" />
		
	</label>
	<g:select name="expenses" from="${com.siscape.estimator.Expense.list()}" multiple="multiple" optionKey="id" size="5" value="${profitEstimateInstance?.expenses*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'totalExpenses', 'error')} required">
	<label for="totalExpenses">
		<g:message code="profitEstimate.totalExpenses.label" default="Total Expenses" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="totalExpenses" value="${fieldValue(bean: profitEstimateInstance, field: 'totalExpenses')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'closingCosts', 'error')} required">
	<label for="closingCosts">
		<g:message code="profitEstimate.closingCosts.label" default="Closing Costs" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="closingCosts" value="${fieldValue(bean: profitEstimateInstance, field: 'closingCosts')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'realtorFees', 'error')} required">
	<label for="realtorFees">
		<g:message code="profitEstimate.realtorFees.label" default="Realtor Fees" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="realtorFees" value="${fieldValue(bean: profitEstimateInstance, field: 'realtorFees')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'totalInvestmentCost', 'error')} required">
	<label for="totalInvestmentCost">
		<g:message code="profitEstimate.totalInvestmentCost.label" default="Total Investment Cost" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="totalInvestmentCost" value="${fieldValue(bean: profitEstimateInstance, field: 'totalInvestmentCost')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'offerToList', 'error')} ">
	<label for="offerToList">
		<g:message code="profitEstimate.offerToList.label" default="Offer To List" />
		
	</label>
	<g:field name="offerToList" value="${fieldValue(bean: profitEstimateInstance, field: 'offerToList')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'emdRequired', 'error')} ">
	<label for="emdRequired">
		<g:message code="profitEstimate.emdRequired.label" default="Emd Required" />
		
	</label>
	<g:field name="emdRequired" value="${fieldValue(bean: profitEstimateInstance, field: 'emdRequired')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'usingEmdLoan', 'error')} ">
	<label for="usingEmdLoan">
		<g:message code="profitEstimate.usingEmdLoan.label" default="Using Emd Loan" />
		
	</label>
	<g:checkBox name="usingEmdLoan" value="${profitEstimateInstance?.usingEmdLoan}" />
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

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'weeksToClose', 'error')} ">
	<label for="weeksToClose">
		<g:message code="profitEstimate.weeksToClose.label" default="Weeks To Close" />
		
	</label>
	<g:field name="weeksToClose" type="number" value="${profitEstimateInstance.weeksToClose}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'weeksToRepair', 'error')} ">
	<label for="weeksToRepair">
		<g:message code="profitEstimate.weeksToRepair.label" default="Weeks To Repair" />
		
	</label>
	<g:field name="weeksToRepair" type="number" value="${profitEstimateInstance.weeksToRepair}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'weeksToSell', 'error')} ">
	<label for="weeksToSell">
		<g:message code="profitEstimate.weeksToSell.label" default="Weeks To Sell" />
		
	</label>
	<g:field name="weeksToSell" type="number" value="${profitEstimateInstance.weeksToSell}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'weeksToFlip', 'error')} ">
	<label for="weeksToFlip">
		<g:message code="profitEstimate.weeksToFlip.label" default="Weeks To Flip" />
		
	</label>
	<g:field name="weeksToFlip" type="number" value="${profitEstimateInstance.weeksToFlip}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'projectedSaleDate', 'error')} required">
	<label for="projectedSaleDate">
		<g:message code="profitEstimate.projectedSaleDate.label" default="Projected Sale Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="projectedSaleDate" precision="day"  value="${profitEstimateInstance?.projectedSaleDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'usingHML', 'error')} ">
	<label for="usingHML">
		<g:message code="profitEstimate.usingHML.label" default="Using HML" />
		
	</label>
	<g:checkBox name="usingHML" value="${profitEstimateInstance?.usingHML}" />
</div>

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'hardMoneyLoan', 'error')} required">
	<label for="hardMoneyLoan">
		<g:message code="profitEstimate.hardMoneyLoan.label" default="Hard Money Loan" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="hardMoneyLoan" name="hardMoneyLoan.id" from="${com.siscape.estimator.HardMoneyLoan.list()}" optionKey="id" required="" value="${profitEstimateInstance?.hardMoneyLoan?.id}" class="many-to-one"/>
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

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'usingGapFunding', 'error')} ">
	<label for="usingGapFunding">
		<g:message code="profitEstimate.usingGapFunding.label" default="Using Gap Funding" />
		
	</label>
	<g:checkBox name="usingGapFunding" value="${profitEstimateInstance?.usingGapFunding}" />
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

<div class="fieldcontain ${hasErrors(bean: profitEstimateInstance, field: 'roi', 'error')} ">
	<label for="roi">
		<g:message code="profitEstimate.roi.label" default="Roi" />
		
	</label>
	<g:field name="roi" value="${fieldValue(bean: profitEstimateInstance, field: 'roi')}"/>
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

