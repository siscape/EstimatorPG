<%@ page import="com.siscape.estimator.RepairCost" %>



<div class="fieldcontain ${hasErrors(bean: repairCostInstance, field: 'costName', 'error')} ">
	<label for="costName">
		<g:message code="repairCost.costName.label" default="Cost Name" />
		
	</label>
	<g:textField name="costName" value="${repairCostInstance?.costName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: repairCostInstance, field: 'costCategory', 'error')} ">
	<label for="costCategory">
		<g:message code="repairCost.costCategory.label" default="Cost Category" />
		
	</label>
	<g:select name="costCategory" from="${repairCostInstance.constraints.costCategory.inList}" value="${repairCostInstance?.costCategory}" valueMessagePrefix="repairCost.costCategory" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: repairCostInstance, field: 'costType', 'error')} ">
	<label for="costType">
		<g:message code="repairCost.costType.label" default="Cost Type" />
		
	</label>
	<g:select name="costType" from="${repairCostInstance.constraints.costType.inList}" value="${repairCostInstance?.costType}" valueMessagePrefix="repairCost.costType" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: repairCostInstance, field: 'materialCost', 'error')} ">
	<label for="materialCost">
		<g:message code="repairCost.materialCost.label" default="Material Cost" />
		
	</label>
	<g:field name="materialCost" value="${fieldValue(bean: repairCostInstance, field: 'materialCost')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: repairCostInstance, field: 'laborCost', 'error')} ">
	<label for="laborCost">
		<g:message code="repairCost.laborCost.label" default="Labor Cost" />
		
	</label>
	<g:field name="laborCost" value="${fieldValue(bean: repairCostInstance, field: 'laborCost')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: repairCostInstance, field: 'unit', 'error')} ">
	<label for="unit">
		<g:message code="repairCost.unit.label" default="Unit" />
		
	</label>
	<g:field name="unit" value="${fieldValue(bean: repairCostInstance, field: 'unit')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: repairCostInstance, field: 'unitCost', 'error')} required">
	<label for="unitCost">
		<g:message code="repairCost.unitCost.label" default="Unit Cost" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="unitCost" value="${fieldValue(bean: repairCostInstance, field: 'unitCost')}" required=""/>
</div>

