<g:uploadForm action="updateProfile">
<g:hiddenField name="id" value="${userInstance.id}"/>
	<div class="form-group">
		<g:textField type="text" name="username" maxlength="70" value="${userInstance?.username}" class="form-control" placeholder="Nombre de usuario" autofocus="true"/>
	</div>

	<div class="form-group">
		<g:textField name="fullName" class="form-control" value="${userInstance?.fullName}" placeholder="Nombre completo"/>
	</div>

	<div class="form-group">
		<label for="avatar">Foto de Perfil</label>
		<input type="file" name="avatar" id="avatar"/>
	</div>

	<br>
	<input type="submit" class="btn btn-default" value="Cambiar"/>
</g:uploadForm>