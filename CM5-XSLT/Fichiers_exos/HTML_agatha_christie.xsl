<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs math tei"
    version="3.0">
    
    <xsl:output method="html" indent="yes" encoding="UTF-8"/>
    
    <xsl:template match="TEI">
        <html>
            <head>
                <title>Exercice de structuration HTML</title>
            </head>
            <body>
                <h1>
                    <xsl:apply-templates select="//titleStmt"/>
                </h1>
                
                <div style="margin-top: 30px; border-top: 1px solid black;">
                    <h3>Index des personnages :</h3>
                    <ul>
                       
                        <xsl:for-each select="(//listPerson/person)">
                            <li>
                                <xsl:value-of select="."/>
                            </li>
                        </xsl:for-each>
                    </ul>
                </div>
                
                <div style="margin-top: 30px; border-top: 1px solid black;">
                    <h3>Index des lieux :</h3>
                    <ul>
                        <!-- On boucle sur tous les persName du document -->
                        <xsl:for-each select="distinct-values(//placeName)">
                            <li>
                                <xsl:value-of select="."/>
                            </li>
                        </xsl:for-each>
                    </ul>
                </div>
                
                <h2>
                    <xsl:apply-templates select="//text/body/div/head"/>
                </h2>
                
                <h3><xsl:apply-templates select="//text/body/div/div/head"/></h3>
                
                <div>
                    <xsl:apply-templates select="//text/body/div/div/p"/>
                </div>
                
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="p">
        <p>
            <xsl:apply-templates/>
            
        </p>
        
        
    </xsl:template>
    
    <xsl:template match="p/said">
            <i><xsl:value-of select="."/></i>
    </xsl:template>
    
    <xsl:template match="persName">
        <xsl:if test="@ref='#poirot'">
            <font color="#ED42ED">
                <xsl:value-of select="."/>
            </font>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="placeName">
        <xsl:choose>
            <xsl:when test="@ref='#alep'">
                <font color="yellow">
                    <xsl:value-of select="."/>
                </font>
            </xsl:when>
            <xsl:otherwise>
                <font color="#1D9617">
                    <xsl:value-of select="."/>
                </font>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    
    
    
    
</xsl:stylesheet>