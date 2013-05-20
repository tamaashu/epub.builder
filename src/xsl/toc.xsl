<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <ncx xmlns="http://www.daisy.org/z3986/2005/ncx/" version="2005-1" xml:lang="hu">
	<head>
	    <meta content="c8087f05-5091-4f21-b87c-cad0aa282e92" name="dtb:uid"/>
	    <meta content="2" name="dtb:depth"/>
	    <meta content="epub.builder" name="dtb:generator"/>
	    <meta content="0" name="dtb:totalPageCount"/>
	    <meta content="0" name="dtb:maxPageNumber"/>
	</head>
	<xsl:for-each select="book">
	    <docTitle>
		<text><xsl:value-of select="title" /></text>
	    </docTitle>
	    <navMap>
		<xsl:apply-templates select="part" />
	    </navMap>
	</xsl:for-each>
    </ncx>
</xsl:template>

<xsl:template match="part">
    <navPoint class="chapter">
        <xsl:attribute name="id">
	    <xsl:text>part-</xsl:text>
    	    <xsl:value-of select="nr" />
        </xsl:attribute>
        <navLabel>
    	    <text><xsl:value-of select="title" /></text>
        </navLabel>
        <content src="main.html"/>
    </navPoint>
    <xsl:for-each select="song">
	<navPoint class="chapter">
		<xsl:attribute name="id">
		    <xsl:text>song-</xsl:text>
		    <xsl:value-of select="nr" />
		</xsl:attribute>
                <xsl:attribute name="playOrder">
	            <xsl:number level="any" />
                </xsl:attribute>
	    <navLabel>
		<text><xsl:value-of select="title" /></text>
	    </navLabel>
	    <content src="main.html"/>
	</navPoint>
    </xsl:for-each>
</xsl:template>

</xsl:stylesheet>
