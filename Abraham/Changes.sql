-------- Añadir carnet a cursos programados

IF OBJECT_ID('dbo.CursoProgramado') IS NOT NULL
	BEGIN
		DROP TABLE dbo.Restriccion
		DROP TABLE dbo.CursoProgramado
	END

CREATE TABLE CursoProgramado (
	id_curso_programado		int not null,
	id_curso				int not null,
	id_carrera				int not null,
	seccion					int not null,
	id_horario				int not null, 
	id_ciclo				int not null,
	cupo					int not null default (40)
)
ALTER TABLE CursoProgramado ADD CONSTRAINT [PK_CursoProgramado] PRIMARY KEY (id_curso_programado)
ALTER TABLE CursoProgramado ADD CONSTRAINT [UK_CursoProgramado] UNIQUE (id_curso, seccion)
ALTER TABLE CursoProgramado ADD CONSTRAINT [FK_CursosProgramado_Curso]				FOREIGN KEY (id_curso)		REFERENCES Curso (id_curso)
ALTER TABLE CursoProgramado ADD CONSTRAINT [FK_CursosProgramado_Carrera]			FOREIGN KEY (id_carrera)	REFERENCES Carrera (id_carrera)
ALTER TABLE CursoProgramado ADD CONSTRAINT [FK_CursosProgramado_Horario]			FOREIGN KEY (id_horario)	REFERENCES [Horario](id_horario_hora)
ALTER TABLE CursoProgramado ADD CONSTRAINT [FK_CursosProgramado_Ciclo]				FOREIGN KEY (id_ciclo)		REFERENCES [Ciclo](id_ciclo)

IF OBJECT_ID('dbo.LaboratorioProgramado') IS NOT NULL 
	DROP TABLE dbo.LaboratorioProgramado
CREATE TABLE LaboratorioProgramado(
	id_laboratorio_programado		int	not null,
	id_curso_programado		int not null,
	seccion					int not null,
	id_horario				int not null,
	id_ciclo				int not null,
	cupo					int not null default (20)
)
ALTER TABLE LaboratorioProgramado ADD CONSTRAINT [PK_LaboratorioProgramado]					PRIMARY KEY (id_laboratorio_programado)
ALTER TABLE LaboratorioProgramado ADD CONSTRAINT [UK_LaboratorioProgramado]					UNIQUE (id_curso_programado, seccion, id_ciclo)
ALTER TABLE LaboratorioProgramado ADD CONSTRAINT [FK_LaboratorioProgramado_CursoProgramado]	FOREIGN KEY (id_curso_programado)				REFERENCES CursoProgramado(id_curso_programado)
ALTER TABLE LaboratorioProgramado ADD CONSTRAINT [FK_LaboratorioProgramado_Horario]			FOREIGN KEY (id_horario)						REFERENCES [Horario](id_horario_hora)
ALTER TABLE LaboratorioProgramado ADD CONSTRAINT [FK_LaboratorioProgramado_Ciclo]			FOREIGN KEY (id_ciclo)							REFERENCES [Ciclo](id_ciclo)