USE desafioenrico;
CREATE TABLE IF NOT EXISTS Caracteristicas(
    ProdutoID INT PRIMARY KEY AUTO_INCREMENT,
    Nome TEXT NOT NULL,
    Preco FLOAT NOT NULL,
    Garantia DATE NOT NULL,
    Marca TEXT NOT NULL,
    Cor TEXT,
    Modelo TEXT
);
-------------------------------------------

USE desafioenrico;
INSERT IGNORE INTO Caracteristicas(Nome, Modelo, Marca, Cor, Preco, Garantia)
VALUES ('Compass','Esportivo','Jeep','Branco',1000.00,'2023/09/24'),
('Gol','Bolinha','Volkswagen','Vermelho',1200.99,'2024/11/14'),
('Prisma','Esportivo','Chevrolet','Cinza',1400.50,'2022/07/15'),
('Golf','TSI','Volkswagen','Preto',2000.00,'2025/08/01'),
('F40','Corrida','Ferrari','Vermelho',30000.00,'2003/06/09'),
('Uno','Fire','Fiat','Branco',1000.00,'2009/09/05'),
('Murcielago','Esportivo','Lamborghini','Cinza',10000.00,'2027/09/02'),
('Veyron','Corrida','Bugatti','Preto',40000.00,'2021/09/10'),
('Nivus','Esportivo','Volkswagen','Branco',1000.00,'2027/08/19'),
('GT3RS','Corrida','Porsche','Preto',5000,'2024/02/28');

-----------------------------------------

USE desafioenrico;
DELETE FROM Caracteristicas
WHERE ProdutoID = 4;

USE desafioenrico;
DELETE FROM Caracteristicas
WHERE ProdutoID = 7;

----------------------------------------

USE desafioenrico;
ALTER TABLE Caracteristicas
ADD SemEstoque BOOLEAN DEFAULT TRUE;

---------------------------------------

USE desafioenrico;
UPDATE Caracteristicas 
SET SemEstoque = FALSE
WHERE ProdutoID = 2;

---------------------------------------

USE desafioenrico;
SELECT *
FROM Caracteristicas
ORDER BY ProdutoID ASC
LIMIT 5;