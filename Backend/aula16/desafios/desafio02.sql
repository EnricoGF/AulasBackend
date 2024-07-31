USE desafio02;
CREATE TABLE IF NOT EXISTS CarrosAlguel(
    CarroID INT PRIMARY KEY AUTO_INCREMENT,
    NomeCarro TEXT NOT NULL,
    PrecoAluguel FLOAT NOT NULL,
    ANO INT NOT NULL,
    MarcaCarro TEXT NOT NULL,
    ModeloCarro TEXT NOT NULL,
    CorCarro TEXT
);

----------------------------------------

USE desafio02;
INSERT IGNORE INTO CarrosAlguel(NomeCarro, ModeloCarro, MarcaCarro, CorCarro, PrecoAluguel, Ano)
VALUES ('Compass','Esportivo','Jeep','Branco',1000.00, 2020),
('Gol','Bolinha','Volkswagen','Vermelho',100.00, 2023),
('Prisma','Esportivo','Chevrolet','Cinza',340.00, 2022),
('Golf','TSI','Volkswagen','Preto',600.00, 2021),
('F40','Corrida','Ferrari','Vermelho',30000.00,2000),
('Uno','Fire','Fiat','Branco',150.00, 2009),
('Murcielago','Esportivo','Lamborghini','Cinza',10000.00, 2020),
('Veyron','Corrida','Bugatti','Preto',40000.00, 2021),
('Nivus','Esportivo','Volkswagen','Branco',1000.00, 2020),
('GT3RS','Corrida','Porsche','Preto',20000.00, 2024);

--------------------------------------

USE desafio02;
CREATE TABLE IF NOT EXISTS Clientes(
    ClienteID INT PRIMARY KEY AUTO_INCREMENT,
    NomeCliente TEXT NOT NULL,
    EmailCliente TEXT NOT NULL,
    TelefoneCliente TEXT NOT NULL,
    EnderecoCliente TEXT NOT NULL,
    PagamentoCliente BOOLEAN DEFAULT FALSE
);

-------------------------------------

USE desafio02;
INSERT IGNORE INTO Clientes(NomeCliente, EmailCliente, EnderecoCliente, PagamentoCliente, TelefoneCliente)
VALUES ('Neymar Junior', 'neymarj@mail.com', 'Rua Brasil', true, '(11)940028922'),
('Gabriel Medina', 'gmedina@mail.com', 'Rua Bras Cubas', false, '(21)928659041'),
('Lionel Messi', 'lmessi@mail.com', 'Rua Argentina', true, '(51)959877202'),
('Travis Scott', 'tscott@mail.com', 'Rua Deodoro', true, '(11)947239827'),
('Xande Pilares', 'xpilares@mail.com', 'Rua Juscelino', true, '(21)986273822'),
('Gabriel Pensador', 'gabrielp@mail.com', 'Rua Floriano', false, '(21)975849201');

-------------------------------------

USE desafio02;
CREATE TABLE IF NOT EXISTS AlugueisCarros(
    DataInicio DATE NOT NULL,
    DataDevol DATE NOT NULL,
    ValorTotal FLOAT NOT NULL,
    CarroID INT,
    ClienteID INT,
    FOREIGN KEY (CarroID) REFERENCES CarrosAlguel(CarroID),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

------------------------------------

ALTER TABLE AlugueisCarros
ADD AluguelID INT PRIMARY KEY AUTO_INCREMENT;

-------------------------------------

USE desafio02;
INSERT IGNORE INTO AlugueisCarros(CarroID, ClienteID, DataInicio, DataDevol, ValorTotal)
VALUES (1, 1, '2023-08-11', '2024-02-11', 10000.00),
(2, 1, '2023-08-11', '2024-02-11', 10000.00),
(5, 1, '2023-08-11', '2024-02-11', 10000.00),
(7, 1, '2023-08-11', '2024-02-11', 10000.00),
(9, 1, '2023-08-11', '2024-02-11', 10000.00),
(10, 1, '2023-08-11', '2024-02-11', 10000.00),

(1, 2, '2022-12-04', '2023-06-04', 15000.00),
(3, 2, '2022-12-04', '2023-06-04', 15000.00),
(4, 2, '2022-12-04', '2023-06-04', 15000.00),
(6, 2, '2022-12-04', '2023-06-04', 15000.00),
(8, 2, '2022-12-04', '2023-06-04', 15000.00),
(8, 2, '2022-12-04', '2023-06-04', 15000.00),

(1, 3, '2024-01-25', '2024-07-25', 8000.00),
(4, 3, '2024-01-25', '2024-07-25', 8000.00),
(5, 3, '2024-01-25', '2024-07-25', 8000.00),
(6, 3, '2024-01-25', '2024-07-25', 8000.00),
(9, 3, '2024-01-25', '2024-07-25', 8000.00),
(10, 3, '2024-01-25', '2024-07-25', 8000.00),

(2, 4, '2021-05-17', '2021-11-17', 7500.00),
(4, 4, '2021-05-17', '2021-11-17', 7500.00),
(7, 4, '2021-05-17', '2021-11-17', 7500.00),
(9, 4, '2021-05-17', '2021-11-17', 7500.00),

(1, 5, '2022-12-04', '2023-06-04', 12000.00),
(2, 5, '2022-12-04', '2023-06-04', 12000.00),
(5, 5, '2022-12-04', '2023-06-04', 12000.00),
(10, 5, '2022-12-04', '2023-06-04', 12000.00),

(2, 6, '2023-01-20', '2023-07-20', 13000.00),
(3, 6, '2023-01-20', '2023-07-20', 13000.00),
(5, 6, '2023-01-20', '2023-07-20', 13000.00),
(8, 6, '2023-01-20', '2023-07-20', 13000.00);

-------------------------------------

SELECT Clientes.NomeCliente, SUM( AlugueisCarros.ValorTotal)
FROM Clientes
INNER JOIN AlugueisCarros ON Clientes.ClienteID = AlugueisCarros.ClienteID
GROUP BY Clientes.NomeCliente;

-------------------------------------

SELECT CarrosAlguel.NomeCarro, COUNT(AlugueisCarros.AluguelID)
FROM CarrosAlguel
INNER JOIN AlugueisCarros ON CarrosAlguel.CarroID = AlugueisCarros.CarroID
GROUP BY AlugueisCarros.CarroID;