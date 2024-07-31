USE livrariaenrico;
CREATE TABLE IF NOT EXISTS Autores(
    AutorID INT PRIMARY KEY AUTO INCREMENT,
    Nome TEXT NOT NULL,
    Nacionalidade TEXT
);

---------------------------------------------

USE livrariaenrico;

CREATE TABLE IF NOT EXISTS Livros(
    LivroID INT PRIMARY KEY AUTO_INCREMENT,
    Titulo TEXT NOT NULL,
    Genero TEXT,
    AnoPublicacao INT,
    AutorID INT,
    FOREIGN KEY (AutorID) REFERENCES Autores(AutorID)
);

---------------------------------------------

USE livrariaenrico;

CREATE TABLE IF NOT EXISTS Clientes(
    ClienteID INT PRIMARY KEY AUTO_INCREMENT,
    Nome TEXT NOT NULL,
    Endereco TEXT,
    Telefone INT
);

--------------------------------------------

USE livrariaenrico;

CREATE TABLE IF NOT EXISTS Emprestimos(
    EmprestimoID INT PRIMARY KEY AUTO_INCREMENT,
    LivroID INT,
    ClienteID INT,
    DataEmprestimo DATE,
    DataDevolucao DATE,
    FOREIGN KEY (LivroID) REFERENCES Livros(LivroID),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-------------------------------------------

USE livrariaenrico;

INSERT IGNORE INTO Autores(Nacionalidade, Nome)
VALUES ('Brasileiro', 'Machado de Assis'),
('Britânico', 'George Orwell'),
('Britânico','J.K. Rowling');

-------------------------------------------

USE livrariaenrico;

INSERT IGNORE INTO Livros(AnoPublicacao, Genero, Titulo, AutorID)
VALUES (1899, 'Romance', 'Dom Casmurro', 1),
(1949, 'Ficcao', '1984', 2),
(1997, 'Romance', 'Harry Potter', 3);

------------------------------------------

USE livrariaenrico;

INSERT IGNORE INTO Clientes(Endereco, Nome, Telefone)
VALUES ('Rua Deodoro Fonseca', 'Gabriel Medina', 40028922),
('Rua Brasil', 'Neymar Junior', 87622307),
('Rua Getulio Vargas', 'Leticia Bufoni', 42094821);

-----------------------------------------

ALTER TABLE Autores
ADD DataNascimento DATE,
ADD Biografia TEXT;

----------------------------------------

ALTER TABLE Livros
ADD Editora TEXT,
ADD NumeroPaginas INT,
ADD Idioma TEXT;

----------------------------------------

ALTER TABLE Clientes
ADD Email TEXT,
ADD DataNascimento DATE;

---------------------------------------

ALTER TABLE Emprestimos
ADD DataPrevistaDevolucao DATE,
ADD Status TEXT;

---------------------------------------

USE livrariaenrico;
UPDATE Autores
SET DataNascimento = '1839/06/21'
WHERE AutorID = 1;

USE livrariaenrico;
UPDATE Autores
SET Biografia = 'Joaquim Maria Machado de Assis foi um escritor brasileiro, amplamente reconhecido por críticos, estudiosos, escritores e leitores como o maior expoente da literatura brasileira.'
WHERE AutorID = 1;


USE livrariaenrico;
UPDATE Autores
SET DataNascimento = '1839/06/21'
WHERE AutorID = 2;

USE livrariaenrico;
UPDATE Autores
SET Biografia ='Eric Arthur Blair, mais conhecido pelo pseudónimo George Orwell, foi um escritor, jornalista e ensaísta político inglês, nascido na Índia Britânica.'
WHERE AutorID = 2;


USE livrariaenrico;
UPDATE Autores
SET DataNascimento = '1965/07/31'
WHERE AutorID = 3;

USE livrariaenrico;
UPDATE Autores
SET Biografia ='1965/07/31', 'Joanne "Jo" Rowling, mais conhecida como J. K. Rowling, é uma escritora, roteirista e produtora cinematográfica britânica, notória por escrever a série de livros Harry Potter.'
WHERE AutorID = 3;

---------------------------------

USE livrariaenrico;
UPDATE Clientes
SET DataNascimento = '1993/12/22', Email = 'gmedina@email.com'
WHERE ClienteID = 1;


USE livrariaenrico;
UPDATE Clientes
SET DataNascimento = '1992/02/05', Email = 'neymarj@email.com'
WHERE ClienteID = 2;


USE livrariaenrico;
UPDATE Clientes
SET DataNascimento = '1993/04/13', Email = 'lebufoni@email.com'
WHERE ClienteID = 3;

------------------------------

USE livrariaenrico;
UPDATE Livros
SET Editora = 'Record', Idioma = 'Portugues', NumeroPaginas = 208
WHERE LivroID = 1;

USE livrariaenrico;
UPDATE Livros
SET Editora = 'Globo', Idioma = 'Ingles', NumeroPaginas = 416
WHERE LivroID = 2;

USE livrariaenrico;
UPDATE Livros
SET Editora = 'Bertrand', Idioma = 'Ingles', NumeroPaginas = 264
WHERE LivroID = 3;

-----------------------------

USE livrariaenrico;

INSERT IGNORE INTO Emprestimos(ClienteID, DataDevolucao, DataEmprestimo, DataPrevistaDevolucao, LivroID, Status)
VALUES (2, '2024/07/20', '2024/06/14', '2024/07/14', 1, 'Concluido'),
(1, '2024/07/17', '2024/05/28', '2024/06/28', 3, 'Pendente'),
(3, '2024/07/19', '2024/07/02', '2024/08/02', 2, 'Concluido');