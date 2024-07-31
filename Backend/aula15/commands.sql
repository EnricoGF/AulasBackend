--SELECIONAR A DB QUE ESTA SENDO USADO
USE ti3k5791_enricogabriel;

--CRIANDO TABELA
CREATE TABLE IF NOT EXISTS clientes(
    idClientes INT PRIMARY KEY,
    nome VARCHAR (50),
    telefone VARCHAR (50)
);

--ALTERANDO TABELA DEPOIS DE CRIADA
ALTER TABLE clientes
ADD email VARCHAR(100);

--MODIFICA TIPO DA TABELA
ALTER TABLE clientes
MODIFY email TEXT;

--MODIFICAR NOME E TIPO DE UMA COLUNA
ALTER TABLE clientes
CHANGE COLUMN email emailRename VARCHAR(200);

--REMOVER UMA COLUNA
ALTER TABLE clientes
DROP COLUMN telefone;

--ALTERAR O NOME DE UMA TABELA
ALTER TABLE clientes
RENAME TO clientesRename;

--DELETAR UMA TABELA, se não tiver foreign key
DROP TABLE clientes;

--INSERIR DADOS EM UMA TABELA, IGNORA OS ITENS QUE JA EXISTEM NA TABELA
INSERT IGNORE INTO clientes (idClientes, nome, email)
VALUES (1, 'João', 'joao@email.com'),
(2, 'Maria', 'maria@email.com');

--ATUALIZAR DADOS EM UMA TABELA
UPDATE clientes 
SET email = 'novoemail@email.com'
WHERE idClientes = 1; --condição

--DELETAR DADOS DE UMA TABELA
DELETE FROM clientes
WHERE idClientes = 1; --condição

--CONSULTA DADOS
SELECT idClientes, nome, email
FROM clientes;

--CONSULTA TODA TABELA
SELECT *
FROM clientes;

--ALIAS, MUDA O NOME DA COLUNA NO PRINT
SELECT email 
AS Emails 
FROM clientes;

--CONSULTA COM CONDIÇÃO
SELECT email
FROM clientes
WHERE idClientes = 2;

--CONSULTA COM DADOS ORDENADOS
SELECT *
FROM clientes
ORDER BY nome ASC -- ou DESC

--CONSULTA COM CONDIÇÃO E ORDENAÇÃO
SELECT *
FROM clientes
WHERE idClientes > 2
ORDER BY nome ASC;

--CONSULTA AGRUPANDO
SELECT nome, email
FROM clientes
GROUP BY nome;

--CONSULTA COM LIMITE DE RESULTADOS
SELECT *
FROM clientes
LIMIT 2;

--CONSULTA DADOS MOSTRANDO APENAS 1 VEZ CASO TENHA MAIS DE 1
SELECT DISTINCT nome
FROM clientes;

--CONSULTA COM FUNÇÃO SUM (soma)
SELECT SUM(valorTotal) FROM pedidos;

--CONSULTA COM FUNÇÃO AVG (average)
SELECT AVG(valorTotal) FROM pedidos;

--CONSULTA COM FUNÇÃO MAX (maximo) ou MIN (minimo)
SELECT MAX(valorTotal) FROM pedidos;

--CONSULTA COM FUNÇÃO COUNT (conta)
SELECT COUNT(*)
FROM pedidos

--CONSULTA COM JUNÇÃO DE TABELAS
SELECT clientes.idCliente, clientes.nome, clientes.email, pedidos.numeroPedido
FROM clientes
INNER JOIN pedidos ON clientes.idCliente = pedidos.idCliente;

--CONSULTA TODOS CLIENTES, inclusive os que não tem correspondencia
SELECT clientes.idCliente, clientes.nome, clientes.email, pedidos.numeroPedido
FROM clientes
LEFT JOIN pedidos ON clientes.idCliente = pedidos.idCliente;

--CONSULTA COM JUNÇÃO E CONDICIONAL
SELECT clientes.idCliente, clientes.nome, clientes.email, pedidos.numeroPedido
FROM clientes
INNER JOIN pedidos ON clientes.idCliente = pedidos.idCliente
WHERE pedidos.valorTotal > 200;

--CONSULTA VALORES DAS COLUNAS
SELECT nome, departamento
FROM empregados
WHERE departamento IN ('Vendas', 'Marketing', 'TI');

--CONSULTA VALORES DENTRO DE UM INTERVALO
SELECT nome, salario
FROM empregados
WHERE salario BETWEEN 3000 AND 4000;

--CONSULTA UM PADRÃO ESPECÍFICO EM UMA COLUNA
SELECT nome 
FROM empregados
WHERE nome LIKE 'A%'; --% indica com que letra começa

-------------------------------------------------------------------
SELECT clientes.nome, COUNT(pedidos.idPedido) AS total_pedidos
FROM clientes
LEFT JOIN pedidos ON clientes.idCliente = pedidos.idCliente
GROUP BY clientes.nome;
