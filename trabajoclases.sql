create database italomansilla_db character set utf8
collate utf8_general_ci;

create table `tabla_con_estructura_de_archivo_csv`(
	`N`int(11), 
	`Empresa` varchar(100),
    `2005`int(100), `2006`int(100), `2007`int(100),`2008`int(100), `2009`int(100),
    `2010`int(100), `2011`int(100), `2012`int(100), `2013`int(100),
    `2014`int(100),`2015`int(100)

);

LOAD DATA CONCURRENT LOCAL INFILE 'C:/Users/Insuco/Desktop/tablaempresa.csv'
 INTO TABLE `tabla_con_estructura_de_archivo_csv`
 FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n';
 
 select *from `tabla_con_estructura_de_archivo_csv`;
 
 drop table `tabla_con_estructura_de_archivo_csv`;
 
  #promedio fila
 select sum(`2015`+`2014`)/2 from `tabla_con_estructura_de_archivo_csv` WHERE Empresa ='Nuevo Sur';
 #promedio dos columnas
  select sum(`2015`+`2014`)/2 from `tabla_con_estructura_de_archivo_csv`;
 #promedio una columna
 select AVG(`2015`) as promedio_gasto_2015 from `tabla_con_estructura_de_archivo_csv`;
 
 #que empresa ganó sobre el promedio
 select Empresa from tabla_con_estructura_de_archivo_csv where `2014` >'6.500.000';
 
 #Moda
 SELECT `2005`, COUNT(`2005`)  
 FROM tabla_con_estructura_de_archivo_csv GROUP BY `2005`
 ORDER BY COUNT(`2005`) DESC
 limit 1;

#empresa con más gasto un año
select Empresa , `2015` from `tabla_con_estructura_de_archivo_csv` order by `2015` DESC limit 1;

select *from `tabla_con_estructura_de_archivo_csv`
INTO OUTFILE 
    'C:/Users/Insuco/Desktop/tablaempresa1.csv'#Ruta del archivo
    FIELDS TERMINATED BY ';'
    LINES TERMINATED BY '\n';

