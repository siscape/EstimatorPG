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
	<g:textField name="costCategory" value="${repairCostInstance?.costCategory}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: repairCostInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="repairCost.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${repairCostInstance?.description}"/>
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
	<g:textField name="unit" value="${repairCostInstance?.unit}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: repairCostInstance, field: 'unitCost', 'error')} required">
	<label for="unitCost">
		<g:message code="repairCost.unitCost.label" default="Unit Cost" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="unitCost" value="${fieldValue(bean: repairCostInstance, field: 'unitCost')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: repairCostInstance, field: 'formula', 'error')} ">
	<label for="formula">
		<g:message code="repairCost.formula.label" default="Formula" />
		
	</label>
	<g:textField name="formula" value="${repairCostInstance?.formula}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: repairCostInstance, field: 'repairCostSet', 'error')} ">
	<label for="repairCostSet">
		<g:message code="repairCost.repairCostSet.label" default="Repair Cost Set" />
		
	</label>
	<g:textField name="repairCostSet" value="${repairCostInstance?.repairCostSet}"/>
</div>

