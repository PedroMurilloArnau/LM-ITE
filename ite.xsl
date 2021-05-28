<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
	<title>Actividad 3</title>
	
</head>
	<body>
		<h1>Instituto tecnologico EdiX:</h1>

		<h3>
			Perteneciente a la empresa: <xsl:value-of select="ite/empresa"/>
		</h3>
		<br/>
		<h3>Cosas que nos interesan de nuestra web:</h3>
		<ol type="1">
			<xsl:for-each select="ite/ciclos/ciclo">
				<li>
					<xsl:value-of select="identificador"/>
				</li>
			</xsl:for-each>
		</ol>
		<h3>Profesores: </h3>
		<table>
			<tr>
				<th style="text-align:center">id:</th>
				<th style="text-align:cemter">Profesor:</th>
			</tr>
			<xsl:for-each select="ite/profesores/profesor">
				<tr>
					<td>
						<xsl:value-of select="id"/>
					</td>
					<td>
						<xsl:value-of select="nombre"/>
					</td>
				</tr>
			</xsl:for-each>
		</table>
		<h3>Directiva:</h3>
		<ul>
			<li>
				Director: <xsl:value-of select="ite/director/nombre"/>
			</li>
			<li>
				Jefe de estudios: <xsl:value-of select="ite/jefe_estudios/nombre"/>
			</li>
		</ul>
		<br/>
		<h3>Ciclos formativos: </h3>
		<table>
			<tr>
				<th style="text-align:center">Ciclos:</th>
				<th style="text-align:cemter">Nombre del ciclo:</th>
				<th style="text-align:center">Tipo de grado:</th>
			</tr>
			<xsl:for-each select="ite/ciclos/ciclo">
				<tr>
					<td>
						<xsl:value-of select="identificador"/>
					</td>
					<td>
						<xsl:value-of select="nombre"/>
					</td>
					<td>
						<xsl:value-of select="grado"/>
					</td>
				</tr>
			</xsl:for-each>
		</table>
		<br/>
		<fieldset>
			<legend>Formulario de contacto: </legend>
			<label for="email">Rellena tu correo</label>
			<input type="email" autofocus="" placeholder="correo"/>
			<br/>
			<label for="telefono">Telefono:</label>
			<input type="tel" name="telefono" placeholder="telefono"/>
			<br/>
			<textarea rows ="7" cols ="60" name ="Dinos tus dudas respecto a los cursos: "></textarea>
		</fieldset>
		<h3>
			<a href="https://institutotecnologico.edix.com">Contacta con nosotros</a>
		</h3>
		<h3>
			<a href="https://www.comunidad.madrid/servicios/educacion">Consejeria de educacion</a>
		</h3>

	</body>

</html>
</xsl:template>
</xsl:stylesheet>