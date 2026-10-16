-- Consulta: Productos con Stock Bajo
-- Objetivo: Identificar artículos que requieren reposición inmediata
SELECT
    id_producto,
    nombre_prod,
    cant_stock,
    stock_min
FROM inventario.Productos
WHERE cant_stock <= stock_min AND esta_activo = 1;
GO

-- Consulta: Análisis de Inversión en Stock
-- Objetivo: Obtener el valor total del inventario basado en el costo
SELECT
    SUM(cant_stock * costo_prod) AS InversionTotal
FROM inventario.Productos;
GO
