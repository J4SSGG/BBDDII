--

USE PRegistroAcademico
GO
exec dbo.sp_ReporteCursoAsignado 0,1,0,0
--drop procedure SP_ReporteCursoAsignado
CREATE PROCEDURE SP_ReporteCursoAsignado
@carnet int, @facultad int, @carrera int, @seccion int--0 si es nulo 
AS
	BEGIN
		IF @carnet>0
			(SELECT E.carnet Carnet, C.Nombre CursosAsignados, ( CASE A.Estado WHEN 1 THEN 'Asignado' WHEN 0 THEN 'Condicionado' END)
			FROM Estudiante E  INNER JOIN 
				CursoAsignado A ON (E.carnet = A.carnet) INNER JOIN
				CursoProgramado P ON (P.id_curso_programado = A.id_curso_programado) INNER JOIN
				Curso C ON (C.id_curso = P.id_curso)
			WHERE E.carnet = @carnet)
		IF @facultad>0
			(SELECT E.carnet, F.nombre Facultad, C.Nombre CursosAsignados, ( CASE A.Estado WHEN 1 THEN 'Asignado' WHEN 0 THEN 'Condicionado' END)
			FROM Facultad F INNER JOIN 
				Carrera CA ON (CA.id_facultad = F.id_facultad) INNER JOIN 
				EstudianteCarrera EC ON (EC.id_carrera = CA.id_carrera) INNER JOIN 
				Estudiante E ON (E.carnet = EC.carnet) INNER JOIN 
				CursoAsignado A ON (E.carnet = A.carnet) INNER JOIN
				CursoProgramado P ON (P.id_curso_programado = A.id_curso_programado) INNER JOIN
				Curso C ON (C.id_curso = P.id_curso)
			WHERE F.id_facultad = @facultad)
		IF @carrera>0
			(SELECT E.carnet, CAR.nombre Carrera, C.Nombre CursosAsignados, ( CASE A.Estado WHEN 1 THEN 'Asignado' WHEN 0 THEN 'Condicionado' END)
			FROM Carrera CA  INNER JOIN 
				EstudianteCarrera EC ON (EC.id_carrera = CA.id_carrera) INNER JOIN 
				Estudiante E ON (E.carnet = EC.carnet) INNER JOIN 
				CursoAsignado A ON (E.carnet = A.carnet) INNER JOIN
				CursoProgramado P ON (P.id_curso_programado = A.id_curso_programado) INNER JOIN
				Curso C ON (C.id_curso = P.id_curso) INNER JOIN
				Carrera AS CAR ON CAR.id_carrera = EC.id_carrera
			WHERE CA.id_carrera = @carrera)
			union all
			(SELECT E.carnet, CAR.nombre Carrera, CONCAT( C.Nombre, ' (LAB)') CursosAsignados, ( CASE A.Estado WHEN 1 THEN 'Asignado' WHEN 0 THEN 'Condicionado' END)
			FROM Carrera CA  INNER JOIN 
				EstudianteCarrera EC ON (EC.id_carrera = CA.id_carrera) INNER JOIN 
				Estudiante E ON (E.carnet = EC.carnet) INNER JOIN 
				LaboratorioAsignado A ON (E.carnet = A.carnet) INNER JOIN
				LaboratorioProgramado LP on (LP.id_laboratorio_programado = A.id_laboratorio_programado) INNER JOIN
				CursoProgramado P ON (P.id_curso_programado = LP.id_curso_programado) INNER JOIN
				Curso C ON (C.id_curso = P.id_curso) INNER JOIN
				Carrera AS CAR ON CAR.id_carrera = EC.id_carrera
			WHERE CA.id_carrera = @carrera)
		IF @seccion>0
			(SELECT E.carnet, C.Nombre CursosAsignados, ( CASE CA.Estado WHEN 1 THEN 'Asignado' WHEN 0 THEN 'Condicionado' END)
			FROM CursoAsignado CA INNER JOIN 
				CursoProgramado CP ON (CA.id_curso_programado = CP.id_curso_programado)INNER JOIN 
				Curso C ON (CP.id_curso = C.id_curso) INNER JOIN
				Estudiante E ON (E.carnet = CA.carnet)
			WHERE CP.seccion = @seccion)
			UNION ALL
			SELECT E.carnet, CONCAT( C.Nombre, ' (LAB)') CursosAsignados, ( CASE LA.Estado WHEN 1 THEN 'Asignado' WHEN 0 THEN 'Condicionado' END)
			FROM LaboratorioAsignado LA INNER JOIN 
				LaboratorioProgramado LP ON (LA.id_laboratorio_programado = LP.id_laboratorio_programado)INNER JOIN 
				CursoProgramado CP ON (LP.id_curso_programado = CP.id_curso_programado)INNER JOIN
				Curso C ON (CP.id_curso = C.id_curso) INNER JOIN
				Estudiante E ON (E.carnet = LA.carnet)
			WHERE CP.seccion = @seccion
		IF @seccion<=0 or @carrera <= 0 or @facultad <= 0 or @carnet <= 0
			(SELECT E.carnet, C.Nombre AS CursosAsignados
			FROM Estudiante E  INNER JOIN 
				CursoAsignado A ON (E.carnet = A.carnet) INNER JOIN
				CursoProgramado P ON (P.id_curso_programado = A.id_curso_programado) INNER JOIN
				Curso C ON (C.id_curso = P.id_curso))
			UNION ALL
			(SELECT E.carnet, CONCAT( C.Nombre, ' (LAB)') AS CursosAsignados
			FROM Estudiante E  INNER JOIN 
				LaboratorioAsignado A ON (E.carnet = A.carnet) INNER JOIN
				LaboratorioProgramado P ON (P.id_laboratorio_programado = A.id_laboratorio_programado) INNER JOIN
				CursoProgramado CP on cp.id_curso_programado = p.Id_curso_programado inner join
				Curso C ON (C.id_curso = cP.id_curso))
	END
