<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title><g:layoutTitle default="Welcome"/></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<r:layoutResources/>
</head>
<body>
	<div class="container">
	<br><br>
		<div class="row">
			<div class="col-md-4 col-md-offset-2">
				<h1>Farmacia SB</h1>
				<hr>
				<p>Mina el Limon</p>
			</div>
			<div class="col-md-4">
				<g:layoutBody/>
				<br>
				<g:if test="${flash.message}">${flash.message}</g:if>
			</div>
		</div>
	</div>
	<r:layoutResources/>
</body>
</html>