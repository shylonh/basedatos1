-- V1.0__TechNova_inicial_S.sql
-- Versión inicial de TechNova_Bodega para Shylon

CREATE DATABASE TechNova_Bodega;
GO

USE TechNova_Bodega;
GO

CREATE SCHEMA inventario;
GO

CREATE SCHEMA compras;
GO

CREATE TABLE inventario.Categorias (
    id_categoria INT PRIMARY KEY IDENTITY(1,1),
    nombre_cat NVARCHAR(100) NOT NULL,
    descripcion_cat NVARCHAR(255)
);
GO

CREATE TABLE compras.Proveedores (
    id_proveedor INT PRIMARY KEY IDENTITY(1,1),
    empresa NVARCHAR(200) NOT NULL,
    contacto_nombre NVARCHAR(100),
    tel_proveedor NVARCHAR(20),
    correo_proveedor NVARCHAR(100)
);
GO

CREATE TABLE inventario.Productos (
    id_producto INT PRIMARY KEY IDENTITY(1,1),
    sku_producto NVARCHAR(50) UNIQUE NOT NULL,
    nombre_prod NVARCHAR(200) NOT NULL,
    id_categoria INT FOREIGN KEY REFERENCES inventario.Categorias(id_categoria),
    id_proveedor INT FOREIGN KEY REFERENCES compras.Proveedores(id_proveedor),
    precio_venta DECIMAL(18,2) NOT NULL,
    costo_prod DECIMAL(18,2),
    cant_stock INT DEFAULT 0,
    stock_min INT DEFAULT 10,
    stock_max INT DEFAULT 100,
    esta_activo BIT DEFAULT 1
);
GO

CREATE VIEW inventario.vw_CatalogoProductos
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
    p.esta_activo
FROM inventario.Productos AS p
INNER JOIN inventario.Categorias AS c
    ON p.id_categoria = c.id_categoria
LEFT JOIN compras.Proveedores AS pr
    ON p.id_proveedor = pr.id_proveedor;
GO
