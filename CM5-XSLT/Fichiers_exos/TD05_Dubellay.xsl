<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs math tei"
    version="3.0">
    
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    
    <xsl:template match="TEI">
        <xsl:apply-templates select="//titleStmt"/>
        <xsl:apply-templates select="//body"/>
    </xsl:template>
     
     <xsl:template match="body">
         <xsl:for-each select="lg[@type='tercet']">
             <xsl:copy-of select="."/>
         </xsl:for-each>
     </xsl:template>
    
    
    
    
</xsl:stylesheet>