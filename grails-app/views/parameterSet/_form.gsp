<%@ page import="com.siscape.estimator.ParameterSet" %>



<div class="fieldcontain ${hasErrors(bean: parameterSetInstance, field: 'setName', 'error')} ">
	<label for="setName">
		<g:message code="parameterSet.setName.label" default="Set Name" />
		
	</label>
	<g:textField name="setName" value="${parameterSetInstance?.setName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: parameterSetInstance, field: 'author', 'error')} ">
	<label for="author">
		<g:message code="parameterSet.author.label" default="Author" />
		
	</label>
	<g:textField name="author" value="${parameterSetInstance?.author}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: parameterSetInstance, field: 'fileLink', 'error')} ">
	<label for="fileLink">
		<g:message code="parameterSet.fileLink.label" default="File Link" />
		
	</label>
	<g:field type="url" name="fileLink" value="${parameterSetInstance?.fileLink}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: parameterSetInstance, field: 'parameters', 'error')} ">
	<label for="parameters">
		<g:message code="parameterSet.parameters.label" default="Parameters" />
		
	</label>
	<g:select name="parameters" from="${com.siscape.estimator.Parameter.list()}" multiple="multiple" optionKey="id" size="5" value="${parameterSetInstance?.parameters*.id}" class="many-to-many"/>
</div>

