
<%@ page import="com.siscape.estimator.RepairCost" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'repairCost.label', default: 'RepairCost')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-repairCost" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-repairCost" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list repairCost">
			
				<g:if test="${repairCostInstance?.costName}">
				<li class="fieldcontain">
					<span id="costName-label" class="property-label"><g:message code="repairCost.costName.label" default="Cost Name" /></span>
					
						<span class="property-value" aria-labelledby="costName-label"><g:fieldValue bean="${repairCostInstance}" field="costName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${repairCostInstance?.costCategory}">
				<li class="fieldcontain">
					<span id="costCategory-label" class="property-label"><g:message code="repairCost.costCategory.label" default="Cost Category" /></span>
					
						<span class="property-value" aria-labelledby="costCategory-label"><g:fieldValue bean="${repairCostInstance}" field="costCategory"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${repairCostInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="repairCost.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${repairCostInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${repairCostInstance?.materialCost}">
				<li class="fieldcontain">
					<span id="materialCost-label" class="property-label"><g:message code="repairCost.materialCost.label" default="Material Cost" /></span>
					
						<span class="property-value" aria-labelledby="materialCost-label"><g:fieldValue bean="${repairCostInstance}" field="materialCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${repairCostInstance?.laborCost}">
				<li class="fieldcontain">
					<span id="laborCost-label" class="property-label"><g:message code="repairCost.laborCost.label" default="Labor Cost" /></span>
					
						<span class="property-value" aria-labelledby="laborCost-label"><g:fieldValue bean="${repairCostInstance}" field="laborCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${repairCostInstance?.unit}">
				<li class="fieldcontain">
					<span id="unit-label" class="property-label"><g:message code="repairCost.unit.label" default="Unit" /></span>
					
						<span class="property-value" aria-labelledby="unit-label"><g:fieldValue bean="${repairCostInstance}" field="unit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${repairCostInstance?.unitCost}">
				<li class="fieldcontain">
					<span id="unitCost-label" class="property-label"><g:message code="repairCost.unitCost.label" default="Unit Cost" /></span>
					
						<span class="property-value" aria-labelledby="unitCost-label"><g:fieldValue bean="${repairCostInstance}" field="unitCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${repairCostInstance?.formula}">
				<li class="fieldcontain">
					<span id="formula-label" class="property-label"><g:message code="repairCost.formula.label" default="Formula" /></span>
					
						<span class="property-value" aria-labelledby="formula-label"><g:fieldValue bean="${repairCostInstance}" field="formula"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${repairCostInstance?.repairCostSet}">
				<li class="fieldcontain">
					<span id="repairCostSet-label" class="property-label"><g:message code="repairCost.repairCostSet.label" default="Repair Cost Set" /></span>
					
						<span class="property-value" aria-labelledby="repairCostSet-label"><g:fieldValue bean="${repairCostInstance}" field="repairCostSet"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${repairCostInstance?.id}" />
					<g:link class="edit" action="edit" id="${repairCostInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
