USE empresaenrico;
DELIMITER //

CREATE PROCEDURE DiminuirSalario(
    IN dep_id INT,
    IN valorfixo DECIMAL(6,2)
)
BEGIN
    UPDATE cargos
    SET salario = salario + valorfixo
    WHERE departamentosID = dep_id;
END //

DELIMITER ;
--------------------
USE empresaenrico;
CALL DiminuirSalario(2,800);

-----------------------------------------

USE empresaenrico;
DELIMITER //

CREATE PROCEDURE AtualizarTitulo(
    IN empregadoID INT,
    IN IDNovoTitulo INT
)
BEGIN
    UPDATE empregados
    SET titulo = (SELECT titulo FROM cargos WHERE cargosID = IDNovoTitulo)
    WHERE empregadosID = empregadoID;
END //

DELIMITER ;
--------------------
USE empresaenrico;
CALL AtualizarTitulo(3,6);

-----------------------------------------

USE empresaenrico;
DELIMITER //

CREATE PROCEDURE AtualizarDepartamento(
    IN empregadoID INT,
    IN IDNovoDepartamento INT
)
BEGIN
    UPDATE empregados
    SET departamentosID = IDNovoDepartamento
    WHERE empregadosID = empregadoID;
END //

DELIMITER ;
--------------------
USE empresaenrico;
CALL AtualizarDepartamento(3,2);
