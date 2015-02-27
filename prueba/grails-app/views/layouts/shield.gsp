<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="${request.contextPath}/favicon.ico">

<title><g:layoutTitle default="El que tenga tienda que..." /></title>

<!-- Bootstrap core CSS -->
<link href="${request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="jumbotron.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="${request.contextPath}/js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<style>
h5 {
	color: #000000;
}
</style>
<g:layoutHead />
</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<g:if test="${flash.message}">
					<div class="message">
						${flash.message}
					</div>
				</g:if>
				<g:if test="${session.user}">
					<br />
					<h5>
						Login as :
						${session.user}
						| rol :
						${session.roll}
						|

						<g:link action="logout">logout</g:link>
					</h5>
				</g:if>
				<g:else>
					<g:form controller="user" class="navbar-form navbar-right">
						
						
						<ul class="nav navbar-nav">
							<li><img src="${request.contextPath}/images/carrito.png" class="img-rounded" alt="Carrito" width="55" height="50"></li>

							<li class="active"><a href="#">Home</a></li>
							<li><a href="#about">About</a></li>
							<li><a href="#contact">Contact</a></li>
						</ul>
						<div class="form-group">
							<input type="text" name="usuario" placeholder="Usuario"
								class="form-control">
						</div>
						<div class="form-group">
							<input type="password" name="password" placeholder="Password"
								class="form-control">
						</div>
						<g:actionSubmit value="Login" action="login"
							class="btn btn-success" />
						<g:actionSubmit value="Sign up" action="create"
							class="btn btn-success" />

					</g:form>
				</g:else>
			</div>
			<!--/.navbar-collapse -->
		</div>
	</nav>
	<!-- Main jumbotron for a primary marketing message or call to action -->
	<div class="jumbotron">
		<div class="container">
		<br/>
			<h1>Tienda Virtual, Bienvenido!</h1>
			<img src="${request.contextPath}/images/carrito.png" class="img-rounded" alt="Carrito" width="100" height="100">
			<br/>			
		</div>
	</div>

	<g:layoutBody />
	<hr>
	<div>
	<footer>
		<p>&copy; Company 2014</p>
	</footer>
	</div>
	<!-- /container -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${request.contextPath}/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="${request.contextPath}/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
