<!doctype html>
<html lang="es">
<head>
	<meta name="layout" content="main">
	<r:require modules="bootstrap, app"/>
</head>
<body>
	<div class="col-md-8 col-md-offset-2">
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="row">
				 	<div class="col-md-8">
				 		<h3>Eliminar Usuario</h3> 
				 	</div>
					 <div class="col-md-4">
					 	<span class="glyphicon glyphicon-trash lock pull-right"></span>
					 </div>
				</div>
			<hr>
			<div>
				<h4>Si procede a eliminar a: <strong>${userInstance.username}</strong> no podras deshacer los cambios! Deseas continuar?</h4>
				<g:form action="delete">
					<g:hiddenField name="id" value="${id}"/>
					<g:submitButton name="delete" value="Si" class="btn btn-danger"/>
					<g:link action="list" class="btn btn-default">No</g:link>
				</g:form>
			</div>
				<br>
				<g:if test="${flash.message}">
				   	<div>
						<g:render template="/layouts/messErrors"/>
					</div>
				</g:if>
			</div>
		</div>
	</div>
</body>
</html>
