<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" doctype-system="about:legacy-compat" />
    <xsl:template match="/">

    <html xmlns ="http://www.w3.org/1999/xhtml">
        <head>
            <meta charset="utf-8"/>
           <link rel="stylesheet" type="text/css" href="style.css"/>
            <title>Jessica Prieto | resume</title>
        </head>

        <body>
            <div class="main-name">
                <h1><xsl:value-of select="/resume/name"></xsl:value-of></h1>
                <ul>
                    <xsl:for-each select="/resume/contactInfo">
                        <li><xsl:value-of select="."></xsl:value-of></li>
                    </xsl:for-each>
                </ul>
            </div>
            <div class="main">
                <xsl:for-each select="/resume/section">
                    <div class="divider"></div>
                    <div class = "section">
                        <h3><xsl:value-of select="name"></xsl:value-of></h3>
                        
                        <div class="subsection">
                            <xsl:for-each select="subsection">
                                <p class="item bold"><xsl:value-of select="title"></xsl:value-of></p>
                                <p class="item"><xsl:value-of select="description"></xsl:value-of></p>
                                <p class="item date"><xsl:value-of select="date"></xsl:value-of></p>

                                <xsl:for-each select="details">
                                    <p class="detail"><xsl:value-of select="."></xsl:value-of></p>
                                </xsl:for-each>
                                <ul>
                                    <xsl:for-each select="bullet-point">
                                        <li><xsl:value-of select="."></xsl:value-of></li>
                                    </xsl:for-each>
                                </ul>

                            </xsl:for-each> 

                            <ul>
                                <xsl:for-each select="bullet-point">
                                    <li><xsl:value-of select="."></xsl:value-of></li>
                                    <ul>
                                        <xsl:for-each select="sub-bullet-point">
                                            <li><xsl:value-of select="."></xsl:value-of></li>
                                        </xsl:for-each>
                                    </ul>
                                </xsl:for-each>
                            </ul>
                            
                        </div>   
                    </div>
                </xsl:for-each>
            </div>
        </body>
    </html>

    </xsl:template>
</xsl:stylesheet>
