<div class="form-group">
	<label for="username">Correo electronico</label>
   	<g:textField name="username" class="form-control" required="" value="${userInstance?.username}"/>
</div>

<div class="form-group">
	<label for="username">Contraseña</label>
   	<g:passwordField name="password" class="form-control"/>
</div>

<div class="form-group">
	<label for="authority">Rol de usuario</label>
	<g:select from="${org.mt.Role.list().authority}" name="authority" value="${authority}" class="form-control"/>
 </div>


<div class="checkbox">
	<label>
	    <strong>Caducar cuenta</strong>
	    <g:checkBox name="accountExpired" value="${userInstance?.accountExpired}"/>
	</label>
</div>

<div class="checkbox">
	<label>
	    <strong>Bloquear cuenta</strong>
	    <g:checkBox name="accountLocked" value="${userInstance?.accountLocked}"/>
	</label>
</div>

<div class="checkbox">
	<label>
	    <strong>Habilitar/Deshabilita Cuenta</strong>
	    <g:checkBox name="enabled" value="${userInstance?.enabled}" />
	</label>
</div>

<div class="checkbox">
	<label>
	    <strong>Caducar Contraseña</strong>
	    <g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" />
	</label>
</div>

<div class="form-group">
	<g:actionSubmit class="btn btn-primary pull-right" action="update" value="Actualizar" />
	<g:link controller="user" action="list" class="btn btn-danger">
		<span class="glyphicon glyphicon-chevron-left"></span>
		Regresar
	</g:link>
</div>
