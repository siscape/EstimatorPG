
<%@ page import="com.siscape.estimator.Property" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'property.label', default: 'Property')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-property" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-property" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list property">
			
				<g:if test="${propertyInstance?.listPrice}">
				<li class="fieldcontain">
					<span id="listPrice-label" class="property-label"><g:message code="property.listPrice.label" default="List Price" /></span>
					
						<span class="property-value" aria-labelledby="listPrice-label"><g:fieldValue bean="${propertyInstance}" field="listPrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.afterRepairValue}">
				<li class="fieldcontain">
					<span id="afterRepairValue-label" class="property-label"><g:message code="property.afterRepairValue.label" default="After Repair Value" /></span>
					
						<span class="property-value" aria-labelledby="afterRepairValue-label"><g:fieldValue bean="${propertyInstance}" field="afterRepairValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="property.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${propertyInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="property.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${propertyInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="property.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${propertyInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="property.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${propertyInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.zipCode}">
				<li class="fieldcontain">
					<span id="zipCode-label" class="property-label"><g:message code="property.zipCode.label" default="Zip Code" /></span>
					
						<span class="property-value" aria-labelledby="zipCode-label"><g:fieldValue bean="${propertyInstance}" field="zipCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.neighborhood}">
				<li class="fieldcontain">
					<span id="neighborhood-label" class="property-label"><g:message code="property.neighborhood.label" default="Neighborhood" /></span>
					
						<span class="property-value" aria-labelledby="neighborhood-label"><g:fieldValue bean="${propertyInstance}" field="neighborhood"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.yearBuilt}">
				<li class="fieldcontain">
					<span id="yearBuilt-label" class="property-label"><g:message code="property.yearBuilt.label" default="Year Built" /></span>
					
						<span class="property-value" aria-labelledby="yearBuilt-label"><g:fieldValue bean="${propertyInstance}" field="yearBuilt"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.squareFootage}">
				<li class="fieldcontain">
					<span id="squareFootage-label" class="property-label"><g:message code="property.squareFootage.label" default="Square Footage" /></span>
					
						<span class="property-value" aria-labelledby="squareFootage-label"><g:fieldValue bean="${propertyInstance}" field="squareFootage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.lotSize}">
				<li class="fieldcontain">
					<span id="lotSize-label" class="property-label"><g:message code="property.lotSize.label" default="Lot Size" /></span>
					
						<span class="property-value" aria-labelledby="lotSize-label"><g:fieldValue bean="${propertyInstance}" field="lotSize"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.bedrooms}">
				<li class="fieldcontain">
					<span id="bedrooms-label" class="property-label"><g:message code="property.bedrooms.label" default="Bedrooms" /></span>
					
						<span class="property-value" aria-labelledby="bedrooms-label"><g:fieldValue bean="${propertyInstance}" field="bedrooms"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.bathrooms}">
				<li class="fieldcontain">
					<span id="bathrooms-label" class="property-label"><g:message code="property.bathrooms.label" default="Bathrooms" /></span>
					
						<span class="property-value" aria-labelledby="bathrooms-label"><g:fieldValue bean="${propertyInstance}" field="bathrooms"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.propertyUrl}">
				<li class="fieldcontain">
					<span id="propertyUrl-label" class="property-label"><g:message code="property.propertyUrl.label" default="Property Url" /></span>
					
						<span class="property-value" aria-labelledby="propertyUrl-label"><g:fieldValue bean="${propertyInstance}" field="propertyUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.picturesUrl}">
				<li class="fieldcontain">
					<span id="picturesUrl-label" class="property-label"><g:message code="property.picturesUrl.label" default="Pictures Url" /></span>
					
						<span class="property-value" aria-labelledby="picturesUrl-label"><g:fieldValue bean="${propertyInstance}" field="picturesUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.mlsListing}">
				<li class="fieldcontain">
					<span id="mlsListing-label" class="property-label"><g:message code="property.mlsListing.label" default="Mls Listing" /></span>
					
						<span class="property-value" aria-labelledby="mlsListing-label"><g:fieldValue bean="${propertyInstance}" field="mlsListing"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.cmaLink}">
				<li class="fieldcontain">
					<span id="cmaLink-label" class="property-label"><g:message code="property.cmaLink.label" default="Cma Link" /></span>
					
						<span class="property-value" aria-labelledby="cmaLink-label"><g:fieldValue bean="${propertyInstance}" field="cmaLink"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="property.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${propertyInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.propertyType}">
				<li class="fieldcontain">
					<span id="propertyType-label" class="property-label"><g:message code="property.propertyType.label" default="Property Type" /></span>
					
						<span class="property-value" aria-labelledby="propertyType-label"><g:fieldValue bean="${propertyInstance}" field="propertyType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.listingType}">
				<li class="fieldcontain">
					<span id="listingType-label" class="property-label"><g:message code="property.listingType.label" default="Listing Type" /></span>
					
						<span class="property-value" aria-labelledby="listingType-label"><g:fieldValue bean="${propertyInstance}" field="listingType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.lastSalePrice}">
				<li class="fieldcontain">
					<span id="lastSalePrice-label" class="property-label"><g:message code="property.lastSalePrice.label" default="Last Sale Price" /></span>
					
						<span class="property-value" aria-labelledby="lastSalePrice-label"><g:fieldValue bean="${propertyInstance}" field="lastSalePrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.hasPool}">
				<li class="fieldcontain">
					<span id="hasPool-label" class="property-label"><g:message code="property.hasPool.label" default="Has Pool" /></span>
					
						<span class="property-value" aria-labelledby="hasPool-label"><g:formatBoolean boolean="${propertyInstance?.hasPool}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.listingAgent}">
				<li class="fieldcontain">
					<span id="listingAgent-label" class="property-label"><g:message code="property.listingAgent.label" default="Listing Agent" /></span>
					
						<span class="property-value" aria-labelledby="listingAgent-label"><g:fieldValue bean="${propertyInstance}" field="listingAgent"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="property.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${propertyInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.condition}">
				<li class="fieldcontain">
					<span id="condition-label" class="property-label"><g:message code="property.condition.label" default="Condition" /></span>
					
						<span class="property-value" aria-labelledby="condition-label"><g:fieldValue bean="${propertyInstance}" field="condition"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.daysOnMarket}">
				<li class="fieldcontain">
					<span id="daysOnMarket-label" class="property-label"><g:message code="property.daysOnMarket.label" default="Days On Market" /></span>
					
						<span class="property-value" aria-labelledby="daysOnMarket-label"><g:fieldValue bean="${propertyInstance}" field="daysOnMarket"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.areaDOM}">
				<li class="fieldcontain">
					<span id="areaDOM-label" class="property-label"><g:message code="property.areaDOM.label" default="Area DOM" /></span>
					
						<span class="property-value" aria-labelledby="areaDOM-label"><g:fieldValue bean="${propertyInstance}" field="areaDOM"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${propertyInstance?.id}" />
					<g:link class="edit" action="edit" id="${propertyInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
