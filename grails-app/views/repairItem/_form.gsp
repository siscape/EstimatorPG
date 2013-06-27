<%@ page import="com.siscape.estimator.RepairItem" %>



<div class="fieldcontain ${hasErrors(bean: repairItemInstance, field: 'repairCategory', 'error')} ">
	<label for="repairCategory">
		<g:message code="repairItem.repairCategory.label" default="Repair Category" />
		
	</label>
	<g:select name="repairCategory" from="${repairItemInstance.constraints.repairCategory.inList}" value="${repairItemInstance?.repairCategory}" valueMessagePrefix="repairItem.repairCategory" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: repairItemInstance, field: 'itemName', 'error')} ">
	<label for="itemName">
		<g:message code="repairItem.itemName.label" default="Item Name" />
		
	</label>
	<g:textField name="itemName" value="${repairItemInstance?.itemName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: repairItemInstance, field: 'unitAmount', 'error')} required">
	<label for="unitAmount">
		<g:message code="repairItem.unitAmount.label" default="Unit Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="unitAmount" value="${fieldValue(bean: repairItemInstance, field: 'unitAmount')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: repairItemInstance, field: 'repairCost', 'error')} ">
	<label for="repairCost">
		<g:message code="repairItem.repairCost.label" default="Repair Cost" />
		
	</label>
	<g:select id="repairCost" name="repairCost.id" from="${com.siscape.estimator.RepairCost.list()}" optionKey="id" value="${repairItemInstance?.repairCost?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: repairItemInstance, field: 'itemCost', 'error')} required">
	<label for="itemCost">
		<g:message code="repairItem.itemCost.label" default="Item Cost" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="itemCost" value="${fieldValue(bean: repairItemInstance, field: 'itemCost')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: repairItemInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="repairItem.notes.label" default="Notes" />
		
	</label>
	<g:textField name="notes" value="${repairItemInstance?.notes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: repairItemInstance, field: 'itemImage', 'error')} ">
	<label for="itemImage">
		<g:message code="repairItem.itemImage.label" default="Item Image" />
		
	</label>
	<g:field type="url" name="itemImage" value="${repairItemInstance?.itemImage}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: repairItemInstance, field: 'dueDate', 'error')} ">
	<label for="dueDate">
		<g:message code="repairItem.dueDate.label" default="Due Date" />
		
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${repairItemInstance?.dueDate}" default="none" noSelection="['': '']" />
</div>

