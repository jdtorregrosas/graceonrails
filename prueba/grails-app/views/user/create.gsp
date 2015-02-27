<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta name="layout" content="shield"/>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
	<title><g:message code="default.create.label" args="[entityName]" /></title>

</head>
<body>
		<div class="container">
				<a href="#create-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-user" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${userInstance}">
			
					
	
			<ul class="errors" role="alert">
				<g:eachError bean="${userInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			
			<form method="POST">


</form>
			
			<p ALIGN=center>
			<g:form url="[resource:userInstance, action:'save']" >
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
				<div class="form-group">
					<label for="nombre">Primer Nombre:</label> <span
						class="required-indicator">*</span>
					<g:textField class="form-control" name="nombre" maxlength="15" required=""
						value="${userInstance?.nombre}" />
					
				</div>
				<div class="form-group">
					<label for="nombre2">Segundo Nombre:</label>
					<g:textField class="form-control" name="nombre2" maxlength="15"
						value="${userInstance?.nombre2}" />
				</div>
				<div class="form-group">
					<label for="apellido">Primer Apellido:</label> <span
						class="required-indicator">*</span>
					<g:textField class="form-control" name="apellido" maxlength="15" required=""
						value="${userInstance?.apellido}" />
				</div>
				<div class="form-group">
					<label for="apellido2">Segundo Apellido:</label>
					<g:textField class="form-control" name="apellido2" maxlength="15"
						value="${userInstance?.apellido2}" />
				</div>
				<div class="form-group">
					<label for="cedula">Cedula:<span
						class="required-indicator">*</span></label>
					<g:textField class="form-control" name="cedula" maxlength="15" required=""
						value="${userInstance?.cedula}" />
				</div>
				<div class="form-group">
					<label for="usuario">Usuario: <span
						class="required-indicator">*</span>
					</label>
					<g:textField class="form-control" name="usuario" maxlength="20" required=""
						value="${userInstance?.usuario}" />
				</div>
				<div class="form-group">
					<label for="email">Email: <span
						class="required-indicator">*</span>
					</label>
					<g:field class="form-control" type="email" name="email" required="" value="${userInstance?.email}"/>
				</div>
				<div class="form-group">
					<label for="password">Password: <span
						class="required-indicator">*</span>
					</label>
					<g:field class="form-control" type="password" name="password" required=""
						value="${userInstance?.password}" />
				</div>
				<div class="form-group">
					<label for="confirmPassword">Confirmacion de Password:</label>
					<g:field class="form-control" type="password" name="confirmPassword" required=""
						value="${userInstance?.confirmPassword}" />
				</div>
				<div class="form-group">
					<label for="confirmPassword">rol:</label>
					<g:textField class="form-control" name="rol" required="" value="Vendedor"
						/>
				</div>
				<fieldset class="buttons">
					<g:actionSubmit controller="user" value="Crear" action="save"
							class="btn btn-success" />
					</fieldset>
							
			</g:form>
		</div>
	</div>
</body>
</html>
