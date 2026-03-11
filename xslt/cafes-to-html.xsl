<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="UTF-8" indent="yes"/>



<xsl:variable name="totalCafes" select="count(//cafe)"/>

<xsl:template match="/">

<html lang="es">

<head>

<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>

<title>Productos - Le Nid de Café</title>

<link rel="stylesheet" href="../CSS/index.css"/>
<link rel="stylesheet" href="../CSS/header.css"/>
<link rel="stylesheet" href="../CSS/footer.css"/>
<link rel="stylesheet" href="../CSS/producto.css"/>

</head>

<body>

<header class="main-header">
<nav>

<a href="../index.html" class="logo">
<img src="../Img/logo_final.png" alt="Logo Le Nid de Café"/>
<span>Le Nid de Café</span>
</a>

<ul class="menu">
<li><a href="../index.html">Inicio</a></li>
<li><a href="../datos/cafes.xml" class="active">Productos</a></li>
<li><a href="../Sites/accesorios.html">Accesorios</a></li>
<li><a href="../Sites/ofertas.html">Ofertas</a></li>
<li><a href="../Sites/formulario.html">Contacto</a></li>
<li><a href="../Sites/login.html" class="btn-login">Iniciar sesión</a></li>
</ul>

</nav>
</header>

<section class="page-title">

<h1>Nuestros cafés</h1>

<p>
Total de cafés disponibles:
<xsl:value-of select="$totalCafes"/>
</p>

</section>

<section class="products-grid-container">

<xsl:apply-templates select="//cafe">
<xsl:sort select="precio" data-type="number"/>
</xsl:apply-templates>

</section>

<footer>

<div class="footer-container">

<div class="footer-secciones">
<h3>Secciones</h3>
<ul>
<li><a href="../index.html">Inicio</a></li>
<li><a href="../datos/cafes.xml">Productos</a></li>
<li><a href="../Sites/accesorios.html">Accesorios</a></li>
<li><a href="../Sites/ofertas.html">Ofertas</a></li>
</ul>
</div>

<div class="footer-contacto">
<h3>Contacto</h3>
<ul>
<li>Telefono contacto: 986-203-475</li>
<li>
Correo contacto:
<a href="mailto:leniddecafe@gmail.com">leniddecafe@gmail.com</a>
</li>
<li><a href="../Sites/formulario.html">Contacto</a></li>
</ul>
</div>

<div class="footer-secciones">
<h3>Legal</h3>
<ul>
<li>Términos y Condiciones</li>
<li>Política de Privacidad</li>
</ul>
</div>

</div>

<p>Le Nid de Café • © 2025 • Todos los derechos reservados</p>

</footer>

</body>

</html>

</xsl:template>



<xsl:template match="cafe">

<article class="product-card-full">

<div class="card-image">

<img alt="Imagen del café">

<xsl:attribute name="src">
<xsl:text>../</xsl:text>
<xsl:value-of select="imagen"/>
</xsl:attribute>

</img>

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


