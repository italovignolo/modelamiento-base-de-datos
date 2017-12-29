#Ejercicio 5 AVG= Promedio
select AVG(Edad) as Promedio_Edad_Personas from persona;

#Ejercicio 13
select CONCAT(Nombre, " ",Apellido) as Nombre_Apellido from persona;

#Ejercicio 18
SELECT *FROM persona WHERE Apellido like "So%"; #Primeras Char
SELECT *FROM persona WHERE Apellido like "%So"; #Últimos Char 
SELECT *FROM persona WHERE Apellido like "%So%"; #Cualquier Parte

/*
AVG(), SUM(), MAX(), MIN(), COUNT(), CONCAT, DISTINC, AND, OR, LIKE, BETWEEN, ORDER BY, LIMIT
*/