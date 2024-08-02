USE empresaenrico;
DELIMITER //

CREATE FUNCTION CalcularSalarioBruto(
    empID INT
)

RETURNS DECIMAL(10,2)
BEGIN
	DECLARE salario1 DECIMAL(10,2);
    SELECT cargos.salario
    INTO salario1
    FROM empregados
    JOIN cargos ON empregados.titulo = cargos.titulo
    WHERE empregados.empregadosID = empID;
    RETURN salario1;
END //
DELIMITER ;