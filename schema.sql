CREATE DATABASE crochet_db
USE crochet_db
  
-- 1. Tabla de materiales
CREATE TABLE materiales (
    id_material INT IDENTITY(1,1) PRIMARY KEY,
    codigo_color VARCHAR(50) NOT NULL UNIQUE,
    nombre_material VARCHAR(100) NOT NULL,
    costo_unitario DECIMAL(10,2) NOT NULL
);

-- 2. Tabla de productos
CREATE TABLE productos (
    id_producto INT IDENTITY(1,1) PRIMARY KEY,
    nombre_producto VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    tiempo_elaboracion_minutos INT NOT NULL,
    precio_venta_final DECIMAL(10,2) NOT NULL
);

-- 3. Tabla de inventario en tienda
CREATE TABLE inventario_tienda (
    id_item_tienda INT IDENTITY(1,1) PRIMARY KEY,
    id_producto INT NOT NULL,
    fecha_envio DATE NOT NULL,
    estado VARCHAR(30) NOT NULL, -- 'En exhibición', 'Vendido', 'Devuelto'
    CONSTRAINT fk_producto_inventario FOREIGN KEY (id_producto) 
        REFERENCES productos(id_producto) 
        ON DELETE CASCADE
);

-- 4. Tabla de ventas 
CREATE TABLE ventas (
    id_venta INT IDENTITY(1,1) PRIMARY KEY,
    id_producto INT NOT NULL,
    fecha_hora_venta DATETIME NOT NULL,
    precio_cobrado DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_producto_venta FOREIGN KEY (id_producto) 
        REFERENCES productos(id_producto) 
        ON DELETE NO ACTION
);

-- 5. Tabla detalle_producto
CREATE TABLE detalle_producto (
    id_detalle_prod INT IDENTITY(1,1) PRIMARY KEY,
    id_producto INT NOT NULL,
    id_material INT NOT NULL,
    cantidad_proporcional DECIMAL(5,2) NOT NULL,
    CONSTRAINT fk_producto_receta FOREIGN KEY (id_producto) 
        REFERENCES productos(id_producto) 
        ON DELETE CASCADE,
    CONSTRAINT fk_material_receta FOREIGN KEY (id_material) 
        REFERENCES materiales(id_material) 
        ON DELETE CASCADE
); 
