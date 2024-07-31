USE ti3k5791_enricogabriel;

CREATE TABLE pedidos (
idPedido INT AUTO_INCREMENT PRIMARY KEY,
idCliente INT,
numeroPedido VARCHAR(50),
valorTotal DECIMAL(10, 2),
dataPedido DATE,
FOREIGN KEY (idCliente) REFERENCES clientes(idCliente)
);

-----------------------------------------------------------

USE ti3k5791_enricogabriel;

INSERT INTO pedidos (idCliente, numeroPedido, valorTotal, dataPedido)
VALUES(1, 'PED-001', 150.00, '2024-07-12'),
(2, 'PED-002', 250.00, '2024-07-12'),
(1, 'PED-003', 180.00, '2024-07-13');

-----------------------------------------------------------

