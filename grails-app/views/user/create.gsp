<html>

<head>
	<r:require modules="bootstrap, app"/>
	<meta name='layout' content='main'/>
	<title><g:message code='spring.security.ui.register.title'/></title>
</head>
<body>

<div class="col-md-8 col-md-offset-2">
	<div class="panel panel-default">
		<div class="panel-body">
		    <div class="row">
			 	<div class="col-md-8">
			 		<h3>Registro de Usuarios</h3> 
			 	</div>
			 	<div class="col-md-4">
			 		<span class="glyphicon glyphicon-pencil lock pull-right"></span>
			 	</div>
			 </div>
			<hr>
			<g:form action='create' name='registerForm'>
					<p align="justify">Ingrese los Datos correctamente para que pueda registrar si problemas los usuarios <strong>Gacias!!</strong></p>
					<g:hiddenField name="authority" value="ROLE_USER"/>
					<div class="form-group">
					   	<g:textField type="text" class="form-control" name="email" Placeholder="Correo electrónico" required="" autocomplete="off"/>
					</div>
					<div class="form-group">
					   	<g:passwordField type="text" class="form-control" name="password" Placeholder="Contraseña" required=""/>
					</div>
					<div class="form-group">
					   	<g:passwordField type="text" class="form-control" name="password2" Placeholder="Repita su contraseña" required=""/>
					</div>
					<g:link controller="user" action="list" class="btn btn-danger">
						<span class="glyphicon glyphicon-chevron-left"></span>
						Regresar
					</g:link>
					<input type='submit' id="submit" class="btn btn-primary pull-right" value='Registrar Usuario'/>
			</g:form>
		</div>
	</div>
	<div class="alert">
		<g:render template="/layouts/messErrors"/>
	</div>

</div>
</body>
</html>
