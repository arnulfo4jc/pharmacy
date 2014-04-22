	<g:if test="${flash.message && flash.message!="Errores"}">
		<div class="${(params.typeMess == 'info') ? 'alert alert-info' : 'alert alert-danger'}">
			${flash.message}
		</div>
	</g:if>
	<g:else>
		<g:if test="${controllerName == 'register' || controllerName == 'user'}">
			<g:hasErrors bean="${userInstance}">
				<div class="alert alert-danger">
					<a class="close" data-dismiss="alert" href="#">&times;</a>
					<ul class="errors" role="alert">
						<g:eachError bean="${userInstance}" var="error">
							<li id="err"> <g:if test="${error in org.springframework.validation.FieldError}"></g:if><g:message error="${error}"/></li>
						</g:eachError>
					</ul>
				</div>
			</g:hasErrors>
		</g:if>
		<g:if test="${controllerName == 'equipment'}">
			<g:hasErrors bean="${equipmentInstance}">
				<div class="alert alert-danger">
					<a class="close" data-dismiss="alert" href="#">&times;</a>
					<ul class="errors" role="alert">
						<g:eachError bean="${equipmentInstance}" var="error">
							<li id="err"> <g:if test="${error in org.springframework.validation.FieldError}"></g:if><g:message error="${error}"/></li>
						</g:eachError>
					</ul>
				</div>
			</g:hasErrors>
		</g:if>
</g:else>
