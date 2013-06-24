
<%@ page import="com.siscape.estimator.ProfitEstimate" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profitEstimate.label', default: 'ProfitEstimate')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-profitEstimate" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-profitEstimate" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list profitEstimate">
			
				<g:if test="${profitEstimateInstance?.property}">
				<li class="fieldcontain">
					<span id="property-label" class="property-label"><g:message code="profitEstimate.property.label" default="Property" /></span>
					
						<span class="property-value" aria-labelledby="property-label"><g:link controller="property" action="show" id="${profitEstimateInstance?.property?.id}">${profitEstimateInstance?.property?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.repairEstimate}">
				<li class="fieldcontain">
					<span id="repairEstimate-label" class="property-label"><g:message code="profitEstimate.repairEstimate.label" default="Repair Estimate" /></span>
					
						<span class="property-value" aria-labelledby="repairEstimate-label"><g:link controller="repairEstimate" action="show" id="${profitEstimateInstance?.repairEstimate?.id}">${profitEstimateInstance?.repairEstimate?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.offerPrice}">
				<li class="fieldcontain">
					<span id="offerPrice-label" class="property-label"><g:message code="profitEstimate.offerPrice.label" default="Offer Price" /></span>
					
						<span class="property-value" aria-labelledby="offerPrice-label"><g:fieldValue bean="${profitEstimateInstance}" field="offerPrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.afterRepairValue}">
				<li class="fieldcontain">
					<span id="afterRepairValue-label" class="property-label"><g:message code="profitEstimate.afterRepairValue.label" default="After Repair Value" /></span>
					
						<span class="property-value" aria-labelledby="afterRepairValue-label"><g:fieldValue bean="${profitEstimateInstance}" field="afterRepairValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.repairCosts}">
				<li class="fieldcontain">
					<span id="repairCosts-label" class="property-label"><g:message code="profitEstimate.repairCosts.label" default="Repair Costs" /></span>
					
						<span class="property-value" aria-labelledby="repairCosts-label"><g:fieldValue bean="${profitEstimateInstance}" field="repairCosts"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.expenses}">
				<li class="fieldcontain">
					<span id="expenses-label" class="property-label"><g:message code="profitEstimate.expenses.label" default="Expenses" /></span>
					
						<g:each in="${profitEstimateInstance.expenses}" var="e">
						<span class="property-value" aria-labelledby="expenses-label"><g:link controller="expense" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.totalExpenses}">
				<li class="fieldcontain">
					<span id="totalExpenses-label" class="property-label"><g:message code="profitEstimate.totalExpenses.label" default="Total Expenses" /></span>
					
						<span class="property-value" aria-labelledby="totalExpenses-label"><g:fieldValue bean="${profitEstimateInstance}" field="totalExpenses"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.closingCosts}">
				<li class="fieldcontain">
					<span id="closingCosts-label" class="property-label"><g:message code="profitEstimate.closingCosts.label" default="Closing Costs" /></span>
					
						<span class="property-value" aria-labelledby="closingCosts-label"><g:fieldValue bean="${profitEstimateInstance}" field="closingCosts"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.realtorFees}">
				<li class="fieldcontain">
					<span id="realtorFees-label" class="property-label"><g:message code="profitEstimate.realtorFees.label" default="Realtor Fees" /></span>
					
						<span class="property-value" aria-labelledby="realtorFees-label"><g:fieldValue bean="${profitEstimateInstance}" field="realtorFees"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.totalInvestmentCost}">
				<li class="fieldcontain">
					<span id="totalInvestmentCost-label" class="property-label"><g:message code="profitEstimate.totalInvestmentCost.label" default="Total Investment Cost" /></span>
					
						<span class="property-value" aria-labelledby="totalInvestmentCost-label"><g:fieldValue bean="${profitEstimateInstance}" field="totalInvestmentCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.offerToList}">
				<li class="fieldcontain">
					<span id="offerToList-label" class="property-label"><g:message code="profitEstimate.offerToList.label" default="Offer To List" /></span>
					
						<span class="property-value" aria-labelledby="offerToList-label"><g:fieldValue bean="${profitEstimateInstance}" field="offerToList"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.emdRequired}">
				<li class="fieldcontain">
					<span id="emdRequired-label" class="property-label"><g:message code="profitEstimate.emdRequired.label" default="Emd Required" /></span>
					
						<span class="property-value" aria-labelledby="emdRequired-label"><g:fieldValue bean="${profitEstimateInstance}" field="emdRequired"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.usingEmdLoan}">
				<li class="fieldcontain">
					<span id="usingEmdLoan-label" class="property-label"><g:message code="profitEstimate.usingEmdLoan.label" default="Using Emd Loan" /></span>
					
						<span class="property-value" aria-labelledby="usingEmdLoan-label"><g:formatBoolean boolean="${profitEstimateInstance?.usingEmdLoan}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.emdLoanFee}">
				<li class="fieldcontain">
					<span id="emdLoanFee-label" class="property-label"><g:message code="profitEstimate.emdLoanFee.label" default="Emd Loan Fee" /></span>
					
						<span class="property-value" aria-labelledby="emdLoanFee-label"><g:fieldValue bean="${profitEstimateInstance}" field="emdLoanFee"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.cashProfit}">
				<li class="fieldcontain">
					<span id="cashProfit-label" class="property-label"><g:message code="profitEstimate.cashProfit.label" default="Cash Profit" /></span>
					
						<span class="property-value" aria-labelledby="cashProfit-label"><g:fieldValue bean="${profitEstimateInstance}" field="cashProfit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.weeksToClose}">
				<li class="fieldcontain">
					<span id="weeksToClose-label" class="property-label"><g:message code="profitEstimate.weeksToClose.label" default="Weeks To Close" /></span>
					
						<span class="property-value" aria-labelledby="weeksToClose-label"><g:fieldValue bean="${profitEstimateInstance}" field="weeksToClose"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.weeksToRepair}">
				<li class="fieldcontain">
					<span id="weeksToRepair-label" class="property-label"><g:message code="profitEstimate.weeksToRepair.label" default="Weeks To Repair" /></span>
					
						<span class="property-value" aria-labelledby="weeksToRepair-label"><g:fieldValue bean="${profitEstimateInstance}" field="weeksToRepair"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.weeksToSell}">
				<li class="fieldcontain">
					<span id="weeksToSell-label" class="property-label"><g:message code="profitEstimate.weeksToSell.label" default="Weeks To Sell" /></span>
					
						<span class="property-value" aria-labelledby="weeksToSell-label"><g:fieldValue bean="${profitEstimateInstance}" field="weeksToSell"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.weeksToFlip}">
				<li class="fieldcontain">
					<span id="weeksToFlip-label" class="property-label"><g:message code="profitEstimate.weeksToFlip.label" default="Weeks To Flip" /></span>
					
						<span class="property-value" aria-labelledby="weeksToFlip-label"><g:fieldValue bean="${profitEstimateInstance}" field="weeksToFlip"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.projectedSaleDate}">
				<li class="fieldcontain">
					<span id="projectedSaleDate-label" class="property-label"><g:message code="profitEstimate.projectedSaleDate.label" default="Projected Sale Date" /></span>
					
						<span class="property-value" aria-labelledby="projectedSaleDate-label"><g:formatDate date="${profitEstimateInstance?.projectedSaleDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.usingHML}">
				<li class="fieldcontain">
					<span id="usingHML-label" class="property-label"><g:message code="profitEstimate.usingHML.label" default="Using HML" /></span>
					
						<span class="property-value" aria-labelledby="usingHML-label"><g:formatBoolean boolean="${profitEstimateInstance?.usingHML}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.hardMoneyLoan}">
				<li class="fieldcontain">
					<span id="hardMoneyLoan-label" class="property-label"><g:message code="profitEstimate.hardMoneyLoan.label" default="Hard Money Loan" /></span>
					
						<span class="property-value" aria-labelledby="hardMoneyLoan-label"><g:link controller="hardMoneyLoan" action="show" id="${profitEstimateInstance?.hardMoneyLoan?.id}">${profitEstimateInstance?.hardMoneyLoan?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.hmlAmount}">
				<li class="fieldcontain">
					<span id="hmlAmount-label" class="property-label"><g:message code="profitEstimate.hmlAmount.label" default="Hml Amount" /></span>
					
						<span class="property-value" aria-labelledby="hmlAmount-label"><g:fieldValue bean="${profitEstimateInstance}" field="hmlAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.hmlCost}">
				<li class="fieldcontain">
					<span id="hmlCost-label" class="property-label"><g:message code="profitEstimate.hmlCost.label" default="Hml Cost" /></span>
					
						<span class="property-value" aria-labelledby="hmlCost-label"><g:fieldValue bean="${profitEstimateInstance}" field="hmlCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.hmlProfit}">
				<li class="fieldcontain">
					<span id="hmlProfit-label" class="property-label"><g:message code="profitEstimate.hmlProfit.label" default="Hml Profit" /></span>
					
						<span class="property-value" aria-labelledby="hmlProfit-label"><g:fieldValue bean="${profitEstimateInstance}" field="hmlProfit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.usingGapFunding}">
				<li class="fieldcontain">
					<span id="usingGapFunding-label" class="property-label"><g:message code="profitEstimate.usingGapFunding.label" default="Using Gap Funding" /></span>
					
						<span class="property-value" aria-labelledby="usingGapFunding-label"><g:formatBoolean boolean="${profitEstimateInstance?.usingGapFunding}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.gapLoans}">
				<li class="fieldcontain">
					<span id="gapLoans-label" class="property-label"><g:message code="profitEstimate.gapLoans.label" default="Gap Loans" /></span>
					
						<g:each in="${profitEstimateInstance.gapLoans}" var="g">
						<span class="property-value" aria-labelledby="gapLoans-label"><g:link controller="gapLoan" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.gapAmount}">
				<li class="fieldcontain">
					<span id="gapAmount-label" class="property-label"><g:message code="profitEstimate.gapAmount.label" default="Gap Amount" /></span>
					
						<span class="property-value" aria-labelledby="gapAmount-label"><g:fieldValue bean="${profitEstimateInstance}" field="gapAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.gapCost}">
				<li class="fieldcontain">
					<span id="gapCost-label" class="property-label"><g:message code="profitEstimate.gapCost.label" default="Gap Cost" /></span>
					
						<span class="property-value" aria-labelledby="gapCost-label"><g:fieldValue bean="${profitEstimateInstance}" field="gapCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.hmlWithGapProfit}">
				<li class="fieldcontain">
					<span id="hmlWithGapProfit-label" class="property-label"><g:message code="profitEstimate.hmlWithGapProfit.label" default="Hml With Gap Profit" /></span>
					
						<span class="property-value" aria-labelledby="hmlWithGapProfit-label"><g:fieldValue bean="${profitEstimateInstance}" field="hmlWithGapProfit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.roi}">
				<li class="fieldcontain">
					<span id="roi-label" class="property-label"><g:message code="profitEstimate.roi.label" default="Roi" /></span>
					
						<span class="property-value" aria-labelledby="roi-label"><g:fieldValue bean="${profitEstimateInstance}" field="roi"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.estimateLink}">
				<li class="fieldcontain">
					<span id="estimateLink-label" class="property-label"><g:message code="profitEstimate.estimateLink.label" default="Estimate Link" /></span>
					
						<span class="property-value" aria-labelledby="estimateLink-label"><g:fieldValue bean="${profitEstimateInstance}" field="estimateLink"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profitEstimateInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="profitEstimate.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${profitEstimateInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${profitEstimateInstance?.id}" />
					<g:link class="edit" action="edit" id="${profitEstimateInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
