<%@ page import="com.siscape.estimator.Project" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-project" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                              default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-project" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list project">

        <g:if test="${projectInstance?.projectType}">
            <li class="fieldcontain">
                <span id="projectType-label" class="property-label"><g:message code="project.projectType.label"
                                                                               default="Project Type"/></span>

                <span class="property-value" aria-labelledby="projectType-label"><g:fieldValue bean="${projectInstance}"
                                                                                               field="projectType"/></span>

            </li>
        </g:if>

        <g:if test="${projectInstance?.projectStatus}">
            <li class="fieldcontain">
                <span id="projectStatus-label" class="property-label"><g:message code="project.projectStatus.label"
                                                                                 default="Project Status"/></span>

                <span class="property-value" aria-labelledby="projectStatus-label"><g:fieldValue
                        bean="${projectInstance}" field="projectStatus"/></span>

            </li>
        </g:if>

        <g:if test="${projectInstance?.startDate}">
            <li class="fieldcontain">
                <span id="startDate-label" class="property-label"><g:message code="project.startDate.label"
                                                                             default="Start Date"/></span>

                <span class="property-value" aria-labelledby="startDate-label"><g:formatDate
                        date="${projectInstance?.startDate}"/></span>

            </li>
        </g:if>

        <g:if test="${projectInstance?.endDate}">
            <li class="fieldcontain">
                <span id="endDate-label" class="property-label"><g:message code="project.endDate.label"
                                                                           default="End Date"/></span>

                <span class="property-value" aria-labelledby="endDate-label"><g:formatDate
                        date="${projectInstance?.endDate}"/></span>

            </li>
        </g:if>

        <g:if test="${projectInstance?.projectedProfit}">
            <li class="fieldcontain">
                <span id="projectedProfit-label" class="property-label"><g:message code="project.projectedProfit.label"
                                                                                   default="Projected Profit"/></span>

                <span class="property-value" aria-labelledby="projectedProfit-label"><g:fieldValue
                        bean="${projectInstance}" field="projectedProfit"/></span>

            </li>
        </g:if>

        <g:if test="${projectInstance?.isStarred}">
            <li class="fieldcontain">
                <span id="isStarred-label" class="property-label"><g:message code="project.isStarred.label"
                                                                             default="Is Starred"/></span>

                <span class="property-value" aria-labelledby="isStarred-label"><g:formatBoolean
                        boolean="${projectInstance?.isStarred}"/></span>

            </li>
        </g:if>

        <g:if test="${projectInstance?.property}">
            <li class="fieldcontain">
                <span id="property-label" class="property-label"><g:message code="project.property.label"
                                                                            default="Property"/></span>

                <span class="property-value" aria-labelledby="property-label"><g:link controller="property"
                                                                                      action="show"
                                                                                      id="${projectInstance?.property?.id}">${projectInstance?.property?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${projectInstance?.repairEstimate}">
            <li class="fieldcontain">
                <span id="repairEstimate-label" class="property-label"><g:message code="project.repairEstimate.label"
                                                                                  default="Repair Estimate"/></span>

                <span class="property-value" aria-labelledby="repairEstimate-label"><g:link controller="repairEstimate"
                                                                                            action="show"
                                                                                            id="${projectInstance?.repairEstimate?.id}">${projectInstance?.repairEstimate?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${projectInstance?.profitEstimate}">
            <li class="fieldcontain">
                <span id="profitEstimate-label" class="property-label"><g:message code="project.profitEstimate.label"
                                                                                  default="Profit Estimate"/></span>

                <span class="property-value" aria-labelledby="profitEstimate-label"><g:link controller="profitEstimate"
                                                                                            action="show"
                                                                                            id="${projectInstance?.profitEstimate?.id}">${projectInstance?.profitEstimate?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${projectInstance?.id}"/>
            <g:link class="edit" action="edit" id="${projectInstance?.id}"><g:message code="default.button.edit.label"
                                                                                      default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
