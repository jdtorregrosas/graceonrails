<html>
	<head>
		<meta name="layout" content="main">
		<title></title>
		<style type="text/css">
			label{
				float:left;
				width:60px;
			}
		</style>
	</head>
	<body>
		<g:if test="${flash.message}">
			<div class="message">
				${flash.message}
			</div>
		</g:if>  
		<g:if test="${session.user}">
			<br/>
			Login as : ${session.user}   | Rol : ${session.roll}  |  <g:link action="logout">logout</g:link>
		</g:if>	
		<g:else>
			
			<g:form controller="user" action="login" style="padding-left:200px">
				<div style = "float:right">
				<div class="nav" role="navigation">
					<ul>
						<li><g:link class="plus" action="create"><g:message code="Crear nuevo usuario" args="[entityName]" /></g:link></li>
					</ul>
				</div>
					
				</div>
				<br/>				
				<div style="width:220px">
					<label><br/>Usuario:</label><input type="text" name="usuario"/>
					<label><br/>Contraseña:</label><input type="password" name="password"/>
					<g:form url="[resource:userInstance, action:'login']" >
							<g:actionSubmit controller="user" action="login" value="Conectar" />
					</g:form>
				</div>
			</g:form>
		</g:else>
	</body>
</html>