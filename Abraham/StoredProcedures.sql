-- Insertar en Bitácora
USE PRegistroAcademico
GO
DROP PROCEDURE SP_InsertarBitacora
GO
CREATE PROCEDURE SP_InsertarBitacora
@Mensaje VARCHAR(1000), @EstadoCompletado BIT, @Tipo INT
AS
	BEGIN
		BEGIN TRY
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
			---
				INSERT INTO Bitacora ([DESCRIPCION],[COMPLETADA], [TIPO]) VALUES (@Mensaje, @EstadoCompletado, @Tipo)
			---
			COMMIT TRANSACTION
		END TRY
		BEGIN CATCH
			PRINT 'Error insertando en la bitácora'
			PRINT @@ERROR
			PRINT ERROR_MESSAGE()
			ROLLBACK TRANSACTION
		END CATCH
	END
GO

-- Insertar Estudiante
USE PRegistroAcademico
GO
DROP PROCEDURE SP_InsertarEstudiante
GO
CREATE PROCEDURE SP_InsertarEstudiante
@Nombres VARCHAR (50), @Apellidos VARCHAR (50)
AS
	BEGIN
		DECLARE @Mensaje VARCHAR(200) = 'INSERT INTO Estudiante VALUES (' + @Nombres +', '+ @Apellidos + ')'
		BEGIN TRY
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
			---
				INSERT INTO Estudiante ([NOMBRES], [APELLIDOS]) VALUES (@Nombres, @Apellidos)
			---
			COMMIT TRANSACTION
			-- Guardar en la Bitacora
			EXEC SP_InsertarBitacora @Mensaje, 1, 1
		END TRY
		BEGIN CATCH
			EXEC SP_InsertarBitacora @Mensaje, 0, 1
			PRINT '¡Ha ocurrido un error al hacer INSERT en Estudiate!'
			PRINT @@ERROR
			PRINT ERROR_MESSAGE()
			ROLLBACK TRANSACTION
		END CATCH
	END
GO

-- Insertar EstudianteCarrera

USE PRegistroAcademico
GO
DROP PROCEDURE SP_InsertarEstudianteCarrera
GO
CREATE PROCEDURE SP_InsertarEstudianteCarrera
@Carnet INT, @CarreraID INT
AS
	BEGIN
		DECLARE @Mensaje VARCHAR(200) = CONCAT('INSERT INTO EstudianteCarrera VALUES (' , @Carnet ,', ', @CarreraID , ')')
		BEGIN TRY
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
			---
				INSERT INTO EstudianteCarrera ([CARNET], [ID_CARRERA]) VALUES (@Carnet, @CarreraID)
			---
			COMMIT TRANSACTION
			-- Guardar en la Bitacora
			EXEC SP_InsertarBitacora @Mensaje, 1, 1
		END TRY
		BEGIN CATCH
			EXEC SP_InsertarBitacora @Mensaje, 0, 1
			PRINT '¡Ha ocurrido un error al hacer INSERT en EstudiateCarrera!'
			PRINT @@ERROR
			PRINT ERROR_MESSAGE()
			ROLLBACK TRANSACTION
		END CATCH
	END
GO

-- Insertar Facultad

USE PRegistroAcademico
GO
DROP PROCEDURE SP_InsertarFacultad
GO
CREATE PROCEDURE SP_InsertarFacultad
@FacultadID INT, @Nombre INT
AS
	BEGIN
		DECLARE @Mensaje VARCHAR(200) = CONCAT('INSERT INTO Facultad VALUES (' , @FacultadID ,', ', @Nombre , ')')
		BEGIN TRY
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
			---
				INSERT INTO Facultad ([ID_FACULTAD], [NOMBRE]) VALUES (@FacultadID, @Nombre)
			---
			COMMIT TRANSACTION
			-- Guardar en la Bitacora
			EXEC SP_InsertarBitacora @Mensaje, 1, 2
		END TRY
		BEGIN CATCH
			EXEC SP_InsertarBitacora @Mensaje, 0, 2
			PRINT '¡Ha ocurrido un error al hacer INSERT en Facultad!'
			PRINT @@ERROR
			PRINT ERROR_MESSAGE()
			ROLLBACK TRANSACTION
		END CATCH
	END
