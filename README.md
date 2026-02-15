[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/0esC98hF)

# Le Nid de Café ☕ 

## Descripción del Proyecto
**Le Nid de Café** es un sitio web dedicado a la **venta de café de especialidad, infusiones y accesorios relacionados**.  
El objetivo es que los clientes, tanto particulares como empresas, puedan ver nuestros productos de forma clara y comprar fácilmente online.

## Grupo 👥
**Nombre del Grupo:** Grupo 4 : david_adrian
*David: adbr222*
*Adrián: AdriAC6*

## 🗺️ Mapa del Sitio
- **index.html** → Página principal (inicio)
- **css/** → Carpeta que contiene las hojas de estilo (CSS)
- **img/** → Carpeta con las imágenes del sitio
- **Sites/**
  - **login.html** → Página de inicio de sesión
  - **ofertas.html** → Página de ofertas o promociones
  - **productos.html** → Página del catálogo de productos
  - **formulario.html** → Página del Formulario

## Recursos usados 🛠️
- HTML5
- Tipografía: *Playfair Display* y *Open Sans*  
- Paleta de colores cálidos: crema, caramelo y tonos de café  

## Estructura de Datos XML

### Descripción
El proyecto utiliza XML para estructurar el **catálogo de cafés** de la tienda, incluyendo información detallada de cada producto como origen, tueste, precio, stock y notas de sabor.

### Archivos
- **`/datos/cafes.xml`**: Contiene los datos de todos los cafés disponibles en la tienda.
- **`/datos/cafes.dtd`**: Validador DTD que asegura la estructura básica del XML.
- **`/datos/cafes.xsd`**: Schema XSD con restricciones avanzadas de tipos de datos, rangos, patrones y enumeraciones.
- **`/datos/validacion.md`**: Documentación completa del proceso de validación con DTD y XSD.

### Estructura principal
El XML tiene la siguiente estructura jerárquica:

- `<cafeteria>` (raíz)
  - Atributos opcionales: `nombre`, `xmlns:xsi`, `xsi:noNamespaceSchemaLocation`
  - `<cafes>` (contenedor de productos)
    - `<cafe>` (uno o más)
      - Atributos:
        - `id`: Identificador único con patrón CF seguido de 3 números.
        - `origen`: País o región de origen del café.
        - `tueste`: claro, medio u oscuro.
        - `molido`: booleano, indica si está molido.
        - `destacado`: booleano, indica si es un café destacado.
      - Elementos hijos:
        - `<nombre>`: Nombre del café.
        - `<descripcion>`: Descripción detallada.
        - `<precio>`: Precio en moneda local (decimal 5.00 a 50.00).
        - `<peso>`: Peso en gramos (entero positivo 100-1000).
        - `<stock>`: Cantidad disponible (entero 0-500).
        - `<fechaAlta>`: Fecha de alta en formato ISO (YYYY-MM-DD).
        - `<intensidad>`: Nivel de intensidad (entero 1-10).
        - `<notasSabor>`: Notas de sabor descriptivas.
        - `<etiquetas>`: Contenedor de `<etiqueta>` repetibles.
        - `<imagen>`: Ruta de la imagen dentro de `Img/`.

### Validación
La validación del XML se realiza con el DTD y el XSD.  
Ver documentación completa en [`/datos/validacion.md`](datos/validacion.md)