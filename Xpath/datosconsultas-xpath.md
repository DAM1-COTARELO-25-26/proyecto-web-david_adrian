# Consultas XPath documentadas

## 1. Ruta absoluta
**Expresión XPath:** `/cafeteria/cafes/cafe/nombre`

**Qué selecciona:**
Selecciona todos los nombres de café desde la raíz del documento.

**Resultado esperado:**
`Café Robusta India`, `Café Arábica Kenya`, `Café Colombia Supremo`...

**Contexto de uso:**
Comprobar la estructura completa del XML y listar todos los nombres de productos.

## 2. Ruta relativa
**Expresión XPath:** `cafeteria/cafes/cafe/precio`

**Qué selecciona:**
Selecciona todos los precios de los cafés sin usar ruta absoluta.

**Resultado esperado:**
`14.50`, `12.90`, `10.00`,...

**Contexto de uso:**
Probar la selección básica de elementos numéricos del catálogo.

## 3. Predicado por atributo
**Expresión XPath:** `cafeteria/cafes/cafe[@destacado='true']/nombre`

**Qué selecciona:**
Selecciona los nombres de los cafés marcados como destacados.

**Resultado esperado:**
`Café Robusta India`, `Café Arábica Kenya`, `Mezcla Especial Casa`, `Café México Chiapas`.

**Contexto de uso:**
Mostrar productos destacados en la página principal o en una sección especial.

## 4. Predicado por valor
**Expresión XPath:** `cafeteria/cafes/cafe[precio > 13]/nombre`

**Qué selecciona:**
Selecciona los cafés cuyo precio es superior a 13.

**Resultado esperado:**
`Café Robusta India`, `Mezcla Especial Casa`,...

**Contexto de uso:**
Filtrar productos premium o de mayor precio.

## 5. Función count
**Expresión XPath:** `count(cafeteria/cafes/cafe)`

**Qué selecciona:**
Cuenta el número total de cafés del documento.

**Resultado esperado:**
`10`

**Contexto de uso:**
Mostrar el total de productos disponibles en el catálogo.

## 6. Función sum
**Expresión XPath:** `sum(cafeteria/cafes/cafe/precio)`

**Qué selecciona:**
Suma todos los precios de los cafés.

**Resultado esperado:**
`125`

**Contexto de uso:**
Calcular el valor total del catálogo o hacer estadísticas básicas.

## 7. Función contains
**Expresión XPath:** `cafeteria/cafes/cafe[contains(descripcion,'dulce')]/nombre`

**Qué selecciona:**
Selecciona los cafés cuya descripción contiene la palabra `dulce`.

**Resultado esperado:**
`Café Robusta India`, `Café Perú Orgánico`, `Café México Chiapas`.

**Contexto de uso:**
Buscar productos por palabras clave dentro de la descripción.

## 8. Navegación por ejes
**Expresión XPath:** `cafeteria/cafes/cafe[nombre='Café Colombia Supremo']/following-sibling::cafe[1]/nombre`

**Qué selecciona:**
Selecciona el café situado inmediatamente después de `Café Colombia Supremo` en el XML.

**Resultado esperado:**
`Mezcla Especial Casa`

**Contexto de uso:**
Navegar entre nodos hermanos relacionados.

## 9. Consulta compleja con condiciones
**Expresión XPath:** `cafeteria/cafes/cafe[@destacado='true' and precio > 12]/nombre`

**Qué selecciona:**
Selecciona cafés que están destacados y además tienen precio superior a 12.

**Resultado esperado:**
`Café Robusta India`, `Café Arábica Kenya`, `Mezcla Especial Casa`.

**Contexto de uso:**
Filtrar productos destacados de gama alta.

## 10. Consulta compleja con anidación y negación
**Expresión XPath:** `cafeteria/cafes/cafe[etiquetas/etiqueta='espresso' and not(@molido='true')]/nombre`

**Qué selecciona:**
Selecciona los cafés que tienen la etiqueta `espresso` y que no están molidos.

**Resultado esperado:**
`Café Robusta India`, `Café Colombia Supremo`, `Mezcla Especial Casa`, `Café Guatemala Antigua`, `Café México Chiapas`.

**Contexto de uso:**
Buscar cafés en grano aptos para espresso.