GO

-- Insertar Horario
USE PRegistroAcademico
GO
DROP PROCEDURE SP_InsertarHorario
GO
CREATE PROCEDURE SP_InsertarHorario
@HoraInicio VARCHAR(19), @HoraFin VARCHAR(19)
AS
	BEGIN
		DECLARE @Mensaje VARCHAR(200) = 'INSERT INTO Horario VALUES (' + @HoraInicio +', '+ @HoraFin + ')'
		BEGIN TRY
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
			---
				INSERT INTO Horario ([HORA_INICIO], [HORA_FIN]) VALUES (@HoraInicio, @HoraFin)
			---
			COMMIT TRANSACTION
			-- Guardar en la Bitacora
			EXEC SP_InsertarBitacora @Mensaje, 1, 0
		END TRY
		BEGIN CATCH
			EXEC SP_InsertarBitacora @Mensaje, 0, 0
			PRINT '¡Ha ocurrido un error al hacer INSERT en Horarios!'
			PRINT @@ERROR
			PRINT ERROR_MESSAGE()
			ROLLBACK TRANSACTION
		END CATCH
	END
GO

-- Insertar Prerrequisito
USE PRegistroAcademico
GO
DROP PROCEDURE SP_InsertarPrerrequisito
GO
CREATE PROCEDURE SP_InsertarPrerrequisito
@Curso INT, @CursoPrerrequisito INT
AS
	BEGIN
		DECLARE @Mensaje VARCHAR(200) = CONCAT('INSERT INTO Prerrequisito VALUES (' , @Curso ,', ', @CursoPrerrequisito , ')')
		BEGIN TRY
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
			---
				INSERT INTO Prerrequisito ([ID_CURSO], [ID_CURSO_PRERREQUISITO]) VALUES (@Curso, @CursoPrerrequisito)
			---
			COMMIT TRANSACTION
			-- Guardar en la Bitacora
			EXEC SP_InsertarBitacora @Mensaje, 1, 0
		END TRY
		BEGIN CATCH
			EXEC SP_InsertarBitacora @Mensaje, 0, 0
			PRINT '¡Ha ocurrido un error al hacer INSERT en Prerrequisito!'
			PRINT @@ERROR
			PRINT ERROR_MESSAGE()
			ROLLBACK TRANSACTION
		END CATCH
	END
GO
-- Insertar Restriccion

USE PRegistroAcademico
GO
DROP PROCEDURE SP_InsertarRestriccion
GO
CREATE PROCEDURE SP_InsertarRestriccion
@CursoProgramadoID INT, @CarreraID INT
AS
	BEGIN
		DECLARE @Mensaje VARCHAR(200) = CONCAT('INSERT INTO Restriccion VALUES (' , @CursoProgramadoID ,', ',@CarreraID , ')')
		BEGIN TRY
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
			---
				INSERT INTO Restriccion ([ID_CURSO_PROGRAMADO], [ID_CARRERA]) VALUES (@CursoProgramadoID, @CarreraID)
			---
			COMMIT TRANSACTION
			-- Guardar en la Bitacora
			EXEC SP_InsertarBitacora @Mensaje, 1, 0
		END TRY
		BEGIN CATCH
			EXEC SP_InsertarBitacora @Mensaje, 0, 0
			PRINT '¡Ha ocurrido un error al hacer INSERT en Restriccion!'
			PRINT @@ERROR
			PRINT ERROR_MESSAGE()
			ROLLBACK TRANSACTION
		END CATCH
	END
GO


