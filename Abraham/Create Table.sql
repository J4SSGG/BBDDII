USE PRegistroAcademico
GO

IF OBJECT_ID('dbo.Horario') IS NOT NULL
	DROP TABLE dbo.Horario
CREATE TABLE Horario 
(
	id_horario_hora	int				CONSTRAINT [Horario_Hora_PK]		PRIMARY KEY,
	hora_inicio		time			CONSTRAINT [Horario_HoraInicio_NN]	NOT NULL,
	hora_fin		time			CONSTRAINT [Horario_HoraFin_NN]		NOT NULL,
)
GO

IF OBJECT_ID('dbo.Asignacion') IS NOT NULL
	DROP TABLE dbo.Asignacion
CREATE TABLE dbo.Asignacion
(
	horario_inicio	datetime	CONSTRAINT	[Asignacion_HoraInicio_NN]	NOT NULL,
	horario_final	datetime	CONSTRAINT	[Asignacion_HoraFin_NN]		NOT NULL,
	id_facultad		int			CONSTRAINT	[Asignacion_Facultad_FK]	FOREIGN KEY REFERENCES Facultad (id_facultad),
	id_ciclo		int			CONSTRAINT	[Asignacion_Ciclo_FK]		FOREIGN KEY REFERENCES Ciclo (id_ciclo)
)



IF OBJECT_ID('dbo.EstudianteCarrerra') IS NOT NULL
	DROP TABLE dbo.EstudianteCarrerra
CREATE TABLE dbo.EstudianteCarrerra
(
	carnet			int			CONSTRAINT	[EstudianteCarrera_Carnet_FK] FOREIGN KEY REFERENCES Estudiante (carnet),
	id_carrera		int			CONSTRAINT	[EstudianteCarrera_CarreraID_FK] FOREIGN KEY REFERENCES Carrera (id_carrera)
)

IF OBJECT_ID('dbo.Restriccion') IS NOT NULL
	DROP TABLE dbo.Restriccion
CREATE TABLE dbo.Restriccion
(
	id_curso_programado	int		CONSTRAINT [Restriccion_CursoProgramado_FK]		FOREIGN KEY REFERENCES CursoProgramado (id_curso_programado),
	id_carrera			int		CONSTRAINT [Restriccion_Carrera_FK]				FOREIGN KEY REFERENCES Carrera (id_carrera)	
)