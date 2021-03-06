<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet [
    <!ENTITY % entities SYSTEM "entities.dtd">
    %entities;
]>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    <xsl:param name="nav-type">&nav-list-class;</xsl:param>
    
    <!-- add nav class to root ul element -->
    <xsl:template match="/">
        <div class="well">
            <xsl:apply-templates select="ul[1]" mode="topLevel">
                <xsl:with-param name="class">&sidebar-nav; <xsl:value-of select="$nav-type"/></xsl:with-param>
            </xsl:apply-templates>
        </div>  
    </xsl:template>
    
    <xsl:include href="navlist.xsl"/>  
    
</xsl:stylesheet>