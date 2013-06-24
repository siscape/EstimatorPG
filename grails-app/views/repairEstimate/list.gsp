
<%@ page import="com.siscape.estimator.RepairEstimate" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'repairEstimate.label', default: 'RepairEstimate')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-repairEstimate" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-repairEstimate" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="repairEstimate.property.label" default="Property" /></th>
					
						<g:sortableColumn property="totalRepairCost" title="${message(code: 'repairEstimate.totalRepairCost.label', default: 'Total Repair Cost')}" />
					
						<g:sortableColumn property="weeksToRepair" title="${message(code: 'repairEstimate.weeksToRepair.label', default: 'Weeks To Repair')}" />
					
						<g:sortableColumn property="contractor" title="${message(code: 'repairEstimate.contractor.label', default: 'Contractor')}" />
					
						<g:sortableColumn property="bidSheetLink" title="${message(code: 'repairEstimate.bidSheetLink.label', default: 'Bid Sheet Link')}" />
					
						<g:sortableColumn property="repairImageLink" title="${message(code: 'repairEstimate.repairImageLink.label', default: 'Repair Image Link')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${repairEstimateInstanceList}" status="i" var="repairEstimateInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${repairEstimateInstance.id}">${fieldValue(bean: repairEstimateInstance, field: "property")}</g:link></td>
					
						<td>${fieldValue(bean: repairEstimateInstance, field: "totalRepairCost")}</td>
					
						<td>${fieldValue(bean: repairEstimateInstance, field: "weeksToRepair")}</td>
					
						<td>${fieldValue(bean: repairEstimateInstance, field: "contractor")}</td>
					
						<td>${fieldValue(bean: repairEstimateInstance, field: "bidSheetLink")}</td>
					
						<td>${fieldValue(bean: repairEstimateInstance, field: "repairImageLink")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${repairEstimateInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
