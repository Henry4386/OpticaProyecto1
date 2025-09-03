
-- Usuarios
INSERT INTO usuarios (nombre, email, password, rol) VALUES
('Admin', 'admin@optica.com', 'admin123', 'admin'),
('Cliente Prueba', 'cliente@optica.com', 'cliente123', 'cliente');

 
-- Categorías
INSERT INTO categorias (nombre, descripcion) VALUES
('Lentes de sol', 'Protección solar con estilo'),
('Armazones', 'Armazones para lentes graduados'),
('Lentes de contacto', 'Lentes de contacto desechables');

-- Productos
INSERT INTO productos (nombre, descripcion, precio, stock, id_categoria, imagen) VALUES
('Ray-Ban Aviator', 'Lentes de sol clásicos', 120.00, 10, 1, 'rayban.jpg'),
('Oakley Sport', 'Lentes de sol deportivos', 90.00, 15, 1, 'oakley.jpg'),
('Armazón Vogue', 'Armazón elegante para mujer', 75.00, 8, 2, 'vogue.jpg'),
('Armazón Ray-Ban', 'Armazón clásico unisex', 85.00, 12, 2, 'rayban_armazon.jpg'),
('Acuvue Moist', 'Caja de 30 lentes de contacto', 50.00, 20, 3, 'acuvue.jpg');


-- Pedido de prueba (cliente id=2)
INSERT INTO pedidos (id_usuario, total, estado) VALUES
(2, 170.00, 'pendiente');

-- Detalles del pedido
INSERT INTO detalles_pedido (id_pedido, id_producto, cantidad, precio_unitario) VALUES
(1, 1, 1, 120.00), -- 1 Ray-Ban Aviator
(1, 3, 1, 50.00);  -- 1 Armazón Vogue
