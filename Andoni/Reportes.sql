USE PRegistroAcademico
GO

CREATE PROCEDURE SP_ReporteCursoAsignado
@carnet int, @facultad int, @carrera int, @seccion int--0 si es nulo 
AS
	BEGIN
		IF @carnet>0
			(SELECT C.Nombre AS CursosAsignados
			FROM Estudiante E  INNER JOIN 
				CursoAsignado A ON (E.carnet = A.carnet) INNER JOIN
				CursoProgramado P ON (P.id_curso_programado = A.id_curso_programado) INNER JOIN
				Curso C ON (C.id_curso = P.id_curso)
			WHERE E.carnet = @carnet)
		IF @facultad>0
			(SELECT E.carnet, C.Nombre AS CursoAsignado
			FROM Facultad F INNER JOIN 
				Carrera CA ON (CA.id_facultad = F.id_facultad) INNER JOIN 
				EstudianteCarrera EC ON (EC.id_carrera = CA.id_carrera) INNER JOIN 
				Estudiante E ON (E.carnet = EC.carnet) INNER JOIN 
				CursoAsignado A ON (E.carnet = A.carnet) INNER JOIN
				CursoProgramado P ON (P.id_curso_programado = A.id_curso_programado) INNER JOIN
				Curso C ON (C.id_curso = P.id_curso)
			WHERE F.id_facultad = @facultad)
		IF @carrera>0
			(SELECT E.carnet,  C.Nombre AS CursoAsignado
			FROM Carrera CA  INNER JOIN 
				EstudianteCarrera EC ON (EC.id_carrera = CA.id_carrera) INNER JOIN 
				Estudiante E ON (E.carnet = EC.carnet) INNER JOIN 
				CursoAsignado A ON (E.carnet = A.carnet) INNER JOIN
				CursoProgramado P ON (P.id_curso_programado = A.id_curso_programado) INNER JOIN
				Curso C ON (C.id_curso = P.id_curso)
			WHERE CA.id_carrera = @carrera)
		IF @seccion>0
			(SELECT E.carnet,  C.Nombre AS CursoAsignado
			FROM CursoAsignado CA INNER JOIN 
				CursoProgramado CP ON (CA.id_curso_programado = CP.id_curso_programado)INNER JOIN 
				Curso C ON (CP.id_curso = C.id_curso) INNER JOIN
				EstudianteCarrera EC ON (EC.id_carrera = CP.id_carrera) INNER JOIN 
				Estudiante E ON (E.carnet = EC.carnet)
			WHERE CP.seccion = @seccion)
	END
GO

CREATE PROCEDURE SP_ReporteCupos
@curso int, @facultad int, @carrera int, @seccion int 
AS
	BEGIN
		IF @curso>0
			SELECT CP.id_curso, CP.seccion, CP.cupo
			FROM CursoProgramado CP 
			WHERE CP.id_curso = @curso
			ORDER BY CP.cupo DESC 
		IF @facultad>0
			SELECT CP.id_curso, CP.seccion, CP.cupo
			FROM CursoProgramado CP INNER JOIN 
			Carrera C ON (CP.id_carrera = C.id_carrera) INNER JOIN 
			Facultad F ON (F.id_facultad = C.id_facultad) 
			WHERE F.id_facultad = @facultad
			ORDER BY CP.cupo DESC 
		IF @carrera>0
			SELECT CP.id_curso, CP.seccion, CP.cupo
			FROM CursoProgramado CP INNER JOIN 
			Carrera C ON (CP.id_carrera = C.id_carrera)
			WHERE C.id_carrera = @carrera
			ORDER BY CP.cupo DESC 
		IF @seccion>0
			SELECT CP.id_curso, CP.seccion, CP.cupo
			FROM CursoProgramado CP 
			WHERE CP.seccion = @seccion
			ORDER BY CP.cupo DESC 
	END
GO