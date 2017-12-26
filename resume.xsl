<?xml version = "1.0"?>

<xsl-stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL?Transform">

    <xsl:output method="html" doctype-system="about:legacy-compat" />
    <xsl:template match="/">

    <html xmlns ="http://www.w3.org/1999/xhtml">
        <head>
            <meta charset="utf-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" type="text/css" href="style.css">
            <title>Jessica Prieto | resume</title>
        </head>

        <body>
            <h1>Jessica Prieto</h1>
            <div class="generalInfo">
                <xsl:value-of select="section/name">

            </div>
        </body>
    </html>

    </xsl:template>
</xsl:stylesheet>
