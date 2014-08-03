<g:if test="${actionName=="auth"}">
	<div class="col-md-12 bannerAuth">
		<div class="col-md-1">
			<img class="logIndex pull-left" src="${resource(dir: 'images', file: 'logob2.png')}" alt="B2GOLD"/>
		</div>
		<div class="col-md-8">
			<h1>B2GOLD</h1>
			<p>Plantel Mantenimiento</p>
		</div>
		<div class="col-md-3">
			<div class="memory pull-right">RF 1.0</div>
		</div>
	</div>
</g:if>
<g:else>
<nav class="navbar navbar-default navbar-static-top" role="navigation">
	<div class="container">
      	<div class="navbar-header">
            <button data-target=".bs-navbar-collapse" data-toggle="collapse" type="button" class="navbar-toggle collapsed">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
               	<a class="navbar-brand" href="#">Farmacia SB</a>
	  	</div>
        <nav role="navigation" class="navbar-collapse bs-navbar-collapse collapse" style="height: 1px;">
  	  		<ul class="nav navbar-nav navbar-right">
  	  		<li class="dropdown ${(controllerName == 'fee' && actionName != 'show') ? 'active' : ''}">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Administrar<b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li>
                  	<g:link controller="user" action="list">
                  		<span class="glyphicon glyphicon-list"></span>
                  		Lista Usuarios
                  	</g:link>
                  </li>
                  <li>
                  	<g:link controller="user" action="create">
                  		<span class="glyphicon glyphicon-save"></span>
                  		Agregar Usuario
                  	</g:link>
                  </li>
                </ul>
            </li>

  	  			<li class="dropdown">
			       	<a href="#" class="dropdown-toggle" data-toggle="dropdown">
			        <sec:username/>
			        <span class="glyphicon glyphicon-user"></span>
			        <b class="caret"></b></a>
				    <ul class="dropdown-menu">
				        <li>
					        <g:link controller="user" action="changePassword">
					        	<span class="glyphicon glyphicon-user"></span>
					        	Cambiar contraseña
					        </g:link>
					    </li>
					    <li>
					       	<g:link controller="logout" action="index">
								<span class="glyphicon glyphicon-off"></span>
					        	Cerrar Sesión
					        </g:link>
					    </li>
				    </ul>
			    </li>
			</ul>
  		</nav>
</nav>
</g:else>