-- Asignar Cursos
USE PRegistroAcademico
GO
drop PROCEDURE SP_AsignarCurso
GO
CREATE PROCEDURE SP_AsignarCurso
@Carnet INT, @CursoProgramadoID INT, @CursoProgramadoLabID INT
AS
BEGIN
		BEGIN TRY
			BEGIN TRANSACTION
			DECLARE @Mensaje VARCHAR(200)
			IF (@CursoProgramadoID IS NULL) OR (@Carnet IS NULL) OR (@CursoProgramadoLabID IS NULL)
			BEGIN
				PRINT 'Error: No se han definido todos los parametros requeridos!'
				EXEC SP_InsertarBitacora 'Asignación falló porque faltaban parámetros!', 0, 0
				COMMIT TRANSACTION
				RETURN
			END
			IF ((SELECT dbo.FN_TieneLaboratorio(@CursoProgramadoID)) = 1) AND (@CursoProgramadoLabID IS NULL)
			BEGIN
				PRINT 'Error: No se ha definido la sección de Laboratorio para el curso elegido!'
				EXEC SP_InsertarBitacora 'Asignación falló porque no se definió sección de laboratorio para un curso.', 0, 0
				COMMIT TRANSACTION
				RETURN
			END
		
			IF ((SELECT dbo.FN_FacultadHorarioVIP(@Carnet)) = 0)
				BEGIN
					PRINT 'Error: No puede asignarse fuera del horario VIP para su Facultad!'
					set @Mensaje = CONCAT('Usuario ' , @Carnet ,' intentó asignarse fuera de horario VIP.')
					EXEC SP_InsertarBitacora @Mensaje, 0, 1
					COMMIT TRANSACTION
					RETURN
				END
		
			IF ((SELECT mora FROM CuentaCorriente WHERE carnet = @Carnet) = 1)
				BEGIN
					PRINT 'Error: No puede asignarse ningún curso si su saldo tiene mora!'
					SET @Mensaje = CONCAT('Usuario ' , @Carnet ,' intentó asignarse con saldo con mora.')
					EXEC SP_InsertarBitacora @Mensaje, 0, 1
					COMMIT TRANSACTION
					RETURN
				END
		
			DECLARE @Cupos INT = (SELECT cupo FROM CursoProgramado WHERE id_curso_programado = @CursoProgramadoID)
			IF (@Cupos = 0)
				BEGIN
					PRINT 'Error: El curso no tiene cupos libres!'
					SET @Mensaje = CONCAT('Usuario ' , @Carnet ,' intentó asignarse curso ', @CursoProgramadoID , ' pero no tiene cupos disponibles.')
					EXEC SP_InsertarBitacora @Mensaje, 0, 1
					COMMIT TRANSACTION
					RETURN
				END
			SET @Cupos = (SELECT cupo FROM LaboratorioProgramado WHERE id_curso_programado = @CursoProgramadoLabID)
			IF (@Cupos = 0) AND  ((SELECT dbo.FN_TieneLaboratorio(@CursoProgramadoID)) = 1)
				BEGIN
					PRINT 'Error: El laboratorio no tiene cupos libres!'
					SET @Mensaje = CONCAT('Usuario ' , @Carnet ,' intentó asignarse laboratorio ', @CursoProgramadoLabID , ' pero no tiene cupos disponibles.')
					EXEC SP_InsertarBitacora @Mensaje, 0, 1
					COMMIT TRANSACTION
					RETURN
				END

			DECLARE @HorarioCurso INT = (SELECT id_horario FROM CursoProgramado WHERE id_curso_programado = @CursoProgramadoID)
			IF (@HorarioCurso IS NOT NULL) AND (@HorarioCurso IN (SELECT * FROM dbo.FN_HorariosOcupados(@Carnet)))
				BEGIN
					PRINT 'Error: El horario de este curso se traslapa con otro de sus horarios!'
					SET @Mensaje = CONCAT('Usuario ' , @Carnet ,' intentó asignarse curso ', @CursoProgramadoID , ' pero su horario se traslapa.')
					EXEC SP_InsertarBitacora @Mensaje, 0, 1
					COMMIT TRANSACTION
					RETURN
				END

			SET @HorarioCurso = (SELECT id_horario FROM CursoProgramado WHERE id_curso_programado = @CursoProgramadoLabID) --- EVALUAR HORARIO LABORATORIO
			IF (@HorarioCurso IS NOT NULL) AND (@HorarioCurso IN (SELECT * FROM dbo.FN_HorariosOcupadosLab(@Carnet))) AND ((SELECT dbo.FN_TieneLaboratorio(@CursoProgramadoID)) = 1)
				BEGIN
					SET @Mensaje = CONCAT('Usuario ' , @Carnet ,' intentó asignarse laboratorio ', @CursoProgramadoLabID , ' pero su horario se traslapa.')
					EXEC SP_InsertarBitacora @Mensaje, 0, 1
					PRINT 'Error: El horario de este laboratorio se traslapa con otro de sus horarios!'
					RETURN
				END
			-- ASIGNAR
		
			INSERT INTO CursoAsignado VALUES (@Carnet, @CursoProgramadoID, (SELECT dbo.FN_CumplePrerrequisitos(@Carnet, 13)))
			SET @Mensaje = CONCAT('Usuario ' , @Carnet , ' se asignó curso ', @CursoProgramadoID , ' existosamente.')
			PRINT 'Curso asignado exitosamente!'
			EXEC SP_InsertarBitacora @Mensaje, 1, 1
			IF ((SELECT dbo.FN_TieneLaboratorio(@CursoProgramadoID)) = 1)
				INSERT INTO LaboratorioAsignado VALUES (@Carnet, @CursoProgramadoLabID, (SELECT dbo.FN_CumplePrerrequisitos(@Carnet, 13)))
				PRINT 'Laboratorio asignado exitosamente!'
				SET @Mensaje = CONCAT('Usuario ' , @Carnet ,' se asignó laboratorio ', @CursoProgramadoLabID , ' existosamente.')
				EXEC SP_InsertarBitacora @Mensaje, 1, 1
				UPDATE LaboratorioProgramado SET cupo = (SELECT CUPO FROM LaboratorioProgramado WHERE @CursoProgramadoLabID = id_laboratorio_programado) -1 WHERE @CursoProgramadoLabID = id_laboratorio_programado
				
			
			UPDATE CursoProgramado SET cupo = (SELECT CUPO FROM CursoProgramado WHERE @CursoProgramadoID = id_curso_programado) -1 WHERE @CursoProgramadoID = id_curso_programado
			COMMIT TRANSACTION
		END TRY
		BEGIN CATCH
			PRINT '¡Ha ocurrido un error en Asignar'
			PRINT @@ERROR
			PRINT ERROR_MESSAGE()
			ROLLBACK TRANSACTION
		END	CATCH
