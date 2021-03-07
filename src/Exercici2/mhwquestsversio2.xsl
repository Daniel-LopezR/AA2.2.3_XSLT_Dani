<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/mhw/quests">
    <mhw>
      <master_rank_quests>
        <xsl:for-each select="(assigned|optional|events|special)/quest[contains(@rank,'Master')]">
          <xsl:sort select="name" order="descending"/>
          <quest>
            <xsl:attribute name="name">
              <xsl:value-of select="name"/>
            </xsl:attribute>
            <xsl:attribute name="stars">
              <xsl:value-of select="stars"/>
            </xsl:attribute>
            <type>
              <xsl:value-of select="@type"/>
            </type>
            <location>
              <xsl:value-of select="location"/>
            </location>
            <xsl:copy-of select="reward"/>
            <xsl:copy-of select="condition"/>
            <xsl:copy-of select="monsters"/>
          </quest>
        </xsl:for-each>
      </master_rank_quests>
    </mhw>
  </xsl:template>
</xsl:stylesheet>