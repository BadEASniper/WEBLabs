<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/cinema">
<html>
<head> 
</head>
<body>
	<style>
	.Action{
	color:#a0c714;
	}
	.Mistery{
		color:#15ff00
	}
	.Sci-Fi{
		color:#F2076E;
	}
	</style>
	<h2>This week's cinema</h2>
	<table border="1">
		<tr>
			<th>Title</th>
			<th>Actors</th>
			<th>Genre</th>
			<th>Date</th>
			<th>Duration</th>
		</tr>
	<xsl:for-each select="movie">
    		<xsl:if test="((date = '06/04/2020') or (date = '07/04/2020') or (date = '08/04/2020') or (date = '09/04/2020') or (date = '10/04/2020') or (date = '11/04/2020') or (date = '12/04/2020'))">
			<xsl:choose>
				<xsl:when test="genre = 'Mistery'">
					<tr class="Mistery">
						<td><xsl:value-of select="title"/></td>
						<td><xsl:value-of select="actors"/></td>
						<td><xsl:value-of select="genre"/></td>
						<td><xsl:value-of select="date"/></td>
						<td><xsl:value-of select="duration"/></td>
					</tr>
				</xsl:when>
				<xsl:when test="genre = 'Action'">
					<tr class="Action">
						<td><xsl:value-of select="title"/></td>
						<td><xsl:value-of select="actors"/></td>
						<td><xsl:value-of select="genre"/></td>
						<td><xsl:value-of select="date"/></td>
						<td><xsl:value-of select="duration"/></td>
					</tr>
				</xsl:when>

				<xsl:when test="genre = 'Sci-Fi'">
					<tr class="Sci-Fi">
						<td><xsl:value-of select="title"/></td>
						<td><xsl:value-of select="actors"/></td>
						<td><xsl:value-of select="genre"/></td>
						<td><xsl:value-of select="date"/></td>
						<td><xsl:value-of select="duration"/></td>
					</tr>
				</xsl:when>
			</xsl:choose>
		</xsl:if> 


	</xsl:for-each>
	</table>
	
</body>
</html>

</xsl:template>

</xsl:stylesheet>