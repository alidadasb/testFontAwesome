<%@ page import="bootstrap.Message" %>



			<div class="control-group fieldcontain ${hasErrors(bean: messageInstance, field: 'date', 'error')} required">
				<label for="date" class="control-label"><g:message code="message.date.label" default="Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="date" precision="day"  value="${messageInstance?.date}"  />
					<span class="help-inline">${hasErrors(bean: messageInstance, field: 'date', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: messageInstance, field: 'active', 'error')} ">
				<label for="active" class="control-label"><g:message code="message.active.label" default="Active" /></label>
				<div class="controls">
					<bs:checkBox name="active" value="${messageInstance?.active}" />
					<span class="help-inline">${hasErrors(bean: messageInstance, field: 'active', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: messageInstance, field: 'name', 'error')} ">
				<label for="name" class="control-label"><g:message code="message.name.label" default="Name" /></label>
				<div class="controls">
					<g:textField name="name" value="${messageInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: messageInstance, field: 'name', 'error')}</span>
				</div>
			</div>

