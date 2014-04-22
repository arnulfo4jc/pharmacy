<div class="container">
	<div class="row">
		<g:if test="${ (controllerName == 'user')  && (actionName=="list" || actionName=="show" || actionName=="edit" || actionName=="delete") }">
			<g:link controller="user" action="create" class="btn btn-primary pull-right">
				Crear usuario
				<span class="glyphicon glyphicon-plus"></span>
			</g:link>
		</g:if>
	</div>
</div>