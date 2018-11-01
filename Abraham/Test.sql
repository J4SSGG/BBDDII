SELECT * FROM  Asignacion
SELECT * FROM Carrera
SELECT * FROM Ciclo
SELECT * FROM CuentaCorriente
SELECT * FROM Curso
SELECT * FROM CursoProgramado
SELECT * FROM Estudiante
SELECT * FROM Estudiante
SELECT * FROM Facultad
SELECT * FROM Horario
SELECT * FROM LaboratorioProgramado
SELECT * FROM Prerrequisito
SELECT * FROM Restriccion

-- ASOCIAR TODOS LOS ESTUDIANTES CON LA FACULTAD DE SU CARRERA Y ORDENAR POR FACULTAD
SELECT E.*, F.Nombre Facultad, C.Nombre Carrera
FROM	Estudiante AS e INNER JOIN
		EstudianteCarrerra AS EC ON E.carnet = EC.carnet inner join
		Carrera AS c ON C.id_carrera = EC.id_carrera inner join
		Facultad as F on C.id_facultad = F.id_facultad
		ORDER BY 4

SELECT C.id_curso, C.Nombre Curso, CR.id_curso, CR.Nombre Prerrequisito
FROM
	CURSO AS C INNER JOIN
	Prerrequisito AS p ON p.id_curso = C.id_curso inner join
	Curso as CR on p.id_curso_prerrequisito = CR.id_curso

