<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title><g:layoutTitle default="Welcome"/></title>
	<r:layoutResources/>
</head>
<body>
	<g:render template="/layouts/navbar"/>
	<g:render template="/layouts/toolbar-plus"/>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<g:layoutBody/>
			</div>
		</div>
	</div>
	<r:layoutResources/>
</body>
</html>