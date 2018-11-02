
-- Retornar el ciclo activo
USE PRegistroAcademico
GO

CREATE FUNCTION FN_CicloActivo()
RETURNS INT
AS
BEGIN
	RETURN 
	(
		SELECT TOP 1 id_ciclo
		FROM Ciclo
		WHERE Activo = 1
		ORDER BY ID_CICLO ASC
	)
END
GO

-- Retornar cursos aprobados de estudiante
USE PRegistroAcademico
GO

CREATE FUNCTION FN_CursosAprobados(@Carnet INT)
RETURNS TABLE
AS
	RETURN 
	(
		SELECT id_curso
		FROM CursoAprobado
		WHERE carnet = @Carnet
	)
GO

-- Retornar todos los cursos que puede llevar el estudiante
USE PRegistroAcademico
GO

DROP FUNCTION FN_CursosPosibles
go
CREATE FUNCTION FN_CursosPosibles(@Carnet INT)
RETURNS TABLE
AS
RETURN 
(
	
	SELECT	C.* 
	FROM	CursoProgramado C INNER JOIN
			Prerrequisito AS PR ON C.id_curso = PR.id_curso
	WHERE	(C.id_carrera in (SELECT EC.id_carrera FROM EstudianteCarrera EC WHERE EC.carnet = @Carnet))  -- Solo carrera del estudiante
		AND	(C.id_curso not in (SELECT * FROM dbo.FN_CursosAprobados(@Carnet))) -- Que aun no ha ganado/cursado
		AND (PR.id_curso_prerrequisito in (SELECT * FROM dbo.FN_CursosAprobados(@Carnet))) -- Que cumpla los prerrequisitos
) 
GO



-- Buscar cursos programados
USE PRegistroAcademico
GO
drop FUNCTION FN_CursosProgramados
GO
CREATE FUNCTION FN_CursosProgramados (@Carnet INT)
RETURNS TABLE
AS 
RETURN
(
	SELECT	* 
	FROM	dbo.FN_CursosPosibles(@Carnet) CP1
	WHERE	CP1.id_ciclo = (SELECT dbo.FN_CicloActivo())  -- Ciclo activo
			AND (CP1.id_carrera not in (SELECT R.id_carrera FROM Restriccion R WHERE R.id_curso_programado = CP1.id_curso_programado)) -- y que cumpla las restricciones.
)
GO


