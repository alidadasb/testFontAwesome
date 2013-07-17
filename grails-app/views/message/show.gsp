
<%@ page import="bootstrap.Message" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'message.label', default: 'Message')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-message" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="message.date.label" default="Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${messageInstance?.date}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="message.active.label" default="Active" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${messageInstance?.active}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="message.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: messageInstance, field: "name")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
