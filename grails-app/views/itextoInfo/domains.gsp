<html>
	<head>
		<meta name="layout" content="infoItexto"/>
	</head>
	<body>
		<div id="content">
			<h2>Domains</h2>
			<g:each in="${domains}" var="domain">
				<div class="domain">
					<div class="domain_name">${domain.name }</div>
					<div class="domain_identifier">Identifier: ${domain.value.getIdentifier().name }</div>
					<div class="info">
						<b>Properties:</b><br/>
						<itexto:domain_properties domain="${domain.value }"/>
					</div>
				</div>
			</g:each>
		</div>
	</body>
</html>