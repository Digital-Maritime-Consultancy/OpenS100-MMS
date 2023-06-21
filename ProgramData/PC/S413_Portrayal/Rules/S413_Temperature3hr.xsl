<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output indent="yes" encoding="UTF-8" method="xml"/>
  <xsl:template match="Temperature[@primitive='Point']" priority="1">
    <xsl:call-template name="Temperature3hrFillcolor">
      <xsl:with-param name="viewingGroup">13030</xsl:with-param>
      <xsl:with-param name="displayPlane">UNDERRADAR</xsl:with-param>
      <xsl:with-param name="drawingPriority">24</xsl:with-param>
    </xsl:call-template>
  </xsl:template>

</xsl:transform>