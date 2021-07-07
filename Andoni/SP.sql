CREATE PROCEDURE SP_InsertarCarrera
@facultad int, @nombreFacultad VARCHAR (100)
AS
	BEGIN
		DECLARE @Mensaje VARCHAR(200) = 'INSERT INTO Carrera VALUES ('+@facultad+','+ @nombreFacultad+')'
		BEGIN TRY
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
				INSERT INTO Carrera VALUES (@facultad, @nombreFacultad)
			COMMIT TRANSACTION
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


--SP CICLO 
--DROP PROCEDURE SP_NuevoCiclo
CREATE PROCEDURE SP_NuevoCiclo
@facultad VARCHAR(25), @activo BIT 
AS
	BEGIN
		DECLARE @Mensaje VARCHAR(200) = 'INSERT INTO Ciclo VALUES ('+@facultad+','+ CONVERT(VARCHAR, @activo) +')'
		BEGIN TRY
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
				INSERT INTO Ciclo VALUES (@facultad, @activo)
			COMMIT TRANSACTION
			EXEC SP_InsertarBitacora @Mensaje, 1
		END TRY
		BEGIN CATCH
			EXEC SP_InsertarBitacora @Mensaje, 0
			PRINT '¡Ha ocurrido un error al hacer INSERT en Ciclo!'
			PRINT @@ERROR
			PRINT ERROR_MESSAGE()
			ROLLBACK TRANSACTION
		END CATCH
	END
GO


--SP CURSO
--drop procedure SP_NuevoCurso
CREATE PROCEDURE SP_NuevoCurso
@nombre VARCHAR(25), @laboratorio BIT 
AS
	BEGIN
		DECLARE @Mensaje VARCHAR(200) = 'INSERT INTO Ciclo VALUES ('+@nombre+','+ CONVERT(VARCHAR, @laboratorio)+')'
		BEGIN TRY
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
				INSERT INTO Curso VALUES (@nombre, @laboratorio)
			COMMIT TRANSACTION
			EXEC SP_InsertarBitacora @Mensaje, 1
		END TRY
		BEGIN CATCH
			EXEC SP_InsertarBitacora @Mensaje, 0
			PRINT '¡Ha ocurrido un error al hacer INSERT en Curso!'
			PRINT @@ERROR
			PRINT ERROR_MESSAGE()
			ROLLBACK TRANSACTION
		END CATCH
	END
GO
--SP CURSOPROGRAMADO
--drop procedure SP_AgregarCursoProgramado
CREATE PROCEDURE SP_AgregarCursoProgramado
@curso int, @carrera int, @seccion int, @horario int, @ciclo int, @cupo int
AS
	BEGIN
		DECLARE @Mensaje VARCHAR(200) = 'INSERT INTO CursoProgramado VALUES ('+@curso+','+ @carrera+','+ @seccion+','+ @horario+','+ @ciclo+','+ @cupo+')'
		BEGIN TRY
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
				INSERT INTO CursoProgramado VALUES (@curso, @carrera, @seccion, @horario, @ciclo, @cupo)
			COMMIT TRANSACTION
			EXEC SP_InsertarBitacora @Mensaje, 1
		END TRY
		BEGIN CATCH
			EXEC SP_InsertarBitacora @Mensaje, 0
			PRINT '¡Ha ocurrido un error al hacer INSERT en CursoProgramado!'
			PRINT @@ERROR
			PRINT ERROR_MESSAGE()
			ROLLBACK TRANSACTION
		END CATCH
	END
GO
--SP LABORATORIO PROGRAMADO 
CREATE PROCEDURE SP_AgregarLaboratorio
@curso int, @seccion int, @horario int, @ciclo int, @cupo int
AS
	BEGIN
		DECLARE @Mensaje VARCHAR(200) = 'INSERT INTO LaboratorioProgramado VALUES ('+@curso+','+ @seccion+','+ @horario+','+ @ciclo+','+ @cupo+')'
		BEGIN TRY
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
				INSERT INTO LaboratorioProgramado VALUES (@curso, @seccion, @horario, @ciclo, @cupo)
			COMMIT TRANSACTION
			EXEC SP_InsertarBitacora @Mensaje, 1
		END TRY
		BEGIN CATCH
			EXEC SP_InsertarBitacora @Mensaje, 0
			PRINT '¡Ha ocurrido un error al hacer INSERT en LaboratorioProgramado!'
			PRINT @@ERROR
			PRINT ERROR_MESSAGE()
			ROLLBACK TRANSACTION
		END CATCH
	END
GO