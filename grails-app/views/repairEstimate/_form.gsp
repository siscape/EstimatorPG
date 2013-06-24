<%@ page import="com.siscape.estimator.RepairEstimate" %>



<div class="fieldcontain ${hasErrors(bean: repairEstimateInstance, field: 'property', 'error')} required">
	<label for="property">
		<g:message code="repairEstimate.property.label" default="Property" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="property" name="property.id" from="${com.siscape.estimator.Property.list()}" optionKey="id" required="" value="${repairEstimateInstance?.property?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: repairEstimateInstance, field: 'totalRepairCost', 'error')} required">
	<label for="totalRepairCost">
		<g:message code="repairEstimate.totalRepairCost.label" default="Total Repair Cost" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="totalRepairCost" value="${fieldValue(bean: repairEstimateInstance, field: 'totalRepairCost')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: repairEstimateInstance, field: 'weeksToRepair', 'error')} ">
	<label for="weeksToRepair">
		<g:message code="repairEstimate.weeksToRepair.label" default="Weeks To Repair" />
		
	</label>
	<g:field name="weeksToRepair" type="number" value="${repairEstimateInstance.weeksToRepair}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: repairEstimateInstance, field: 'contractor', 'error')} ">
	<label for="contractor">
		<g:message code="repairEstimate.contractor.label" default="Contractor" />
		
	</label>
	<g:textField name="contractor" value="${repairEstimateInstance?.contractor}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: repairEstimateInstance, field: 'bidSheetLink', 'error')} ">
	<label for="bidSheetLink">
		<g:message code="repairEstimate.bidSheetLink.label" default="Bid Sheet Link" />
		
	</label>
	<g:field type="url" name="bidSheetLink" value="${repairEstimateInstance?.bidSheetLink}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: repairEstimateInstance, field: 'repairImageLink', 'error')} ">
	<label for="repairImageLink">
		<g:message code="repairEstimate.repairImageLink.label" default="Repair Image Link" />
		
	</label>
	<g:field type="url" name="repairImageLink" value="${repairEstimateInstance?.repairImageLink}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: repairEstimateInstance, field: 'repairFilesLink', 'error')} ">
	<label for="repairFilesLink">
		<g:message code="repairEstimate.repairFilesLink.label" default="Repair Files Link" />
		
	</label>
	<g:field type="url" name="repairFilesLink" value="${repairEstimateInstance?.repairFilesLink}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: repairEstimateInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="repairEstimate.notes.label" default="Notes" />
		
	</label>
	<g:textField name="notes" value="${repairEstimateInstance?.notes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: repairEstimateInstance, field: 'repairItems', 'error')} ">
	<label for="repairItems">
		<g:message code="repairEstimate.repairItems.label" default="Repair Items" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${repairEstimateInstance?.repairItems?}" var="r">
    <li><g:link controller="repairItem" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="repairItem" action="create" params="['repairEstimate.id': repairEstimateInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'repairItem.label', default: 'RepairItem')])}</g:link>
</li>
</ul>

</div>

