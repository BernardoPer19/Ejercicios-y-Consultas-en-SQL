--!/Obtener todos los ejercicios de la tabla ejercicios_gym_tb junto con el grupo muscular al que pertenecen.
SELECT * FROM ejercicios_gym_tb 

SELECT 
e.nombre AS ejercicio,
e.desc AS descripcion,
g.nombre AS grupo_muscular
FROM
ejercicios_gym_tb e
INNER JOIN
grupo_muscular_tb  g
ON g.muscular_id = e.muscular_id

--!Obtener todos los ejercicios de la tabla ejercicios_gym_tb que trabajen el grupo muscular "Pecho" y que tengan una dificultad "Alta".

SELECT 
e.nombre AS nombre,
g.nombre AS musculo,
e.dificultad AS dificultad
FROM
  ejercicios_gym_tb e
INNER JOIN
grupo_muscular_tb  g
ON 
g.muscular_id = e.muscular_id
WHERE 
g.nombre = 'Pecho'
AND e.dificultad = 'Alta';
