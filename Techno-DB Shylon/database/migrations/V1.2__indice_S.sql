USE TechNova_Bodega;
GO

CREATE INDEX IX_Productos_Activo_S
ON inventario.Productos(esta_activo);
GO
