<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet 
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes"/>

<xsl:template match="/">

<div class="products-grid-container">

<xsl:for-each select="cafeteria/cafes/cafe">

<div class="product-card-full">

<div class="card-image">
<img>
<xsl:attribute name="src">
../<xsl:value-of select="imagen"/>
</xsl:attribute>
</img>

<xsl:if test="@destacado='true'">
<span class="tag-new">Nuevo</span>
</xsl:if>

</div>

<div class="card-details">

<h2>
<xsl:value-of select="nombre"/>
</h2>

<p class="description">
<xsl:value-of select="descripcion"/>
</p>

<div class="price-action">
<span class="price">
<xsl:value-of select="precio"/> €
</span>
<button class="btn-buy">Añadir</button>
</div>

</div>

</div>

</xsl:for-each>

</div>

</xsl:template>

</xsl:stylesheet>