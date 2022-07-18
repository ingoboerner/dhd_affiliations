<?xml version="1.0" encoding="UTF-8"?>
    <xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
        <xsl:template match="/">
            <xsl:element name="affiliations">
                <xsl:variable name="distinct-affiliation-strings" select="distinct-values(.//affiliation/string())"/>
                <xsl:for-each select="$distinct-affiliation-strings">
                    <xsl:element name="affiliation">
                        <xsl:value-of select="."/>
                    </xsl:element>
                    <xsl:text>&#xa;</xsl:text>
                </xsl:for-each>
            </xsl:element>
        </xsl:template>
    </xsl:stylesheet>
    
