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
