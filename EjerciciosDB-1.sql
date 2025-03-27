--![x]/Obtener todos los ejercicios de la tabla ejercicios_gym_tb junto con el grupo muscular al que pertenecen.
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

--![x]!Obtener todos los ejercicios de la tabla ejercicios_gym_tb que trabajen el grupo muscular "Pecho" y que tengan una dificultad "Alta".

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
SELECT * FROM public.ejercicios_cardio_tb
ORDER BY id_cardio ASC 



SELECT 
g.nombre AS nombre ,
e.nombre AS ejercicio_cardio
FROM  
ejercicios_cardio_tb e
INNER JOIN 
grupo_muscular_tb g 
ON 
e.muscular_id = g.muscular_id;

SELECT	
d.nombre as nombre_ejercicio_cardio,
g.nombre as nombre_grupoMuscular,
d.dificultad as dificultad_ejercicio
FROM
ejercicios_cardio_tb d
INNER JOIN 
grupo_muscular_tb g
ON
g.muscular_id = d.id_cardio
WHERE d.dificultad = 'Moderado';


--![x]Obtener todos los ejercicios de la tabla ejercicios_cardio_tb que tengan una duración superior a 30 minutos.

SELECT 
nombre,
duracion
FROM
ejercicios_cardio_tb
WHERE duracion > 30

--![x]Obtener una lista de todos los ejercicios de la tabla ejercicios_gym_tb que tengan una dificultad "Media" y que trabajen el grupo muscular "Espalda"

SELECT
n.nombre,
d.dificultad
FROM
ejercicios_gym_tb d
INNER JOIN
grupo_muscular_tb n
ON
n.muscular_id = d.id
WHERE d.dificultad = 'Media'
