<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<h2>Аттестация</h2>
<table border="1">
<tr bgcolor="bisque">
    <th>Фамилия, имя</th>
    <th>Оценка</th>
</tr>
<xsl:for-each select="students/people">
<tr>
    <td bgcolor="rgba(255, 228, 196, 0.235)"><xsl:value-of select="student"/></td>
    <xsl:choose>
        <xsl:when test ="title &gt; 9">
            <td bgcolor="green"><xsl:value-of select="title"/></td>
        </xsl:when>
         <xsl:when test ="title &lt; 4">
            <td bgcolor="red"><xsl:value-of select="title"/></td>
        </xsl:when>
        <xsl:otherwise>
            <td bgcolor="rgba(255, 228, 196, 0.235)"><xsl:value-of select="title"/></td>
        </xsl:otherwise>
    </xsl:choose> 
</tr>
</xsl:for-each>
</table></body></html>
</xsl:template>
</xsl:stylesheet>