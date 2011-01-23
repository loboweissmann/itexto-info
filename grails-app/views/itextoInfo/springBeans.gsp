<html>
	<head>
		<meta name="layout" content="infoItexto"/>
	</head>
	<body>
		<div id="content">
		<h2>Spring Beans</h2>
		<g:each in="${beans}" var="bean">
			<div class="bean">
			<div class="bean_name"><b>Bean:</b> ${bean.name}</div>
				<div class="info">
					
					<div class="bean_class"><b>Class:</b> ${bean.value.class}</div>
					<div class="bean_attributes"><b>Attributes:</b><br/>
						<ul>
						<g:each in="${bean.value.metaClass.properties}" var="a">
							<li>${a.name }</li>
						</g:each>
						</ul>
					</div>
					<div class="bean_methods"><b>Methods:</b><br/>
						<ul>
						<g:each in="${bean.value.metaClass.methods}" var="m">
							<li>${m }</li>
						</g:each>
						</ul>
					</div>
				</div>
			</div>
		</g:each>
		</div>
	</body>
</html>