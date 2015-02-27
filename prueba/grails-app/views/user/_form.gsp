<%@ page import="prueba.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="user.nombre.label" default="Primer Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="15" required="" value="${userInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'nombre2', 'error')} required">
	<label for="nombre2">
		<g:message code="user.nombre2.label" default="Segundo Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre2" maxlength="15" required="" value="${userInstance?.nombre2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="user.apellido.label" default="Primer Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" maxlength="15" required="" value="${userInstance?.apellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'apellido2', 'error')} required">
	<label for="apellido2">
		<g:message code="user.apellido2.label" default="Segundo Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido2" maxlength="15" value="${userInstance?.apellido2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'cedula', 'error')} required">
	<label for="cedula">
		<g:message code="user.cedula.label" default="Cedula" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cedula" maxlength="15" required="" value="${userInstance?.cedula}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="user.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="usuario" maxlength="20" required="" value="${userInstance?.usuario}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${userInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${userInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'confirmPassword', 'error')} required">
	<label for="confirmPassword">
		<g:message code="user.confirmPassword.label" default="Confirm Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="confirmPassword" required="" value="${userInstance?.confirmPassword}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'Rol', 'error')} required">
	<label for="Rol">
		<g:message code="user.Rol.label" default="Rol" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="Rol" required="" value="Vendedor" readonly="readonly"/>

</div>

