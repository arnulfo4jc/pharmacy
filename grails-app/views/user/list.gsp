<!doctype html>
<html lang="es">
<head>
	<r:require modules="bootstrap, app, appScript"/>
	<meta name='layout' content='main'/>
</head>
<body>
	<g:if test="${userInstance}">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>${userInstance.size()} Usuario${userInstance.size() > 1 ? 's' : ''} </th>
					<th width="1"></th>
					<th width="1"></th>
				</tr>
			</thead>
			<tbody>
				<g:each in="${userInstance}" var="user">
					<tr>
						<td><g:link action="show" id="${user.id}">${user.username}</g:link></td>
						<td>
							<sec:ifAllGranted roles="ROLE_ADMIN">
								<g:link action="edit" id="${user.id}" class="toolEdit" title="Editar" data-placement="top">
									<span class="glyphicon glyphicon-wrench"></span>
								</g:link>
							</sec:ifAllGranted>
						</td>
						<td>
							<sec:ifAllGranted roles="ROLE_ADMIN">
								<g:link action="delete" id="${user.id}" class="toolDelete" title="Eliminar" data-placement="top">
									<span class="glyphicon glyphicon-trash"></span>
								</g:link>
							</sec:ifAllGranted>
						</td>
					</tr>
				</g:each>
			</tbody>
		</table>
	</g:if>
	<g:else>
		<p><br>Nada que mostrar</p>
	</g:else>
	<g:if test="${flash.message}">
		<div>
			<g:render template="/layouts/messErrors"/>
		</div>
	</g:if>
</body>
</html>
