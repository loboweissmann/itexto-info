<html>
	<head>
		<title>itexto Info</title>
		<link rel="stylesheet" href="${resource(dir:'css', file:'itexto-info-reset.css') }"/>
		<link rel="stylesheet" href="${resource (dir:'css', file:'itexto-info.css') }"/>
		<g:layoutHead/>
	</head>
	<body>
		<div id="top">
			<img src="${resource(dir:'images', file:'logoitexto_sm.jpg') }" style="width:80px; float: left;"/>
			<h1>itexto Info Utils Grails Plugin</h1>
			<br style="clear:both"/>
		</div>
		<g:render template="menu" plugin="itextoInfo"/>
		<g:layoutBody/>
	</body>
</html>