<!DOCTYPE html>
<html>
	<head>
		<r:require modules="bootstrap, app"/>
		<meta name="layout" content="main">
		<title>Editar Usuario</title>
	</head>
	<body>
	<div class="col-md-8 col-md-offset-2">
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="row">
				 	<div class="col-md-8">
				 		<h3>Editar Usuario</h3> 
				 	</div>
					 <div class="col-md-4">
					 	<span class="glyphicon glyphicon-wrench lock pull-right"></span>
					 </div>
				</div>
				<hr>
				<div>
					<g:form url="[resource:userInstance, action:'update']" method="PUT" >
						<g:hiddenField name="id" value="${userInstance?.id}" />
						<g:hiddenField name="email" value="${userInstance?.email}" />
						<g:render template="form"/>
					</g:form>
				</div>
				<br>
				<div>
					<g:render template="/layouts/messErrors"/>
				</div>
			</div>
		</div>
	</div>
	</body>
</html>
