<html>
	<head>
		<title>itexto Info</title>
		<link rel="stylesheet" href="${resource(dir:'css', file:'itexto-info-reset.css') }"/>
		<link rel="stylesheet" href="${resource (dir:'css', file:'itexto-info.css') }"/>
		<g:layoutHead/>
	</head>
	<body>
		<div id="wrapper">
			<div id="top">
				<a href="http://www.itexto.com.br"><img src="${resource(dir:'images', file:'logoitexto_sm.jpg') }" style="width:80px; float: left;"/></a>
				<br/>
				<h1>Info Utils</h1>
				<br style="clear:both"/>
			</div>
			<g:render template="menu" plugin="itextoInfo"/>
			<g:layoutBody/>
			
		</div>
		<div id="fundo">
				Developed by itexto Desenvolvimento de Projetos Ltda.<br/>
				<a href="http://www.itexto.com.br">http://itexto.com.br</a>
			</div>
	</body>
</html>