
<%@ page import="com.siscape.estimator.ProfitEstimate" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profitEstimate.label', default: 'ProfitEstimate')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-profitEstimate" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-profitEstimate" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="profitEstimate.property.label" default="Property" /></th>
					
						<th><g:message code="profitEstimate.repairEstimate.label" default="Repair Estimate" /></th>
					
						<g:sortableColumn property="offerPrice" title="${message(code: 'profitEstimate.offerPrice.label', default: 'Offer Price')}" />
					
						<g:sortableColumn property="afterRepairValue" title="${message(code: 'profitEstimate.afterRepairValue.label', default: 'After Repair Value')}" />
					
						<g:sortableColumn property="repairCosts" title="${message(code: 'profitEstimate.repairCosts.label', default: 'Repair Costs')}" />
					
						<g:sortableColumn property="totalExpenses" title="${message(code: 'profitEstimate.totalExpenses.label', default: 'Total Expenses')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${profitEstimateInstanceList}" status="i" var="profitEstimateInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${profitEstimateInstance.id}">${fieldValue(bean: profitEstimateInstance, field: "property")}</g:link></td>
					
						<td>${fieldValue(bean: profitEstimateInstance, field: "repairEstimate")}</td>
					
						<td>${fieldValue(bean: profitEstimateInstance, field: "offerPrice")}</td>
					
						<td>${fieldValue(bean: profitEstimateInstance, field: "afterRepairValue")}</td>
					
						<td>${fieldValue(bean: profitEstimateInstance, field: "repairCosts")}</td>
					
						<td>${fieldValue(bean: profitEstimateInstance, field: "totalExpenses")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${profitEstimateInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
