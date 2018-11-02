
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
		SELECT CA.id_curso
		FROM CursoAprobado AS CA
		WHERE CA.carnet = @Carnet
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
		--AND (PR.id_curso_prerrequisito in (SELECT * FROM dbo.FN_CursosAprobados(@Carnet))) -- Que cumpla los prerrequisitos
) 
GO

-- Retornar si cumple los perrequisitos
USE PRegistroAcademico
GO

DROP FUNCTION FN_CumplePrerrequisitos
go
CREATE FUNCTION FN_CumplePrerrequisitos(@Carnet INT, @CursoProgramado INT)
RETURNS BIT
AS
BEGIN
	DECLARE @Prerrequisitos INT =  (SELECT	PR.id_curso_prerrequisito
										FROM	Prerrequisito as PR INNER JOIN
												CursoProgramado AS CP ON PR.id_curso = CP.id_curso
										WHERE	CP.id_curso_programado = @CursoProgramado)
	IF (@Prerrequisitos in (SELECT * FROM dbo.FN_CursosAprobados(@Carnet)))
		RETURN 1
	RETURN 0
END
GO

-- Retornar si un curso programado tiene laboratorio

USE PRegistroAcademico
GO
DROP FUNCTION FN_TieneLaboratorio
GO
CREATE FUNCTION FN_TieneLaboratorio(@CursoProgramadoID INT)
RETURNS INT
AS
BEGIN
	RETURN 
	(
		SELECT	laboratorio
		FROM	Curso AS C INNER JOIN
				CursoProgramado AS CP ON C.id_curso = CP.id_curso
		WHERE	CP.id_curso_programado = @CursoProgramadoID
		
	)
END
GO

-- Retornar horarios ocupados de un usuario

USE PRegistroAcademico
GO
DROP FUNCTION FN_HorariosOcupados
GO
CREATE FUNCTION FN_HorariosOcupados(@Carnet INT)
RETURNS TABLE
AS
	RETURN 
	(
		SELECT	id_horario
		FROM	CursoProgramado as CP INNER JOIN
				CursoAsignado as CA ON CA.id_curso_programado = CP.id_curso_programado 
		WHERE	CA.carnet = @Carnet
		
	)
GO

USE PRegistroAcademico
GO
DROP FUNCTION FN_HorariosOcupadosLab
GO
CREATE FUNCTION FN_HorariosOcupadosLab(@Carnet INT)
RETURNS TABLE
AS
	RETURN 
	(
		SELECT	id_horario
		FROM	LaboratorioProgramado as CP INNER JOIN
				CursoAsignado as CA ON CA.id_curso_programado = CP.id_laboratorio_programado 
		WHERE	CA.carnet = @Carnet
		
	)
GO


-- Retornar horarios ocupados de un usuario

USE PRegistroAcademico
GO
DROP FUNCTION FN_FacultadHorarioVIP
GO
CREATE FUNCTION FN_FacultadHorarioVIP(@Carnet INT)
RETURNS BIT
AS
BEGIN
		DECLARE @FacultadCarnet INT = (SELECT F.id_facultad FROM EstudianteCarrera AS E INNER JOIN
										Carrera AS C ON C.id_carrera = E.id_carrera INNER JOIN
											Facultad AS F ON F.id_facultad = C.id_facultad
												WHERE E.carnet = @Carnet)
		DECLARE @FacultadActiva INT = (SELECT id_facultad FROM Asignacion WHERE id_ciclo = (SELECT dbo.FN_CicloActivo()))
		IF (@FacultadActiva != @FacultadCarnet) OR @FacultadCarnet is null OR @FacultadActiva is null
			RETURN 0
		
		DECLARE @INICIO DATETIME = (SELECT inicio FROM Asignacion WHERE id_ciclo = (SELECT dbo.FN_CicloActivo()))
		DECLARE @FIN	DATETIME = (SELECT final FROM Asignacion WHERE id_ciclo = (SELECT dbo.FN_CicloActivo()))
		IF (SYSDATETIME() >= @INICIO AND SYSDATETIME() <= @FIN)
			RETURN 1
		
		RETURN 0
		
END
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
	SELECT	id_curso_programado CursoID, C.Nombre  Curso, seccion Seccion, h.hora_inicio, h.hora_fin, ci.nombre Ciclo, cupo
	FROM	dbo.FN_CursosPosibles(@Carnet) CP1 INNER JOIN
			Curso AS C ON C.id_curso = CP1.id_curso INNER JOIN
			Carrera AS CA ON CA.id_carrera = CP1.id_carrera INNER JOIN
			Horario AS H ON H.id_horario_hora = CP1.id_horario INNER JOIN
			Ciclo AS CI ON CI.id_ciclo = CP1.id_ciclo
	WHERE	CP1.id_ciclo = (SELECT dbo.FN_CicloActivo())  -- Ciclo activo
			AND (CP1.id_carrera not in (SELECT R.id_carrera FROM Restriccion R WHERE R.id_curso_programado = CP1.id_curso_programado)) -- y que cumpla las restricciones.
)
GO


-- Seleccionar curso programado

USE PRegistroAcademico
GO
drop FUNCTION FN_MostrarCursoProgramado
GO
CREATE FUNCTION FN_MostrarCursoProgramado (@Carnet INT, @CursoProgramadoID INT)
RETURNS TABLE
AS 
RETURN
(
		SELECT	CP.CursoID, CP.Curso, CP.Seccion, CP.hora_inicio, cp.hora_fin, CP.Cupo
		FROM	dbo.FN_CursosProgramados(@Carnet) AS CP
		WHERE	CP.CursoID = @CursoProgramadoID
		UNION
		SELECT	LP.id_laboratorio_programado, CONCAT(CP2.Curso, ' (LAB)') Curso, lp.seccion Seccion, H.hora_inicio, H.hora_fin, lp.cupo Cupo
		FROM	LaboratorioProgramado AS LP INNER JOIN
				(SELECT * FROM dbo.FN_CursosProgramados(@Carnet)) AS CP2 ON CP2.CursoID = LP.id_curso_programado INNER JOIN
				Horario AS H ON H.id_horario_hora = LP.id_horario
				WHERE	LP.id_curso_programado = @CursoProgramadoID
)		
GO

