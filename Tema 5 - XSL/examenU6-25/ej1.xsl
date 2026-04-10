<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Alfred Hitchcock</title>
                <style>
                    table, th, td {border: 1px solid black;}
                </style>
            </head>
            <body>
                <h1>Alfred Hitchcock</h1>
                <h2>Estudios</h2>
                <ul>
                    <xsl:for-each select="/hitchcock/estudios/estudio">
                        <li><xsl:value-of select="nombre"/> (<xsl:value-of select="fecha"/>) <a href="{nombre/@link}"><xsl:value-of select="nombre/@link"/></a></li>
                    </xsl:for-each>
                </ul>
                <h2>Actores</h2>
                    <ul>
                        <xsl:for-each select="/hitchcock/actores/actor">
                            <li><xsl:value-of select="@nombre"/> (<xsl:value-of select="@nacimiento"/>)</li>
                        </xsl:for-each>
                    </ul>
                <h2>Películas</h2>
                <table>
                    <tr>
                        <th>Título</th>
                        <th>Estreno</th>
                        <th>Estudio</th>
                        <th>Nomincaciones</th>
                        <th>premios</th>
                        <th>Actores</th>
                    </tr>
                    <xsl:for-each select="/hitchcock/peliculas/pelicula">
                        <tr>
                            <td>
                                <xsl:value-of select="titulo[@lang = 'es']"/>            
                                (<xsl:value-of select="titulo[@lang = 'en']"/>)
                            </td>
                            <td><xsl:value-of select="fecha"/></td>
                            <td><xsl:value-of select="estudios/@nombre"/></td>
                            <td><xsl:value-of select="oscar/@nominaciones"/></td>
                            <td><xsl:value-of select="oscar/@premios"/></td>
                            <td><xsl:value-of select="actores"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
