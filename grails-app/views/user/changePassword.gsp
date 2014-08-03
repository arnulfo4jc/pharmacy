<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Cambiar Contraseña</title>
	<meta name="layout" content="main">
	<r:require modules="bootstrap, app"/>
</head>
<body>
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="panel panel-default">
			  <div class="panel-body">
			 	<div class="row">
			 		<div class="col-md-8">
			 			<h3>Cambiar Contraseña</h3>
			 			<h5>${userInstance.fullName}</h5>
			 		</div>
			 		<div class="col-md-4">
			 			 <span class="glyphicon glyphicon-lock lock pull-right"></span>
			 		</div>
			 	</div>
			    <hr>
			    <br>
			    	<g:render template="changePassForm"/>
			    	<br>
			    	<g:if test="${flash.message}">
			    		<div>
							<g:render template="/layouts/messErrors"/>
						</div>
			    	</g:if>
			  </div>
			</div>
		</div>
	</div>
</body>
</html>