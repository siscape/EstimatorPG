<%@ page import="sample.Book" %>



<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'dateIssued', 'error')} ">
	<label for="dateIssued">
		<g:message code="book.dateIssued.label" default="Date Issued" />
		
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'author', 'error')} ">
	<label for="author">
		<g:message code="book.author.label" default="Author" />
		
	</label>
	<g:textField name="author" value="${bookInstance?.author}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'numSold', 'error')} required">
	<label for="numSold">
		<g:message code="book.numSold.label" default="Num Sold" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numSold" type="number" value="${bookInstance.numSold}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="book.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${bookInstance?.title}"/>
</div>

