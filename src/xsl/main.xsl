<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head></head>
  <body>
  <h2>My CD Collection</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>Title</th>
      <th>Writer</th>
      <th>Composer</th>
    </tr>
    <xsl:for-each select="book">
        <xsl:apply-templates select="part" />
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="part">
    <tr><td colspan="3"><xsl:value-of select="title"/></td></tr>
    <xsl:for-each select="song">
        <tr>
            <td><xsl:value-of select="title"/></td>
            <td><xsl:value-of select="writer"/></td>
            <td><xsl:value-of select="composer"/></td>
        </tr>
        <tr><td colspan="3"><xsl:apply-templates select="verses" /></td></tr>
    </xsl:for-each>
</xsl:template>

<xsl:template match="verses">
    <xsl:for-each select="verse">
        <xsl:for-each select="line">
            <xsl:value-of select="."/><br />
        </xsl:for-each>
        <br />
    </xsl:for-each>
</xsl:template>

</xsl:stylesheet>