GO




(SELECT E.carnet Carnet, CAR.nombre Carrera, F.nombre Facultad, C.Nombre CursosAsignados Curso, P.seccion Seccion,( CASE A.Estado WHEN 1 THEN 'Asignado' WHEN 0 THEN 'Condicionado' END)
			FROM Carrera CA  INNER JOIN 
				EstudianteCarrera EC ON (EC.id_carrera = CA.id_carrera) INNER JOIN 
				Estudiante E ON (E.carnet = EC.carnet) INNER JOIN 
				CursoAsignado A ON (E.carnet = A.carnet) INNER JOIN
				CursoProgramado P ON (P.id_curso_programado = A.id_curso_programado) INNER JOIN
				Curso C ON (C.id_curso = P.id_curso) INNER JOIN
				Carrera AS CAR ON CAR.id_carrera = EC.id_carrera INNER JOIN
				Facultad AS F ON F.id_facultad = CAR.id_facultad
			WHERE CA.id_carrera = @carrera)
			union all
			(SELECT E.carnet Carnet, CAR.nombre Carrera, F.nombre Facultad, CONCAT( C.Nombre, ' (LAB)') Curso, LP.seccion Seccion,( CASE A.Estado WHEN 1 THEN 'Asignado' WHEN 0 THEN 'Condicionado' END)
			FROM Carrera CA  INNER JOIN 
				EstudianteCarrera EC ON (EC.id_carrera = CA.id_carrera) INNER JOIN 
				Estudiante E ON (E.carnet = EC.carnet) INNER JOIN 
				LaboratorioAsignado A ON (E.carnet = A.carnet) INNER JOIN
				LaboratorioProgramado LP ON LP.id_laboratorio_programado = A.id_laboratorio_programado INNER JOIN
				CursoProgramado P ON (P.id_curso_programado = LP.id_curso_programado) INNER JOIN
				Curso C ON (C.id_curso = P.id_curso) INNER JOIN
				Carrera AS CAR ON CAR.id_carrera = EC.id_carrera INNER JOIN
				Facultad AS F ON F.id_facultad = CAR.id_facultad
			WHERE CA.id_carrera = @carrera)