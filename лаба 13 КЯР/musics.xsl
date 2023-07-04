<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<h2>Музыка</h2>
<table border="1">
<tr bgcolor=" bisque">
    <th>Композитор</th>
    <th>Название произведения</th>
</tr>
<xsl:for-each select="musics/music">
<xsl:sort select="title"/>
<tr>
    <td bgcolor="rgba(255, 228, 196, 0.235)"><xsl:value-of select="author"/></td>
    <td bgcolor="rgba(255, 228, 196, 0.235)"><xsl:value-of select="title"/></td>
</tr>
</xsl:for-each>
</table></body></html>
</xsl:template>
</xsl:stylesheet>
