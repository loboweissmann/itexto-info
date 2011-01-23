<html>
	<head>
		<meta name="layout" content="infoItexto"/>
	</head>
	<body>
		<div id="content">
			<h2>Controllers</h2>
			<g:each in="${controllers}" var="c">
				<div class="controller">
					<div class="controller_name">${c.name }</div>
					<div class="info">
						<b>Default action:</b> ${c.getDefaultAction() }<br/>
						
						<b>Actions:</b><br/>
						
							<itexto:actions controller="${c}"/>
						<b>Views:</b><br/>
							<itexto:views controller="${c}"/>
						<b>URIs:</b><br/>
						<ul>
							<g:each in="${c.getURIs() }" var="uri">
								<li>${uri }</li>
							</g:each>
						</ul>
					</div>
					
				</div>
			</g:each>
		</div>
	</body>
</html>