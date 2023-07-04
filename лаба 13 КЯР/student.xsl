<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head><title>My first template rule</title>
</head>
<body>
<h2>Аттестация</h2>
<table border="1">
<tr bgcolor="#9acd32">
    <th>Фамилия, имя</th>
    <th>Оценка</th>
</tr>
<xsl:for-each select="students/people">
<xsl:sort select="student"/>
<tr>
    <td><xsl:value-of select="student"/></td>
    <xsl:choose>
        <xsl:when test="title &gt; 9">
            <td bgcolor="green">
            <xsl:value-of select="title"/></td>
        </xsl:when>
    <xsl:otherwise>
        <xsl:when test="title &lt; 4">
            <td bgcolor="red">
            <xsl:value-of select="title"/></td>
        </xsl:when>
    </xsl:otherwise>
    <xsl:otherwise>
        <tds><xsl:value-of select="title"/></td>
    </xsl:otherwise>
    </xsl:choose>
</tr>
</xsl:for-each>
</table></body></html>
</xsl:template>
</xsl:stylesheet>