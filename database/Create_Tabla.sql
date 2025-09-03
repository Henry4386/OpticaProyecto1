-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS Optica;
USE Optica;

-- 1. Tabla Usuarios
CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL, -- Guardar hash
    rol ENUM('admin', 'cliente') DEFAULT 'cliente',
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 2. Tabla Categorías
CREATE TABLE categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(255)
);

-- 3. Tabla Productos
CREATE TABLE productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255),
    precio DECIMAL(10,2) NOT NULL,
    stock INT DEFAULT 0,
    id_categoria INT,
    imagen VARCHAR(255),
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

-- 4. Tabla Pedidos
CREATE TABLE pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10,2) NOT NULL,
    estado ENUM('pendiente','pagado','cancelado') DEFAULT 'pendiente',
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- 5. Tabla Detalles del pedido
CREATE TABLE detalles_pedido (
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
