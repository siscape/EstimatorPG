<%@ page import="com.siscape.estimator.Property" %>



<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'listPrice', 'error')} ">
	<label for="listPrice">
		<g:message code="property.listPrice.label" default="List Price" />
		
	</label>
	<g:field name="listPrice" value="${fieldValue(bean: propertyInstance, field: 'listPrice')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'afterRepairValue', 'error')} ">
	<label for="afterRepairValue">
		<g:message code="property.afterRepairValue.label" default="After Repair Value" />
		
	</label>
	<g:field name="afterRepairValue" value="${fieldValue(bean: propertyInstance, field: 'afterRepairValue')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="property.location.label" default="Location" />
		
	</label>
	<g:textField name="location" value="${propertyInstance?.location}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="property.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${propertyInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="property.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${propertyInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="property.state.label" default="State" />
		
	</label>
	<g:textField name="state" value="${propertyInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'zipCode', 'error')} ">
	<label for="zipCode">
		<g:message code="property.zipCode.label" default="Zip Code" />
		
	</label>
	<g:field name="zipCode" type="number" value="${propertyInstance.zipCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'neighborhood', 'error')} ">
	<label for="neighborhood">
		<g:message code="property.neighborhood.label" default="Neighborhood" />
		
	</label>
	<g:textField name="neighborhood" value="${propertyInstance?.neighborhood}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'yearBuilt', 'error')} required">
	<label for="yearBuilt">
		<g:message code="property.yearBuilt.label" default="Year Built" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="yearBuilt" type="number" value="${propertyInstance.yearBuilt}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'squareFootage', 'error')} required">
	<label for="squareFootage">
		<g:message code="property.squareFootage.label" default="Square Footage" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="squareFootage" type="number" value="${propertyInstance.squareFootage}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'lotSize', 'error')} ">
	<label for="lotSize">
		<g:message code="property.lotSize.label" default="Lot Size" />
		
	</label>
	<g:field name="lotSize" type="number" value="${propertyInstance.lotSize}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'bedrooms', 'error')} ">
	<label for="bedrooms">
		<g:message code="property.bedrooms.label" default="Bedrooms" />
		
	</label>
	<g:field name="bedrooms" type="number" value="${propertyInstance.bedrooms}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'bathrooms', 'error')} ">
	<label for="bathrooms">
		<g:message code="property.bathrooms.label" default="Bathrooms" />
		
	</label>
	<g:field name="bathrooms" type="number" value="${propertyInstance.bathrooms}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'propertyUrl', 'error')} ">
	<label for="propertyUrl">
		<g:message code="property.propertyUrl.label" default="Property Url" />
		
	</label>
	<g:field type="url" name="propertyUrl" value="${propertyInstance?.propertyUrl}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'picturesUrl', 'error')} ">
	<label for="picturesUrl">
		<g:message code="property.picturesUrl.label" default="Pictures Url" />
		
	</label>
	<g:field type="url" name="picturesUrl" value="${propertyInstance?.picturesUrl}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'mlsListing', 'error')} ">
	<label for="mlsListing">
		<g:message code="property.mlsListing.label" default="Mls Listing" />
		
	</label>
	<g:field type="url" name="mlsListing" value="${propertyInstance?.mlsListing}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'cmaLink', 'error')} ">
	<label for="cmaLink">
		<g:message code="property.cmaLink.label" default="Cma Link" />
		
	</label>
	<g:field type="url" name="cmaLink" value="${propertyInstance?.cmaLink}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="property.status.label" default="Status" />
		
	</label>
	<g:select name="status" from="${propertyInstance.constraints.status.inList}" value="${propertyInstance?.status}" valueMessagePrefix="property.status" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'propertyType', 'error')} ">
	<label for="propertyType">
		<g:message code="property.propertyType.label" default="Property Type" />
		
	</label>
	<g:select name="propertyType" from="${propertyInstance.constraints.propertyType.inList}" value="${propertyInstance?.propertyType}" valueMessagePrefix="property.propertyType" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'listingType', 'error')} ">
	<label for="listingType">
		<g:message code="property.listingType.label" default="Listing Type" />
		
	</label>
	<g:select name="listingType" from="${propertyInstance.constraints.listingType.inList}" value="${propertyInstance?.listingType}" valueMessagePrefix="property.listingType" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'lastSalePrice', 'error')} ">
	<label for="lastSalePrice">
		<g:message code="property.lastSalePrice.label" default="Last Sale Price" />
		
	</label>
	<g:textField name="lastSalePrice" value="${propertyInstance?.lastSalePrice}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'hasPool', 'error')} ">
	<label for="hasPool">
		<g:message code="property.hasPool.label" default="Has Pool" />
		
	</label>
	<g:checkBox name="hasPool" value="${propertyInstance?.hasPool}" />
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'listingAgent', 'error')} ">
	<label for="listingAgent">
		<g:message code="property.listingAgent.label" default="Listing Agent" />
		
	</label>
	<g:textField name="listingAgent" value="${propertyInstance?.listingAgent}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="property.notes.label" default="Notes" />
		
	</label>
	<g:textField name="notes" value="${propertyInstance?.notes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'condition', 'error')} ">
	<label for="condition">
		<g:message code="property.condition.label" default="Condition" />
		
	</label>
	<g:textField name="condition" value="${propertyInstance?.condition}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'daysOnMarket', 'error')} ">
	<label for="daysOnMarket">
		<g:message code="property.daysOnMarket.label" default="Days On Market" />
		
	</label>
	<g:textField name="daysOnMarket" value="${propertyInstance?.daysOnMarket}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'areaDOM', 'error')} ">
	<label for="areaDOM">
		<g:message code="property.areaDOM.label" default="Area DOM" />
		
	</label>
	<g:textField name="areaDOM" value="${propertyInstance?.areaDOM}"/>
</div>

