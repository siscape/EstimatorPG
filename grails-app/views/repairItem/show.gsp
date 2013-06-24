
<%@ page import="com.siscape.estimator.RepairItem" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'repairItem.label', default: 'RepairItem')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-repairItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-repairItem" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list repairItem">
			
				<g:if test="${repairItemInstance?.repairCategory}">
				<li class="fieldcontain">
					<span id="repairCategory-label" class="property-label"><g:message code="repairItem.repairCategory.label" default="Repair Category" /></span>
					
						<span class="property-value" aria-labelledby="repairCategory-label"><g:fieldValue bean="${repairItemInstance}" field="repairCategory"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${repairItemInstance?.itemName}">
				<li class="fieldcontain">
					<span id="itemName-label" class="property-label"><g:message code="repairItem.itemName.label" default="Item Name" /></span>
					
						<span class="property-value" aria-labelledby="itemName-label"><g:fieldValue bean="${repairItemInstance}" field="itemName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${repairItemInstance?.unitAmount}">
				<li class="fieldcontain">
					<span id="unitAmount-label" class="property-label"><g:message code="repairItem.unitAmount.label" default="Unit Amount" /></span>
					
						<span class="property-value" aria-labelledby="unitAmount-label"><g:fieldValue bean="${repairItemInstance}" field="unitAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${repairItemInstance?.repairCost}">
				<li class="fieldcontain">
					<span id="repairCost-label" class="property-label"><g:message code="repairItem.repairCost.label" default="Repair Cost" /></span>
					
						<span class="property-value" aria-labelledby="repairCost-label"><g:link controller="repairCost" action="show" id="${repairItemInstance?.repairCost?.id}">${repairItemInstance?.repairCost?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${repairItemInstance?.itemCost}">
				<li class="fieldcontain">
					<span id="itemCost-label" class="property-label"><g:message code="repairItem.itemCost.label" default="Item Cost" /></span>
					
						<span class="property-value" aria-labelledby="itemCost-label"><g:fieldValue bean="${repairItemInstance}" field="itemCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${repairItemInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="repairItem.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${repairItemInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${repairItemInstance?.itemImage}">
				<li class="fieldcontain">
					<span id="itemImage-label" class="property-label"><g:message code="repairItem.itemImage.label" default="Item Image" /></span>
					
						<span class="property-value" aria-labelledby="itemImage-label"><g:fieldValue bean="${repairItemInstance}" field="itemImage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${repairItemInstance?.dueDate}">
				<li class="fieldcontain">
					<span id="dueDate-label" class="property-label"><g:message code="repairItem.dueDate.label" default="Due Date" /></span>
					
						<span class="property-value" aria-labelledby="dueDate-label"><g:formatDate date="${repairItemInstance?.dueDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${repairItemInstance?.repairEstimate}">
				<li class="fieldcontain">
					<span id="repairEstimate-label" class="property-label"><g:message code="repairItem.repairEstimate.label" default="Repair Estimate" /></span>
					
						<span class="property-value" aria-labelledby="repairEstimate-label"><g:link controller="repairEstimate" action="show" id="${repairItemInstance?.repairEstimate?.id}">${repairItemInstance?.repairEstimate?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${repairItemInstance?.id}" />
					<g:link class="edit" action="edit" id="${repairItemInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
