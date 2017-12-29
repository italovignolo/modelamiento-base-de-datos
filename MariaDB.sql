#Cómo crear una base de datos con SQL.
#create database moduloocho character set utf8 
#collate utf8_general_ci

#Crear una tabla con columnas.
/*
create table `persona`(
	`id` int(11) NOT NULL,
    `Nombre`varchar(100),
    `Apellido` varchar(100),
    `Edad` int(3)
)*/

#Agregar Clave primaria a la tabla persona. clave primaria es única
alter table `persona`
	add PRIMARY KEY (`id`);
    
#Sentencia para ingresar fila en la tabla persona    
/*INSERT INTO `persona` (id, Nombre, Apellido, Edad)
values (1, "Diego", "Maradona", 20);*/

SELECT *FROM persona 

SELECT *FROM persona where    