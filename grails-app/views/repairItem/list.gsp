
<%@ page import="com.siscape.estimator.RepairItem" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'repairItem.label', default: 'RepairItem')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-repairItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-repairItem" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="repairCategory" title="${message(code: 'repairItem.repairCategory.label', default: 'Repair Category')}" />
					
						<g:sortableColumn property="itemName" title="${message(code: 'repairItem.itemName.label', default: 'Item Name')}" />
					
						<g:sortableColumn property="unitAmount" title="${message(code: 'repairItem.unitAmount.label', default: 'Unit Amount')}" />
					
						<th><g:message code="repairItem.repairCost.label" default="Repair Cost" /></th>
					
						<g:sortableColumn property="itemCost" title="${message(code: 'repairItem.itemCost.label', default: 'Item Cost')}" />
					
						<g:sortableColumn property="notes" title="${message(code: 'repairItem.notes.label', default: 'Notes')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${repairItemInstanceList}" status="i" var="repairItemInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${repairItemInstance.id}">${fieldValue(bean: repairItemInstance, field: "repairCategory")}</g:link></td>
					
						<td>${fieldValue(bean: repairItemInstance, field: "itemName")}</td>
					
						<td>${fieldValue(bean: repairItemInstance, field: "unitAmount")}</td>
					
						<td>${fieldValue(bean: repairItemInstance, field: "repairCost")}</td>
					
						<td>${fieldValue(bean: repairItemInstance, field: "itemCost")}</td>
					
						<td>${fieldValue(bean: repairItemInstance, field: "notes")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${repairItemInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
