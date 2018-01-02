/* Nueva Materia (SQL sobre 1 tabla)
1) Cambiar el nombre a una Columna
2) Cambiar el nombre de una tabla.
3) Datos tipo fecha y fecha hora.
4) Descargar una consulta SELECT a un archivo CSV
5) Cargar archivo CSV a una tabla.
6) Actividad:
*/
# Cambiar el nombre a una Columna de una tabla.
ALTER TABLE persona
    CHANGE COLUMN `pais` `Pais` varchar(100) null;
# Cambiar el nombre de una Tabla
RENAME TABLE persona to personas;
RENAME TABLE personas to persona;
select *from persona;

# Datos tipo fecha y fecha hora.
ALTER TABLE persona
    ADD COLUMN fecha_nacimiento date not null;
    #Y-mm-dd -> AÑO - MES - DÍA
    #Ejemplo 2017-12-29
#AÑADIR UNA COLUMNA QUE REGISTRE EL ÚLTIMO INGRESO
#DEL USUARIO.

ALTER TABLE persona
    ADD COLUMN ultimo_ingreso datetime not null;

#Descargar DATA de tabla en archivo formato csv.
select *from persona
INTO OUTFILE 
    '/home/felipeacj/Escritorio/DataPersona/data_persona.csv'#Ruta del archivo
    FIELDS TERMINATED BY ','
    LINES TERMINATED BY '\n';