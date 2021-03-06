<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/dataroot">
    <PELICULES_DOBLADES>
      <xsl:for-each select="FILM[contains(VERSIO/text(),'Doblada')]">
        <xsl:sort select="IDFILM" order="descending"/>
        <PELICULA>
          <xsl:attribute name="id">
            <xsl:value-of select="IDFILM"/>
          </xsl:attribute>
          <TITOLS>
            <TITOL_DOBLAT>
              <xsl:value-of select="TITOL"/>
            </TITOL_DOBLAT>
            <TITOL_ORIGNIAL>
              <xsl:value-of select="ORIGINAL"/>
            </TITOL_ORIGNIAL>
          </TITOLS>
          <xsl:copy-of select="DIRECCIO"/>
          <ANY_PUBLICACIO>
            <xsl:value-of select="ANY"/>
          </ANY_PUBLICACIO>
          <xsl:copy-of select="SINOPSI"/>
          <IDIOMA_ORIGINAL>
            <xsl:value-of select="IDIOMA_x0020_ORIGINAL"/>
          </IDIOMA_ORIGINAL>
          <xsl:copy-of select="QUALIFICACIO"/>
          <DATA_ESTRENA>
            <xsl:value-of select="ESTRENA"/>
          </DATA_ESTRENA>
        </PELICULA>
      </xsl:for-each>
    </PELICULES_DOBLADES>
  </xsl:template>

</xsl:stylesheet>