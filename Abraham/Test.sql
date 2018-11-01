SELECT * FROM EstudianteCarrerra
SELECT * FROM Carrera
SELECT * FROM Curso


-- ASOCIAR TODOS LOS ESTUDIANTES CON LA FACULTAD DE SU CARRERA Y ORDENAR POR FACULTAD
SELECT E.*, F.Nombre Facultad, C.Nombre Carrera
FROM	Estudiante AS e INNER JOIN
		EstudianteCarrerra AS EC ON E.carnet = EC.carnet inner join
		Carrera AS c ON C.id_carrera = EC.id_carrera inner join
		Facultad as F on C.id_facultad = F.id_facultad
		ORDER BY 4

