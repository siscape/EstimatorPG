<%@ page import="com.siscape.estimator.Parameter" %>



<div class="fieldcontain ${hasErrors(bean: parameterInstance, field: 'parameter', 'error')} ">
	<label for="parameter">
		<g:message code="parameter.parameter.label" default="Parameter" />
		
	</label>
	<g:textField name="parameter" value="${parameterInstance?.parameter}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: parameterInstance, field: 'formula', 'error')} ">
	<label for="formula">
		<g:message code="parameter.formula.label" default="Formula" />
		
	</label>
	<g:textField name="formula" value="${parameterInstance?.formula}"/>
</div>

