
<%@ page import="bootstrap.Message" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'message.label', default: 'Message')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-message" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="date" title="${message(code: 'message.date.label', default: 'Date')}" />
			
				<g:sortableColumn property="active" title="${message(code: 'message.active.label', default: 'Active')}" />
			
				<g:sortableColumn property="name" title="${message(code: 'message.name.label', default: 'Name')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${messageInstanceList}" status="i" var="messageInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${messageInstance.id}">${fieldValue(bean: messageInstance, field: "date")}</g:link></td>
			
				<td><g:formatBoolean boolean="${messageInstance.active}" /></td>
			
				<td>${fieldValue(bean: messageInstance, field: "name")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${messageInstanceTotal}" />
	</div>
</section>

</body>

</html>
