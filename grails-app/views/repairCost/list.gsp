
<%@ page import="com.siscape.estimator.RepairCost" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'repairCost.label', default: 'RepairCost')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-repairCost" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-repairCost" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="costName" title="${message(code: 'repairCost.costName.label', default: 'Cost Name')}" />
					
						<g:sortableColumn property="costCategory" title="${message(code: 'repairCost.costCategory.label', default: 'Cost Category')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'repairCost.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="materialCost" title="${message(code: 'repairCost.materialCost.label', default: 'Material Cost')}" />
					
						<g:sortableColumn property="laborCost" title="${message(code: 'repairCost.laborCost.label', default: 'Labor Cost')}" />
					
						<g:sortableColumn property="unit" title="${message(code: 'repairCost.unit.label', default: 'Unit')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${repairCostInstanceList}" status="i" var="repairCostInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${repairCostInstance.id}">${fieldValue(bean: repairCostInstance, field: "costName")}</g:link></td>
					
						<td>${fieldValue(bean: repairCostInstance, field: "costCategory")}</td>
					
						<td>${fieldValue(bean: repairCostInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: repairCostInstance, field: "materialCost")}</td>
					
						<td>${fieldValue(bean: repairCostInstance, field: "laborCost")}</td>
					
						<td>${fieldValue(bean: repairCostInstance, field: "unit")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${repairCostInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
