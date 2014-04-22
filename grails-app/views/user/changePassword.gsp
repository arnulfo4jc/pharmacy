<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Cambiar Contraseña</title>
	<meta name="layout" content="main">
	<r:require modules="bootstrap, app"/>
</head>
<body>
	<div class="row">
		<div class="col-md-9">
			<g:render template="/layouts/taps"/>

			<div class="panel panel-default">
			  <div class="panel-body">
			 	<div class="row">
			 		<div class="col-md-8">
			 			<h3>Cambiar Contraseña </h3> 
			 		</div>
			 		<div class="col-md-4">
			 			 <span class="glyphicon glyphicon-lock lock pull-right"></span>
			 		</div>
			 	</div>
			    <hr>
			    	<g:render template="changePassForm"/>
			    	<br>
			    	<g:if test="${flash.message}">
			    		<div>
							<g:render template="/layouts/messErrors"/>
						</div>
			    	</g:if>
			  </div>
			</div>
		</div>
		<div class="col-md-3">
			<g:if test="${userInstance.avatar}">
				<img class="avatar img-thumbnail imgProfile" src="${createLink(controller:'user', action:'avatar_image', id:userInstance.ident())}" />
				${userInstance.username}
			</g:if>
			<g:else>
				${userInstance.username}
			</g:else>
		</div>
	</div>
</body>
</html>