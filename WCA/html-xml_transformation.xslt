<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<document>
  <metadata>
    <meta name="title"><xsl:value-of select="normalize-space(concat(//h1[2]//text(), ' '))" /></meta>
    <meta name="snippet"><xsl:value-of select="normalize-space(concat(//div[@class='rprt abstract']//text(), ' '))" /></meta>
    <meta name="abstract"><xsl:value-of select="normalize-space(concat(//abstracttext//text(), ' '))" /></meta>
    <meta name="objective"><xsl:value-of select="normalize-space(concat(//abstracttext[@label='OBJECTIVE']//text(), ' '))" /></meta>
    <meta name="methods"><xsl:value-of select="normalize-space(concat(//abstracttext[@label='METHODS']//text(), ' '))" /></meta>
    <meta name="results"><xsl:value-of select="normalize-space(concat(//abstracttext[@label='RESULTS']//text(), ' '))" /></meta>
    <meta name="conclusions"><xsl:value-of select="normalize-space(concat(//abstracttext[@label='CONCLUSION']//text(), ' '))" /></meta>
    <meta name="id"><xsl:value-of select="normalize-space(concat(//dd[1]//text(), ';'))" /></meta>
    <meta name="authors"><xsl:value-of select="normalize-space(concat(//div[@class='auths']//text(), ' '))" /></meta>
    <meta name="source"><xsl:value-of select="normalize-space(//div[@class='cit']/a/@title)" /></meta>
    <meta name="pubdate"><xsl:value-of select="normalize-space(//input[@id='absdate']/@value)" /></meta>
    <meta name="keywords"><xsl:value-of select="normalize-space(//div[@class='keywords']/p/text())" /></meta>
  </metadata>
  <content>
    <xsl:copy-of select="//body//text()" />
  </content>
</document>
</xsl:template>
</xsl:stylesheet>
