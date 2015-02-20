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
			<br/>
			Logged as : ${session.user}| <g:link action="logout">logout</g:link>
			<br/>
			<br/>
			<hr>
	</g:if>
	<ol class="property-list user">
		<g:each in="${personas}" var="persona">
			<br/>
           	<li>${persona.usuario} ${persona.email} ${persona.password}</li>
        </g:each>
    </ol>	
</body>