END	



GO
-- Desasignar Curso
drop PROCEDURE SP_DesasignarCurso
GO
CREATE PROCEDURE SP_DesasignarCurso
@Carnet INT, @CursoProgramadoID INT, @CursoProgramadoLabID INT
AS
BEGIN
		BEGIN TRY
			DECLARE @Mensaje VARCHAR(200)
			BEGIN TRANSACTION
			IF (@CursoProgramadoID IS NULL) OR (@Carnet IS NULL)
			BEGIN
				PRINT 'Error: No se han definido todos los parametros requeridos!'
				EXEC SP_InsertarBitacora 'Desasignación falló porque faltaban parámetros!', 0,0
				COMMIT TRANSACTION
				RETURN
			END
			IF ((SELECT dbo.FN_TieneLaboratorio(@CursoProgramadoID)) = 1) AND (@CursoProgramadoLabID IS NULL)
			BEGIN
				PRINT 'Error: No se ha definido la sección de Laboratorio para el curso elegido!'
				EXEC SP_InsertarBitacora 'Desasignación falló porque no se definió sección de laboratorio para un curso.', 0, 0
				COMMIT TRANSACTION
				RETURN
			END
			IF ((SELECT dbo.FN_FacultadHorarioVIP(@Carnet)) = 0)
				BEGIN
					PRINT 'Error: No puede desasignarse fuera del horario VIP para su Facultad!'
					set @Mensaje = CONCAT('Usuario ' , @Carnet ,' intentó desasignarse fuera de horario VIP.')
					EXEC SP_InsertarBitacora @Mensaje, 0, 1
					COMMIT TRANSACTION
					RETURN
				END
			IF (SELECT carnet FROM CursoAsignado WHERE id_curso_programado = @CursoProgramadoID AND @Carnet = carnet ) IS NULL
			BEGIN
				PRINT 'Error: Este estudiante no tiene asignado el curso ingresado!'
				SET @Mensaje = CONCAT('Usuario ' , @Carnet ,' intentó desasignarse curso ', @CursoProgramadoID, ' pero no lo tenía asignado.')
					EXEC SP_InsertarBitacora @Mensaje, 0, 1
				COMMIT TRANSACTION
				RETURN
			END

			IF (SELECT carnet FROM LaboratorioAsignado WHERE id_laboratorio_programado = @CursoProgramadoLabID AND @Carnet = carnet ) IS NULL
			BEGIN
				PRINT 'Error: Este estudiante no tiene asignado el laboratorio ingresado!'
				SET @Mensaje = CONCAT('Usuario ' , @Carnet ,' intentó desasignarse laboratorio ', @CursoProgramadoLabID ,' pero no lo tenía asignado.')
				EXEC SP_InsertarBitacora @Mensaje, 0, 1
				COMMIT TRANSACTION
				RETURN
			END

			-- Desasignar
		
			
			DELETE FROM CursoAsignado WHERE @Carnet = carnet AND @CursoProgramadoID = id_curso_programado
			PRINT 'Curso desasignado exitosamente!'
			SET @Mensaje = CONCAT('Usuario ' , @Carnet ,' se desasignó curso ', @CursoProgramadoID , ' existosamente.')
			EXEC SP_InsertarBitacora @Mensaje, 1,1
			IF ((SELECT dbo.FN_TieneLaboratorio(@CursoProgramadoID)) = 1)
				DELETE FROM LaboratorioAsignado WHERE @Carnet = carnet AND @CursoProgramadoLabID = id_laboratorio_programado
				UPDATE LaboratorioProgramado SET cupo = (SELECT CUPO FROM LaboratorioProgramado WHERE @CursoProgramadoLabID = id_laboratorio_programado) +1 WHERE @CursoProgramadoLabID = id_laboratorio_programado
				PRINT 'Laboratorio desasignado exitosamente!'
				SET @Mensaje = CONCAT('Usuario ' , @Carnet ,' se deasignó laboratorio', @CursoProgramadoLabID , ' existosamente.')
				EXEC SP_InsertarBitacora @Mensaje, 1,1

			UPDATE CursoProgramado SET cupo = (SELECT CUPO FROM CursoProgramado WHERE @CursoProgramadoID = id_curso_programado) +1 WHERE @CursoProgramadoID = id_curso_programado
			COMMIT TRANSACTION
		END TRY
		BEGIN CATCH
			PRINT '¡Ha ocurrido un error en Desasignar'
			PRINT @@ERROR
			PRINT ERROR_MESSAGE()
			ROLLBACK TRANSACTION
		END	CATCH
