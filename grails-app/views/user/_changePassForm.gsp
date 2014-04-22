<g:form action="updatePassword">
<g:hiddenField name="id" value="${userInstance.id}"/>
	<div class="form-group">
		<g:passwordField class="form-control" name="currentPassword" placeholder="Ingrese su contraseña actual" autofocus="true"/>	
	</div>

	<div class="form-group">
		<g:passwordField class="form-control" name="password" placeholder="Nueva contraseña"/>	
	</div>

	<div class="form-group">
		<g:passwordField class="form-control" name="confirmPassword" placeholder="Confirme su nueva contraseña"/>	
	</div>

	<br>
	<input type="submit" class="btn btn-default" value="Cambiar"/>
</g:form>