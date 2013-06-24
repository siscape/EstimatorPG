<%@ page import="com.siscape.estimator.GapFunder" %>



<div class="fieldcontain ${hasErrors(bean: gapFunderInstance, field: 'funderName', 'error')} ">
	<label for="funderName">
		<g:message code="gapFunder.funderName.label" default="Funder Name" />
		
	</label>
	<g:textField name="funderName" value="${gapFunderInstance?.funderName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: gapFunderInstance, field: 'feeType', 'error')} ">
	<label for="feeType">
		<g:message code="gapFunder.feeType.label" default="Fee Type" />
		
	</label>
	<g:select name="feeType" from="${gapFunderInstance.constraints.feeType.inList}" value="${gapFunderInstance?.feeType}" valueMessagePrefix="gapFunder.feeType" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: gapFunderInstance, field: 'feeRate', 'error')} ">
	<label for="feeRate">
		<g:message code="gapFunder.feeRate.label" default="Fee Rate" />
		
	</label>
	<g:field name="feeRate" value="${fieldValue(bean: gapFunderInstance, field: 'feeRate')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: gapFunderInstance, field: 'gapFees', 'error')} ">
	<label for="gapFees">
		<g:message code="gapFunder.gapFees.label" default="Gap Fees" />
		
	</label>
	<g:field name="gapFees" value="${fieldValue(bean: gapFunderInstance, field: 'gapFees')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: gapFunderInstance, field: 'gapPoints', 'error')} ">
	<label for="gapPoints">
		<g:message code="gapFunder.gapPoints.label" default="Gap Points" />
		
	</label>
	<g:field name="gapPoints" value="${fieldValue(bean: gapFunderInstance, field: 'gapPoints')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: gapFunderInstance, field: 'gapTerms', 'error')} ">
	<label for="gapTerms">
		<g:message code="gapFunder.gapTerms.label" default="Gap Terms" />
		
	</label>
	<g:textField name="gapTerms" value="${gapFunderInstance?.gapTerms}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: gapFunderInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="gapFunder.notes.label" default="Notes" />
		
	</label>
	<g:textField name="notes" value="${gapFunderInstance?.notes}"/>
</div>

