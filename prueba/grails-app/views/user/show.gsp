
<%@ page import="prueba.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="shield">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index2"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-user" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user">
			
				<g:if test="${userInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="user.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue class="form-control" bean="${userInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.nombre2}">
				<li class="fieldcontain">
					<span id="nombre2-label" class="property-label"><g:message code="user.nombre2.label" default="Nombre2" /></span>
					
						<span class="property-value" aria-labelledby="nombre2-label"><g:fieldValue class="form-control" bean="${userInstance}" field="nombre2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.apellido}">
				<li class="fieldcontain">
					<span id="apellido-label" class="property-label"><g:message code="user.apellido.label" default="Apellido" /></span>
					
						<span class="property-value" aria-labelledby="apellido-label"><g:fieldValue class="form-control" bean="${userInstance}" field="apellido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.apellido2}">
				<li class="fieldcontain">
					<span id="apellido2-label" class="property-label"><g:message code="user.apellido2.label" default="Apellido2" /></span>
					
						<span class="property-value" aria-labelledby="apellido2-label"><g:fieldValue class="form-control" bean="${userInstance}" field="apellido2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.cedula}">
				<li class="fieldcontain">
					<span id="cedula-label" class="property-label"><g:message code="user.cedula.label" default="Cedula" /></span>
					
						<span class="property-value" aria-labelledby="cedula-label"><g:fieldValue class="form-control" bean="${userInstance}" field="cedula"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="user.usuario.label" default="Usuario" /></span>
					
						<span class="property-value" aria-labelledby="usuario-label"><g:fieldValue class="form-control" bean="${userInstance}" field="usuario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="user.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue class="form-control" bean="${userInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="user.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue class="form-control" bean="${userInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.confirmPassword}">
				<li class="fieldcontain">
					<span id="confirmPassword-label" class="property-label"><g:message code="user.confirmPassword.label" default="Confirm Password" /></span>
					
						<span class="property-value" aria-labelledby="confirmPassword-label"><g:fieldValue class="form-control" bean="${userInstance}" field="confirmPassword"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.rol}">
				<li class="fieldcontain">
					<span id="rol-label" class="property-label"><g:message code="user.rol.label" default="rol" /></span>
					
						<span class="property-value" aria-labelledby="rol-label"><g:fieldValue class="form-control" bean="${userInstance}" field="rol"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-success" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-success" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
