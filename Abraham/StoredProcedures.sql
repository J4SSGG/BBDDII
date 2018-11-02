-- Insertar en Bitácora
USE PRegistroAcademico
GO
CREATE PROCEDURE SP_InsertarBitacora
@Mensaje VARCHAR(1000), @EstadoCompletado BIT
AS
	BEGIN
		BEGIN TRY
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
			---
				INSERT INTO Bitacora ([DESCRIPCION],[COMPLETADA]) VALUES (@Mensaje, @EstadoCompletado)
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
			EXEC SP_InsertarBitacora @Mensaje, 1
		END TRY
		BEGIN CATCH
			EXEC SP_InsertarBitacora @Mensaje, 0
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
CREATE PROCEDURE SP_InsertarEstudianteCarrera
@Carnet INT, @CarreraID INT
AS
	BEGIN
		DECLARE @Mensaje VARCHAR(200) = 'INSERT INTO EstudianteCarrera VALUES (' + @Carnet +', '+ @CarreraID + ')'
		BEGIN TRY
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
			---
				INSERT INTO EstudianteCarrera ([CARNET], [ID_CARRERA]) VALUES (@Carnet, @CarreraID)
			---
			COMMIT TRANSACTION
			-- Guardar en la Bitacora
			EXEC SP_InsertarBitacora @Mensaje, 1
		END TRY
		BEGIN CATCH
			EXEC SP_InsertarBitacora @Mensaje, 0
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
CREATE PROCEDURE SP_InsertarFacultad
@FacultadID INT, @Nombre INT
AS
	BEGIN
		DECLARE @Mensaje VARCHAR(200) = 'INSERT INTO Facultad VALUES (' + @FacultadID +', '+ @Nombre + ')'
		BEGIN TRY
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
			---
				INSERT INTO Facultad ([ID_FACULTAD], [NOMBRE]) VALUES (@FacultadID, @Nombre)
			---
			COMMIT TRANSACTION
			-- Guardar en la Bitacora
			EXEC SP_InsertarBitacora @Mensaje, 1
		END TRY
		BEGIN CATCH
			EXEC SP_InsertarBitacora @Mensaje, 0
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
			EXEC SP_InsertarBitacora @Mensaje, 1
		END TRY
		BEGIN CATCH
			EXEC SP_InsertarBitacora @Mensaje, 0
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
CREATE PROCEDURE SP_InsertarPrerrequisito
@Curso INT, @CursoPrerrequisito INT
AS
	BEGIN
		DECLARE @Mensaje VARCHAR(200) = 'INSERT INTO Prerrequisito VALUES (' + @Curso +', '+ @CursoPrerrequisito + ')'
		BEGIN TRY
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
			---
				INSERT INTO Prerrequisito ([ID_CURSO], [ID_CURSO_PRERREQUISITO]) VALUES (@Curso, @CursoPrerrequisito)
			---
			COMMIT TRANSACTION
			-- Guardar en la Bitacora
			EXEC SP_InsertarBitacora @Mensaje, 1
		END TRY
		BEGIN CATCH
			EXEC SP_InsertarBitacora @Mensaje, 0
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
CREATE PROCEDURE SP_InsertarRestriccion
@CursoProgramadoID INT, @CarreraID INT
AS
	BEGIN
		DECLARE @Mensaje VARCHAR(200) = 'INSERT INTO Restriccion VALUES (' + @CursoProgramadoID +', '+ @CarreraID + ')'
		BEGIN TRY
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
			---
				INSERT INTO Restriccion ([ID_CURSO_PROGRAMADO], [ID_CARRERA]) VALUES (@CursoProgramadoID, @CarreraID)
			---
			COMMIT TRANSACTION
			-- Guardar en la Bitacora
			EXEC SP_InsertarBitacora @Mensaje, 1
		END TRY
		BEGIN CATCH
			EXEC SP_InsertarBitacora @Mensaje, 0
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
			IF (@CursoProgramadoID IS NULL) OR (@Carnet IS NULL) OR (@CursoProgramadoLabID IS NULL)
			BEGIN
				PRINT 'Error: No se han definido todos los parametros requeridos!'
				COMMIT TRANSACTION
				RETURN
			END
			BEGIN TRANSACTION
			IF ((SELECT dbo.FN_TieneLaboratorio(@CursoProgramadoID)) = 1) AND (@CursoProgramadoLabID IS NULL)
			BEGIN
				PRINT 'Error: No se ha definido la sección de Laboratorio para el curso elegido!'
				COMMIT TRANSACTION
				RETURN
			END
		
			IF ((SELECT dbo.FN_FacultadHorarioVIP(@Carnet)) = 0)
				BEGIN
					PRINT 'Error: No puede asignarse fuera del horario VIP para su Facultad!'
					COMMIT TRANSACTION
					RETURN
				END
		
			IF ((SELECT mora FROM CuentaCorriente WHERE carnet = @Carnet) = 1)
				BEGIN
					PRINT 'Error: No puede asignarse ningún curso si su saldo tiene mora!'
					COMMIT TRANSACTION
					RETURN
				END
		
			DECLARE @Cupos INT = (SELECT cupo FROM CursoProgramado WHERE id_curso_programado = @CursoProgramadoID)
			IF (@Cupos = 0)
				BEGIN
					PRINT 'Error: El curso no tiene cupos libres!'
					COMMIT TRANSACTION
					RETURN
				END
			SET @Cupos = (SELECT cupo FROM LaboratorioProgramado WHERE id_curso_programado = @CursoProgramadoLabID)
			IF (@Cupos = 0) AND  ((SELECT dbo.FN_TieneLaboratorio(@CursoProgramadoID)) = 1)
				BEGIN
					PRINT 'Error: El laboratorio no tiene cupos libres!'
					COMMIT TRANSACTION
					RETURN
				END

			DECLARE @HorarioCurso INT = (SELECT id_horario FROM CursoProgramado WHERE id_curso_programado = @CursoProgramadoID)
			IF (@HorarioCurso IS NOT NULL) AND (@HorarioCurso IN (SELECT * FROM dbo.FN_HorariosOcupados(@Carnet)))
				BEGIN
					PRINT 'Error: El horario de este curso se traslapa con otro de sus horarios!'
					COMMIT TRANSACTION
					RETURN
				END

			SET @HorarioCurso = (SELECT id_horario FROM CursoProgramado WHERE id_curso_programado = @CursoProgramadoLabID) --- EVALUAR HORARIO LABORATORIO
			IF (@HorarioCurso IS NOT NULL) AND (@HorarioCurso IN (SELECT * FROM dbo.FN_HorariosOcupadosLab(@Carnet))) AND ((SELECT dbo.FN_TieneLaboratorio(@CursoProgramadoID)) = 1)
				BEGIN
					PRINT 'Error: El horario de este laboratorio se traslapa con otro de sus horarios!'
					RETURN
				END
			-- ASIGNAR
		
			INSERT INTO CursoAsignado VALUES (@Carnet, @CursoProgramadoID, (SELECT dbo.FN_CumplePrerrequisitos(@Carnet, 13)))
			IF ((SELECT dbo.FN_TieneLaboratorio(@CursoProgramadoID)) = 1)
				INSERT INTO LaboratorioAsignado VALUES (@Carnet, @CursoProgramadoLabID, (SELECT dbo.FN_CumplePrerrequisitos(@Carnet, 13)))
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




