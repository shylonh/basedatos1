# Documentación Técnica - TechNova DB (S)

## 1. Descripción General
Este proyecto implementa la estructura de base de datos para TechNova, enfocándose en la gestión de inventarios y el control de proveedores.

## 2. Diccionario de Datos

### Esquema: `inventario`
- **Tabla `Categorias`**: Gestión de categorías de productos.
  - `id_categoria`: Clave primaria.
  - `nombre_cat`: Nombre descriptivo de la categoría.
- **Tabla `Productos`**: Almacena la información de los artículos.
  - `id_producto`: Clave primaria.
  - `sku_producto`: Código único de referencia.
  - `cant_stock`: Cantidad disponible.
  - `esta_activo`: Estado de disponibilidad.

### Esquema: `compras`
- **Tabla `Proveedores`**: Información de los aliados comerciales.
  - `id_proveedor`: Clave primaria.
  - `empresa`: Nombre legal del proveedor.

## 3. Control de Versiones
El proyecto utiliza Git para el rastreo de cambios, con versiones detalladas en el `CHANGELOG.md`.
