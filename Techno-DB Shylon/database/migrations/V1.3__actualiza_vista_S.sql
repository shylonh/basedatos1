USE TechNova_Bodega;
GO

ALTER VIEW inventario.vw_CatalogoProductos
AS
SELECT
    p.id_producto,
    p.sku_producto,
    p.nombre_prod,
    c.nombre_cat,
    pr.empresa AS Proveedor,
    p.precio_venta,
    p.costo_prod,
    p.cant_stock,
    p.stock_min,
    p.stock_max,
    p.esta_activo,
    p.fecha_actualizacion
FROM inventario.Productos AS p
INNER JOIN inventario.Categorias AS c
    ON p.id_categoria = c.id_categoria
LEFT JOIN compras.Proveedores AS pr
    ON p.id_proveedor = pr.id_proveedor;
GO