-- Desasignar Curso
EXEC dbo.SP_DesasignarCurso 492928, 23, 3
drop PROCEDURE SP_DesasignarCurso
GO
CREATE PROCEDURE SP_DesasignarCurso
@Carnet INT, @CursoProgramadoID INT, @CursoProgramadoLabID INT
AS
BEGIN
		BEGIN TRY
			BEGIN TRANSACTION
			IF (@CursoProgramadoID IS NULL) OR (@Carnet IS NULL)
			BEGIN
				PRINT 'Error: No se han definido todos los parametros requeridos!'
				COMMIT TRANSACTION
				RETURN
			END
			IF ((SELECT dbo.FN_TieneLaboratorio(@CursoProgramadoID)) = 1) AND (@CursoProgramadoLabID IS NULL)
			BEGIN
				PRINT 'Error: No se ha definido la sección de Laboratorio para el curso elegido!'
				COMMIT TRANSACTION
				RETURN
			END

			IF (SELECT carnet FROM CursoAsignado WHERE id_curso_programado = @CursoProgramadoID AND @Carnet = carnet ) IS NULL
			BEGIN
				PRINT 'Error: Este estudiante no tiene asignado el curso ingresado!'
				COMMIT TRANSACTION
				RETURN
			END

			IF (SELECT carnet FROM LaboratorioAsignado WHERE id_laboratorio_programado = @CursoProgramadoID AND @Carnet = carnet ) IS NULL
			BEGIN
				PRINT 'Error: Este estudiante no tiene asignado el laboratorio ingresado!'
				COMMIT TRANSACTION
				RETURN
			END

			-- Desasignar
		
			
			DELETE FROM CursoAsignado WHERE @Carnet = carnet AND @CursoProgramadoID = id_curso_programado
			IF ((SELECT dbo.FN_TieneLaboratorio(@CursoProgramadoID)) = 1)
				DELETE FROM LaboratorioAsignado WHERE @Carnet = carnet AND @CursoProgramadoLabID = id_laboratorio_programado
				UPDATE LaboratorioProgramado SET cupo = (SELECT CUPO FROM LaboratorioProgramado WHERE @CursoProgramadoLabID = id_laboratorio_programado) +1 WHERE @CursoProgramadoLabID = id_laboratorio_programado
		
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
