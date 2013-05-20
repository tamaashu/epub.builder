<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <package xmlns="http://www.idpf.org/2007/opf" version="2.0" unique-identifier="uuid_id">
	<xsl:for-each select="book">
          <metadata xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:opf="http://www.idpf.org/2007/opf" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:dc="http://purl.org/dc/elements/1.1/">
            <meta name="build:timestamp" content="{$datetime}" />
            <meta name="cover" content="cover"/>
            <dc:publisher><xsl:value-of select="publisher" /></dc:publisher>
            <dc:language><xsl:value-of select="language" /></dc:language>
            <dc:creator opf:file-as="{creator}" opf:role="aut"><xsl:value-of select="creator" /></dc:creator>
            <dc:title opf:file-as="{title}"><xsl:value-of select="title" /></dc:title>
            <dc:date><xsl:value-of select="date" /></dc:date>
            <dc:contributor opf:role="bkp">epub.builder</dc:contributor>
            <dc:identifier opf:scheme="ISBN"><xsl:value-of select="isbn" /></dc:identifier>
            <dc:identifier id="uuid_id" opf:scheme="uuid">c8087f05-5091-4f21-b87c-cad0aa282e92</dc:identifier>
          </metadata>
          <manifest>
	    <item href="arail.ttf" media-type="application/octet-stream" id="id1"/>
	    <item href="ariali.ttf" media-type="application/octet-stream" id="id2"/>
	    <item href="arialbi.ttf" media-type="application/octet-stream" id="id3"/>
	    <item href="arialbd.ttf" media-type="application/octet-stream" id="id4"/>
            <item href="titlepage.xhtml" id="titlepage" media-type="application/xhtml+xml"/>
            <item href="cover.jpeg" id="cover" media-type="image/jpeg"/>
            <item href="stylesheet.css" id="css" media-type="text/css"/>
            <item href="main.html" id="id5" media-type="application/xhtml+xml"/>
            <item href="toc.ncx" media-type="application/x-dtbncx+xml" id="ncx"/>
          </manifest>
          <spine toc="ncx">
            <itemref idref="titlepage"/>
            <itemref idref="id5"/>
          </spine>
          <guide>
            <reference href="main.html" type="toc" title="Table of Contents"/>
            <reference href="titlepage.xhtml" type="cover" title="Cover"/>
          </guide>
	</xsl:for-each>
    </package>
</xsl:template>

</xsl:stylesheet>

