<?xml version="1.0" encoding="UTF-8"?>
    <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
        <xsl:template match="@*|*|processing-instruction()|comment()">
            <xsl:copy>
                <xsl:apply-templates select="*|@*|text()|processing-instruction()|comment()"/>
            </xsl:copy>
        </xsl:template>
        <xsl:template match="affiliation">
            <xsl:element name="affiliation">
                <xsl:attribute name="xml:id">
                    <xsl:value-of select="generate-id()"/>
                </xsl:attribute>
                <xsl:apply-templates/>
            </xsl:element>
        </xsl:template>
    </xsl:stylesheet>
    
