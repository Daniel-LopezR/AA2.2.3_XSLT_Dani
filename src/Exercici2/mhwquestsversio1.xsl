<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/mhw/quests">
        <mhw>
            <misiones>
                <asignado>
                    <xsl:for-each select="assigned|/quest">
                        <mision>
                            <xsl:attribute name="rango">
                                <xsl:value-of select="@rank"/>
                            </xsl:attribute>
                            <xsl:attribute name="tipo">
                                <xsl:value-of select="@type"/>
                            </xsl:attribute>
                            <nombre>
                                <xsl:value-of select="name"/>
                            </nombre>
                            <estrellas>
                                <xsl:value-of select="stars"/>
                            </estrellas>
                            <objectivos>
                                <xsl:for-each select="objectives/objective">
                                    <objectivo>
                                        <xsl:value-of select="."/>
                                    </objectivo>
                                </xsl:for-each>
                            </objectivos>
                            <localizacion>
                                <xsl:value-of select="location"/>
                            </localizacion>
                            <recompensa>
                                <xsl:attribute name="unidad">
                                    <xsl:value-of select="reward/@unit"/>
                                </xsl:attribute>
                                <xsl:value-of select="reward"/>
                            </recompensa>
                            <tiempo_limite>
                                <xsl:attribute name="unidad">
                                    <xsl:value-of select="time_limit/@unit"/>
                                </xsl:attribute>
                                <xsl:value-of select="time_limit"/>
                            </tiempo_limite>
                            <condicion>
                                <xsl:attribute name="unidad">
                                    <xsl:value-of select="condition/@unit"/>
                                </xsl:attribute>
                                <xsl:value-of select="condition"/>
                            </condicion>
                            <condiciones_fracaso>
                                <xsl:for-each select="failure_conditions/failure_condition">
                                    <condicion_fracaso>
                                        <xsl:if test="position() = last() and contains(../../@type, 'Repel')">
                                            <xsl:attribute name="guiar">
                                                <xsl:value-of select="@guide"/>
                                            </xsl:attribute>
                                        </xsl:if>
                                        <xsl:if test="position() = last() and contains(../../@type, 'Capture')">
                                            <xsl:attribute name="muerto">
                                                <xsl:value-of select="@dead"/>
                                            </xsl:attribute>
                                        </xsl:if>
                                        <xsl:if test="contains(text(), '0') or contains(text(), '1') or contains(text(), '2') or contains(text(), '3')">
                                            <xsl:attribute name="unidad">
                                                <xsl:value-of select="@unit"/>
                                            </xsl:attribute>
                                        </xsl:if>
                                        <xsl:value-of select="."/>
                                    </condicion_fracaso>
                                </xsl:for-each>
                            </condiciones_fracaso>
                            <monstruos>
                                <xsl:for-each select="monsters/monster">
                                    <monstruo>
                                        <xsl:value-of select="."/>
                                    </monstruo>
                                </xsl:for-each>
                            </monstruos>
                        </mision>
                    </xsl:for-each>
                </asignado>
                <opcionales>
                    <xsl:for-each select="optional/quest">
                        <mision>
                            <xsl:attribute name="rango">
                                <xsl:value-of select="@rank"/>
                            </xsl:attribute>
                            <xsl:attribute name="tipo">
                                <xsl:value-of select="@type"/>
                            </xsl:attribute>
                            <nombre>
                                <xsl:value-of select="name"/>
                            </nombre>
                            <estrellas>
                                <xsl:value-of select="stars"/>
                            </estrellas>
                            <objectivos>
                                <xsl:for-each select="objectives/objective">
                                    <objectivo>
                                        <xsl:value-of select="."/>
                                    </objectivo>
                                </xsl:for-each>
                            </objectivos>
                            <localizacion>
                                <xsl:value-of select="location"/>
                            </localizacion>
                            <recompensa>
                                <xsl:attribute name="unidad">
                                    <xsl:value-of select="reward/@unit"/>
                                </xsl:attribute>
                                <xsl:value-of select="reward"/>
                            </recompensa>
                            <tiempo_limite>
                                <xsl:attribute name="unidad">
                                    <xsl:value-of select="time_limit/@unit"/>
                                </xsl:attribute>
                                <xsl:value-of select="time_limit"/>
                            </tiempo_limite>
                            <condicion>
                                <xsl:attribute name="unidad">
                                    <xsl:value-of select="condition/@unit"/>
                                </xsl:attribute>
                                <xsl:value-of select="condition"/>
                            </condicion>
                            <condiciones_fracaso>
                                <xsl:for-each select="failure_conditions/failure_condition">
                                    <condicion_fracaso>
                                        <xsl:if test="position() = last() and contains(../../@type, 'Repel')">
                                            <xsl:attribute name="guiar">
                                                <xsl:value-of select="@guide"/>
                                            </xsl:attribute>
                                        </xsl:if>
                                        <xsl:if test="position() = last() and contains(../../@type, 'Capture')">
                                            <xsl:attribute name="muerto">
                                                <xsl:value-of select="@dead"/>
                                            </xsl:attribute>
                                        </xsl:if>
                                        <xsl:if test="contains(text(), '0') or contains(text(), '1') or contains(text(), '2') or contains(text(), '3')">
                                            <xsl:attribute name="unidad">
                                                <xsl:value-of select="@unit"/>
                                            </xsl:attribute>
                                        </xsl:if>
                                        <xsl:value-of select="."/>
                                    </condicion_fracaso>
                                </xsl:for-each>
                            </condiciones_fracaso>
                            <monstruos>
                                <xsl:for-each select="monsters/monster">
                                    <monstruo>
                                        <xsl:value-of select="."/>
                                    </monstruo>
                                </xsl:for-each>
                            </monstruos>
                        </mision>
                    </xsl:for-each>
                </opcionales>
                <eventos>
                    <xsl:for-each select="events/quest">
                        <mision>
                            <xsl:attribute name="rango">
                                <xsl:value-of select="@rank"/>
                            </xsl:attribute>
                            <xsl:attribute name="tipo">
                                <xsl:value-of select="@type"/>
                            </xsl:attribute>
                            <nombre>
                                <xsl:value-of select="name"/>
                            </nombre>
                            <estrellas>
                                <xsl:value-of select="stars"/>
                            </estrellas>
                            <objectivos>
                                <xsl:for-each select="objectives/objective">
                                    <objectivo>
                                        <xsl:value-of select="."/>
                                    </objectivo>
                                </xsl:for-each>
                            </objectivos>
                            <localizacion>
                                <xsl:value-of select="location"/>
                            </localizacion>
                            <recompensa>
                                <xsl:attribute name="unidad">
                                    <xsl:value-of select="reward/@unit"/>
                                </xsl:attribute>
                                <xsl:value-of select="reward"/>
                            </recompensa>
                            <tiempo_limite>
                                <xsl:attribute name="unidad">
                                    <xsl:value-of select="time_limit/@unit"/>
                                </xsl:attribute>
                                <xsl:value-of select="time_limit"/>
                            </tiempo_limite>
                            <condicion>
                                <xsl:attribute name="unidad">
                                    <xsl:value-of select="condition/@unit"/>
                                </xsl:attribute>
                                <xsl:value-of select="condition"/>
                            </condicion>
                            <condiciones_fracaso>
                                <xsl:for-each select="failure_conditions/failure_condition">
                                    <condicion_fracaso>
                                        <xsl:if test="position() = last() and contains(../../@type, 'Repel')">
                                            <xsl:attribute name="guiar">
                                                <xsl:value-of select="@guide"/>
                                            </xsl:attribute>
                                        </xsl:if>
                                        <xsl:if test="position() = last() and contains(../../@type, 'Capture')">
                                            <xsl:attribute name="muerto">
                                                <xsl:value-of select="@dead"/>
                                            </xsl:attribute>
                                        </xsl:if>
                                        <xsl:if test="contains(text(), '0') or contains(text(), '1') or contains(text(), '2') or contains(text(), '3')">
                                            <xsl:attribute name="unidad">
                                                <xsl:value-of select="@unit"/>
                                            </xsl:attribute>
                                        </xsl:if>
                                        <xsl:value-of select="."/>
                                    </condicion_fracaso>
                                </xsl:for-each>
                            </condiciones_fracaso>
                            <monstruos>
                                <xsl:for-each select="monsters/monster">
                                    <monstruo>
                                        <xsl:value-of select="."/>
                                    </monstruo>
                                </xsl:for-each>
                            </monstruos>
                        </mision>
                    </xsl:for-each>
                </eventos>
                <especiales>
                    <xsl:for-each select="special/quest">
                        <mision>
                            <xsl:attribute name="rango">
                                <xsl:value-of select="@rank"/>
                            </xsl:attribute>
                            <xsl:attribute name="tipo">
                                <xsl:value-of select="@type"/>
                            </xsl:attribute>
                            <nombre>
                                <xsl:value-of select="name"/>
                            </nombre>
                            <estrellas>
                                <xsl:value-of select="stars"/>
                            </estrellas>
                            <objectivos>
                                <xsl:for-each select="objectives/objective">
                                    <objectivo>
                                        <xsl:value-of select="."/>
                                    </objectivo>
                                </xsl:for-each>
                            </objectivos>
                            <localizacion>
                                <xsl:value-of select="location"/>
                            </localizacion>
                            <recompensa>
                                <xsl:attribute name="unidad">
                                    <xsl:value-of select="reward/@unit"/>
                                </xsl:attribute>
                                <xsl:value-of select="reward"/>
                            </recompensa>
                            <tiempo_limite>
                                <xsl:attribute name="unidad">
                                    <xsl:value-of select="time_limit/@unit"/>
                                </xsl:attribute>
                                <xsl:value-of select="time_limit"/>
                            </tiempo_limite>
                            <condicion>
                                <xsl:attribute name="unidad">
                                    <xsl:value-of select="condition/@unit"/>
                                </xsl:attribute>
                                <xsl:value-of select="condition"/>
                            </condicion>
                            <condiciones_fracaso>
                                <xsl:for-each select="failure_conditions/failure_condition">
                                    <condicion_fracaso>
                                        <xsl:if test="position() = last() and contains(../../@type, 'Repel')">
                                            <xsl:attribute name="guiar">
                                                <xsl:value-of select="@guide"/>
                                            </xsl:attribute>
                                        </xsl:if>
                                        <xsl:if test="position() = last() and contains(../../@type, 'Capture')">
                                            <xsl:attribute name="muerto">
                                                <xsl:value-of select="@dead"/>
                                            </xsl:attribute>
                                        </xsl:if>
                                        <xsl:if test="contains(text(), '0') or contains(text(), '1') or contains(text(), '2') or contains(text(), '3')">
                                            <xsl:attribute name="unidad">
                                                <xsl:value-of select="@unit"/>
                                            </xsl:attribute>
                                        </xsl:if>
                                        <xsl:value-of select="."/>
                                    </condicion_fracaso>
                                </xsl:for-each>
                            </condiciones_fracaso>
                            <monstruos>
                                <xsl:for-each select="monsters/monster">
                                    <monstruo>
                                        <xsl:value-of select="."/>
                                    </monstruo>
                                </xsl:for-each>
                            </monstruos>
                        </mision>
                    </xsl:for-each>
                </especiales>
          </misiones>
      </mhw>
    </xsl:template>

</xsl:stylesheet>