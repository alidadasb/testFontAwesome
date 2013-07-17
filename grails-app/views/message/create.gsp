<%@ page import="bootstrap.Message" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'message.label', default: 'Message')}" />
	<title><g:message code="default.create.label" args="[entityName]" /></title>
</head>

<body>

<section id="create-message" class="first">

	<g:hasErrors bean="${messageInstance}">
	<div class="alert alert-error">
		<g:renderErrors bean="${messageInstance}" as="list" />
	</div>
	</g:hasErrors>
	
	<g:form action="save" class="form-horizontal" >
		<fieldset class="form">
			<g:render template="form"/>
		</fieldset>
		<div class="form-actions">
			<button name="create" class="btn btn-primary icon-ok" value="${message(code: 'default.button.create.label', default: 'Create')}" >Press me</button>
            <button class="btn" type="reset"><g:message code="default.button.reset.label" default="Reset" /></button>
		</div>
	</g:form>
	
</section>
		
</body>

</html>
