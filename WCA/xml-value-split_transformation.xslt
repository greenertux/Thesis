<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<document>
  <metadata>
    <xsl:copy-of select="//meta[@name='title']" />
    <xsl:copy-of select="//meta[@name='snippet']" />
    <xsl:copy-of select="//meta[@name='abstract']" />
    <xsl:copy-of select="//meta[@name='objective']" />
    <xsl:copy-of select="//meta[@name='methods']" />
    <xsl:copy-of select="//meta[@name='results']" />
    <xsl:copy-of select="//meta[@name='conclusions']" />
    <xsl:copy-of select="//meta[@name='id']" />
    <xsl:copy-of select="//meta[@name='authors']" />
    <xsl:copy-of select="//meta[@name='source']" />
    <xsl:copy-of select="//meta[@name='pubdate']" />
    <xsl:for-each select="tokenize(//meta[@name='keywords'],';')">
      <meta name="keywords"><xsl:sequence select="normalize-space(.)"/></meta>
    </xsl:for-each>
  </metadata>
  <xsl:copy-of select="//content" />
</document>
</xsl:template>
</xsl:stylesheet>
