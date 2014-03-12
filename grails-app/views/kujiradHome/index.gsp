<!DOCTYPE html>
<html>
<head>
<!-- スタイルフレームワーク -->
<meta name="layout" content="main" />

<title>Grails Helo</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
body {
	color: #006600;
}

h1 {
	background: #99ff99;
	font-size: 14pt;
	padding: 5px;
}

h2 {
	font-size: 12pt;
	font-weight: bold;
}

p {
	font-size: 10pt;
}
</style>
</head>
<body>
	<h1>
		${title}
	</h1>
	<h2>
		${msg}
	</h2>
	<g:set var="arr" value="['One','two','Three','Four','Five','Six']" />
	<ol>
		<g:set var="count" value="${0}" />
		<g:each in="${arr}">
			<g:if test="${count++ % 2 == 0}">
				<span style="color: red;">
			</g:if>
			<g:else>
				<span style="color: blue;">
			</g:else>
			<li>
				${it}
			</li>
			</span>
		</g:each>
	</ol>
</body>
</html>