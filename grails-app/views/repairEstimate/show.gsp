
<%@ page import="com.siscape.estimator.RepairEstimate" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'repairEstimate.label', default: 'RepairEstimate')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-repairEstimate" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-repairEstimate" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list repairEstimate">
			
				<g:if test="${repairEstimateInstance?.property}">
				<li class="fieldcontain">
					<span id="property-label" class="property-label"><g:message code="repairEstimate.property.label" default="Property" /></span>
					
						<span class="property-value" aria-labelledby="property-label"><g:link controller="property" action="show" id="${repairEstimateInstance?.property?.id}">${repairEstimateInstance?.property?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${repairEstimateInstance?.totalRepairCost}">
				<li class="fieldcontain">
					<span id="totalRepairCost-label" class="property-label"><g:message code="repairEstimate.totalRepairCost.label" default="Total Repair Cost" /></span>
					
						<span class="property-value" aria-labelledby="totalRepairCost-label"><g:fieldValue bean="${repairEstimateInstance}" field="totalRepairCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${repairEstimateInstance?.weeksToRepair}">
				<li class="fieldcontain">
					<span id="weeksToRepair-label" class="property-label"><g:message code="repairEstimate.weeksToRepair.label" default="Weeks To Repair" /></span>
					
						<span class="property-value" aria-labelledby="weeksToRepair-label"><g:fieldValue bean="${repairEstimateInstance}" field="weeksToRepair"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${repairEstimateInstance?.contractor}">
				<li class="fieldcontain">
					<span id="contractor-label" class="property-label"><g:message code="repairEstimate.contractor.label" default="Contractor" /></span>
					
						<span class="property-value" aria-labelledby="contractor-label"><g:fieldValue bean="${repairEstimateInstance}" field="contractor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${repairEstimateInstance?.bidSheetLink}">
				<li class="fieldcontain">
					<span id="bidSheetLink-label" class="property-label"><g:message code="repairEstimate.bidSheetLink.label" default="Bid Sheet Link" /></span>
					
						<span class="property-value" aria-labelledby="bidSheetLink-label"><g:fieldValue bean="${repairEstimateInstance}" field="bidSheetLink"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${repairEstimateInstance?.repairImageLink}">
				<li class="fieldcontain">
					<span id="repairImageLink-label" class="property-label"><g:message code="repairEstimate.repairImageLink.label" default="Repair Image Link" /></span>
					
						<span class="property-value" aria-labelledby="repairImageLink-label"><g:fieldValue bean="${repairEstimateInstance}" field="repairImageLink"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${repairEstimateInstance?.repairFilesLink}">
				<li class="fieldcontain">
					<span id="repairFilesLink-label" class="property-label"><g:message code="repairEstimate.repairFilesLink.label" default="Repair Files Link" /></span>
					
						<span class="property-value" aria-labelledby="repairFilesLink-label"><g:fieldValue bean="${repairEstimateInstance}" field="repairFilesLink"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${repairEstimateInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="repairEstimate.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${repairEstimateInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${repairEstimateInstance?.repairItems}">
				<li class="fieldcontain">
					<span id="repairItems-label" class="property-label"><g:message code="repairEstimate.repairItems.label" default="Repair Items" /></span>
					
						<g:each in="${repairEstimateInstance.repairItems}" var="r">
						<span class="property-value" aria-labelledby="repairItems-label"><g:link controller="repairItem" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${repairEstimateInstance?.id}" />
					<g:link class="edit" action="edit" id="${repairEstimateInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
