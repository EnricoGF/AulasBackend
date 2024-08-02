-- Exercicio 1---------------------------------------------------

USE empresaenrico;
DELIMITER //

CREATE FUNCTION CalcularSalarioAnual(
    cargoID INT
)

RETURNS DECIMAL(10,2)
BEGIN
	DECLARE salario1 DECIMAL(10,2);
    SELECT cargos.salario
    INTO salario1
    FROM cargos
    WHERE cargos.cargosID = cargoID;
    RETURN salario1 * 12;
END //
DELIMITER ;

---------------------------------------------------
USE empresaenrico;

SELECT titulo, CalcularSalarioAnual(cargosID) AS salario_anual
FROM cargos WHERE cargosID = 1;


--Exercicio 2--------------------------------------------------- n funciona

USE empresaenrico;
DELIMITER //

CREATE FUNCTION EmpregadosPorDepartamento(
    depID INT
)

RETURNS INT
BEGIN
	DECLARE empregadosCont INT;
    SELECT COUNT(empregados.departamentosID)
    INTO empregadosCont
    FROM empregados
    JOIN departamentos ON empregados.departamentosID = departamentos.departamentosID AND empregados.departamento_id = cargos.departamento_id
    WHERE departamentosID = depID;
    RETURN empregadosCont;
END //
DELIMITER ;

---------------------------------------------------
USE empresaenrico;

SELECT nome, EmpregadosPorDepartamento(departamentosID)
FROM empregados WHERE departamentosID = 1;


--Exercicio 3---------------------------------------------------

USE empresaenrico;
DELIMITER //

CREATE FUNCTION NomeDepartamento(
    depID INT
)

RETURNS VARCHAR(50)
BEGIN
	DECLARE nomeDep VARCHAR(50);
    SELECT departamentos.nome
    INTO nomeDep
    FROM departamentos
    WHERE departamentosID = depID;
    RETURN nomeDep;
END //
DELIMITER ;

---------------------------------------------------
USE empresaenrico;

SELECT departamentosID, NomeDepartamento(departamentosID) AS Nome_Departamento
FROM departamentos WHERE departamentosID = 1;


--Exercicio 4---------------------------------------------------

USE empresaenrico;
DELIMITER //

CREATE FUNCTION TituloEmpregado(
    empID INT
)

RETURNS VARCHAR(50)
BEGIN
	DECLARE tituloEmp VARCHAR(50);
    SELECT titulo
    INTO tituloEmp
    FROM empregados
    WHERE empregadosID = empID;
    RETURN tituloEmp;
END //
DELIMITER ;

---------------------------------------------------
SELECT nome,empregadosID, TituloEmpregado(empregadosID) AS Titulo_empregado
FROM empregados WHERE empregadosID = 1;


--Exercicio 5---------------------------------------------------

USE empresaenrico;
DELIMITER //

CREATE FUNCTION CalculaSalarioDepartamento(
    depID INT
)

RETURNS DECIMAL(11,2)
BEGIN
	DECLARE salario1 DECIMAL(11,2);
    SELECT SUM(cargos.salario)
    INTO salario1
    FROM empregados
    JOIN cargos ON empregados.titulo = cargos.titulo
    WHERE empregados.departamentosID = depID;
    RETURN salario1;
END //
DELIMITER ;
