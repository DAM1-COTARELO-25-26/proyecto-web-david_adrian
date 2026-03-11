<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes"/>


<xsl:template match="/">

    <section class="products-grid-container">

        <p>Total de cafés disponibles: 
            <xsl:value-of select="$totalCafes"/>
        </p>

    <xsl:apply-templates select="cafeteria/cafes/cafe">
        <xsl:sort select="precio" data-type="number"/>
    </xsl:apply-templates>

    </section>

</xsl:template>


<xsl:template match="cafe">

    <article class="product-card-full">
    <div class="card-image">

    <img alt="Imagen del café" src="../{imagen}" />

    <xsl:if test="@destacado='true'">
        <span class="tag-new">Nuevo</span>
    </xsl:if>

    </div>

    <div class="card-details">

    <h2>
        <xsl:value-of select="position()"/>. 
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

    </article>

</xsl:template>

</xsl:stylesheet>