END	


-- Reporte Asignacion

USE PRegistroAcademico
GO
DROP PROCEDURE SP_ReporteCursoAsignado
go
CREATE PROCEDURE SP_ReporteCursoAsignado
@carnet int, @facultad int, @carrera int, @seccion int--0 si es nulo 
AS
	BEGIN
		(SELECT E.carnet Carnet, CAR.nombre Carrera, F.nombre Facultad, C.Nombre CursosAsignados, P.seccion Seccion,( CASE A.Estado WHEN 1 THEN 'Asignado' WHEN 0 THEN 'Condicionado' END)
			FROM Carrera CA  INNER JOIN 
				EstudianteCarrera EC ON (EC.id_carrera = CA.id_carrera) INNER JOIN 
				Estudiante E ON (E.carnet = EC.carnet) INNER JOIN 
				CursoAsignado A ON (E.carnet = A.carnet) INNER JOIN
				CursoProgramado P ON (P.id_curso_programado = A.id_curso_programado) INNER JOIN
				Curso C ON (C.id_curso = P.id_curso) INNER JOIN
				Carrera AS CAR ON CAR.id_carrera = EC.id_carrera INNER JOIN
				Facultad AS F ON F.id_facultad = CAR.id_facultad
			WHERE (@seccion<=0 OR P.seccion = @seccion) AND (@carrera <= 0 or CAR.id_carrera= @carrera) AND (@facultad <= 0 or F.id_facultad = @facultad) AND (@carnet <= 0 or E.carnet = @carnet)
			union all
			(SELECT E.carnet Carnet, CAR.nombre Carrera, F.nombre Facultad, CONCAT( C.Nombre, ' (LAB)') CursosAsignados, LP.seccion Seccion,( CASE A.Estado WHEN 1 THEN 'Asignado' WHEN 0 THEN 'Condicionado' END)
			FROM Carrera CA  INNER JOIN 
				EstudianteCarrera EC ON (EC.id_carrera = CA.id_carrera) INNER JOIN 
				Estudiante E ON (E.carnet = EC.carnet) INNER JOIN 
				LaboratorioAsignado A ON (E.carnet = A.carnet) INNER JOIN
				LaboratorioProgramado LP ON LP.id_laboratorio_programado = A.id_laboratorio_programado INNER JOIN
				CursoProgramado P ON (P.id_curso_programado = LP.id_curso_programado) INNER JOIN
				Curso C ON (C.id_curso = P.id_curso) INNER JOIN
				Carrera AS CAR ON CAR.id_carrera = EC.id_carrera INNER JOIN
				Facultad AS F ON F.id_facultad = CAR.id_facultad
			WHERE (@seccion<=0 OR LP.seccion = @seccion) AND (@carrera <= 0 or CAR.id_carrera= @carrera) AND (@facultad <= 0 or F.id_facultad = @facultad) AND (@carnet <= 0 or E.carnet = @carnet)))
	END
