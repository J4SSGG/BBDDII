USE PRegistroAcademico
GO

IF OBJECT_ID('dbo.Horario') IS NOT NULL
	DROP TABLE dbo.Horario
CREATE TABLE Horario 
(
	id_horario_hora	int				CONSTRAINT [Horario_Hora_PK] PRIMARY KEY,
	hora_inicio		time			CONSTRAINT [Horario_HoraInicio_NN] NOT NULL,
	hora_fin		time			CONSTRAINT [Horario_HoraFin_NN] NOT NULL,
)
GO



