<%@ page import="com.siscape.estimator.Project" %>



<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'projectType', 'error')} ">
	<label for="projectType">
		<g:message code="project.projectType.label" default="Project Type" />
		
	</label>
	<g:select name="projectType" from="${projectInstance.constraints.projectType.inList}" value="${projectInstance?.projectType}" valueMessagePrefix="project.projectType" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'projectStatus', 'error')} ">
	<label for="projectStatus">
		<g:message code="project.projectStatus.label" default="Project Status" />
		
	</label>
	<g:select name="projectStatus" from="${projectInstance.constraints.projectStatus.inList}" value="${projectInstance?.projectStatus}" valueMessagePrefix="project.projectStatus" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'startDate', 'error')} ">
	<label for="startDate">
		<g:message code="project.startDate.label" default="Start Date" />
		
	</label>
	<g:datePicker name="startDate" precision="day"  value="${projectInstance?.startDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'endDate', 'error')} ">
	<label for="endDate">
		<g:message code="project.endDate.label" default="End Date" />
		
	</label>
	<g:datePicker name="endDate" precision="day"  value="${projectInstance?.endDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'projectedProfit', 'error')} ">
	<label for="projectedProfit">
		<g:message code="project.projectedProfit.label" default="Projected Profit" />
		
	</label>
	<g:field name="projectedProfit" value="${fieldValue(bean: projectInstance, field: 'projectedProfit')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'isStarred', 'error')} ">
	<label for="isStarred">
		<g:message code="project.isStarred.label" default="Is Starred" />
		
	</label>
	<g:checkBox name="isStarred" value="${projectInstance?.isStarred}" />
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'property', 'error')} ">
	<label for="property">
		<g:message code="project.property.label" default="Property" />
		
	</label>
	<g:select id="property" name="property.id" from="${com.siscape.estimator.Property.list()}" optionKey="id" value="${projectInstance?.property?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'repairEstimate', 'error')} ">
	<label for="repairEstimate">
		<g:message code="project.repairEstimate.label" default="Repair Estimate" />
		
	</label>
	<g:select id="repairEstimate" name="repairEstimate.id" from="${com.siscape.estimator.RepairEstimate.list()}" optionKey="id" value="${projectInstance?.repairEstimate?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'profitEstimate', 'error')} ">
	<label for="profitEstimate">
		<g:message code="project.profitEstimate.label" default="Profit Estimate" />
		
	</label>
	<g:select id="profitEstimate" name="profitEstimate.id" from="${com.siscape.estimator.ProfitEstimate.list()}" optionKey="id" value="${projectInstance?.profitEstimate?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