GO

CREATE PROCEDURE SP_ReporteCupos
@curso int, @facultad int, @carrera int, @seccion int 
AS
	BEGIN
		 WITH A AS
		 (
			SELECT CP.id_curso_programado CursoID, C.Nombre Curso, CP.seccion Seccion, CP.cupo Cupo
			FROM CursoProgramado CP  INNER JOIN
			CURSO AS C ON C.id_curso = CP.id_curso INNER JOIN
			Carrera AS CA ON CA.id_carrera = CP.id_carrera INNER JOIN
			Facultad AS F ON F.id_facultad = CA.id_facultad 
			WHERE (@curso<=0 OR CP.id_curso = @curso) AND (@carrera <= 0 or CP.id_carrera= @carrera) AND (@facultad <= 0 or F.id_facultad = @facultad) AND (@seccion <= 0 or CP.seccion = @seccion)
			UNION ALL
			SELECT CP.id_curso_programado CursoID, CONCAT( C.Nombre, ' (LAB)') Curso, LP.seccion Seccion, CP.cupo Cupo
			FROM LaboratorioProgramado LP  INNER JOIN
			CursoProgramado as CP on CP.id_curso_programado = Lp.id_curso_programado inner join
			CURSO AS C ON C.id_curso = CP.id_curso INNER JOIN
			Carrera AS CA ON CA.id_carrera = CP.id_carrera INNER JOIN
			Facultad AS F ON F.id_facultad = CA.id_facultad 
			WHERE (@curso<=0 OR CP.id_curso = @curso) AND (@carrera <= 0 or CP.id_carrera= @carrera) AND (@facultad <= 0 or F.id_facultad = @facultad) AND (@seccion <= 0 or LP.seccion = @seccion)
		) SELECT * FROM A ORDER BY 4
	END
GO