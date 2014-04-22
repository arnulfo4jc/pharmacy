
<%@ page import="ni.com.b2g.User" %>
<!DOCTYPE html>
<html>
	<head>
		<r:require modules="bootstrap, app, appScript"/>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row">
			<div class="col-md-12">
				<h1>Detalles de Usuario</h1>
			</div>
		</div>
		<div class="col-md-8">
		<table align="center" class="table table-condensed tableshow">
			<tbody>

			<tr>
				<th class="">Nombre de usuario:</th>
				<td class="datos">${userInstance.username}</td>
			</tr>

			<tr>
				<th class="">Nombre Completo:</th>
				<td class="datos">${userInstance.fullName}</td>
			</tr>

			<tr>
				<th class="">Cuenta Habilitada:</th>
				<td class="datos">${userInstance.enabled}</td>
			</tr>

			<tr>
				<th class="">Caducidad de Cuenta:</th>
				<td class="datos">${userInstance.accountExpired}</td>
			</tr>

			<tr>
				<th class="">Cuenta Bloqueada:</th>
				<td class="datos">${userInstance.accountLocked}</td>
			</tr>

			<tr>
				<th class="">Caducidad de contraseña:</th>
				<td class="datos">${userInstance.passwordExpired}</td>
			</tr>

			<tr>
				<td colspan="2">
					<div class="btn-group pull-left">
						<g:link controller="user" action="list" class="btn btn-success toolList" title="Lista" data-placement="bottom">
							<span class="glyphicon glyphicon-chevron-left"></span>
						</g:link>
					</div>

					<div class="btn-group pull-right">
						<g:link controller="user" action="edit" params="[id:"${userInstance.id}"]" title="Editar" class="btn btn-info toolEdit" data-placement="bottom">
							<span class="glyphicon glyphicon-wrench"></span>
						</g:link>
						<g:link controller="user" action="delete" params="[id:"${userInstance.id}"]" title="Eliminar" class="btn btn-info toolDelete" data-placement="bottom">
							<span class="glyphicon glyphicon-trash"></span>
						</g:link>
					</div>
				</td>
			</tr>

			</tbody>
		</table>
		</div>
	</body>
</html>
