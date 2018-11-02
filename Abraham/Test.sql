SELECT * FROM  Asignacion
SELECT * FROM Carrera
SELECT * FROM Ciclo
SELECT * FROM CuentaCorriente
SELECT * FROM Curso
SELECT * FROM CursoProgramado
SELECT * FROM Estudiante
SELECT * FROM EstudianteCarrera
SELECT * FROM Facultad
SELECT * FROM Horario
SELECT * FROM LaboratorioProgramado
SELECT * FROM Prerrequisito
SELECT * FROM Restriccion
SELECT * FROM CursoAprobado
SELECT * FROM CursoAsignado
select * from LaboratorioAsignado
SELECT * FROM Bitacora


delete from CursoAprobado
delete from CursoAsignado
delete from LaboratorioAsignado
select * from dbo.FN_CursosProgramados(492928)

select * from dbo.FN_MostrarCursoProgramado(492928, 53)

EXEC dbo.SP_AsignarCurso 492928, 23, 3;
