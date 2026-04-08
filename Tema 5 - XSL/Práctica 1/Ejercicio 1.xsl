<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Previsión Motril</title>
                <style>
                    table, th, td {border: 1px solid black; border-collapse: collapse;}
                    tr:nth-child(even) {background-color: lightgray;}
                    th {background-color: gray; color: white;}
                    td:first-child {background-color: green; color: white;}
                </style>
            </head>
            <body>
                <h1>Previsión para Motril</h1>
                <h2>Granada</h2>
                <table>
                    <xsl:for-each select="/root/prediccion/dia">
                        <tr>
                            <th colspan="2">fecha <xsl:value-of select="@fecha"/></th>
                        </tr>
                        <xsl:for-each select="estado_cielo">
                            <tr>
                                <td><xsl:value-of select="@periodo"/></td>
                                <td><xsl:value-of select="@descripcion"/></td>
                            </tr>
                        </xsl:for-each>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>