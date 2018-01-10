create database ejdb character set utf8
collate utf8_general_ci;

drop database ejdb;
create table `proveedor`(
	`id_prov`int(11), `Nombre`varchar(100), `Direccion`varchar(100), `Ciudad`varchar(100) 
); 

alter table `proveedor`
	add PRIMARY KEY (`id_prov`);
    
create table `pieza`(
	`id_pieza`int(11), `Nombre`varchar(100), `Color`varchar(100), `id_cat`int(11) 
);  

 alter table `pieza`
	add PRIMARY KEY (`id_pieza`); 
    
 create table `suministro`(
 `Id_sum`int(11),`Id_prov`int(11), `Id_pieza`int(11), `Cantidad`int(11) 
 );  
 
 ALTER TABLE suministro
    CHANGE COLUMN `Id_sum` `id_sum` int(11), 
    change column `Id_prov` `id_prov`int(11),
    change column `Id_pieza` `id_pieza`int(11),
    change column `Cantidad` `cantidad`int(11);
 
 ALTER TABLE suministro ADD CONSTRAINT
 relacion_prov_sum FOREIGN KEY (Id_prov)
 references proveedor(id_prov);
 
 ALTER TABLE suministro ADD CONSTRAINT 
 relacion_pie_sum FOREIGN KEY (id_pieza)
 REFERENCES pieza(id_pieza);
 
 create table `categoria`(
 `id_cat`int(11), `categoria`varchar(100), `precio`double
 );
 
 alter table categoria add primary key (id_cat);
 
 ALTER TABLE pieza ADD CONSTRAINT 
 relacion_pieza_cat FOREIGN KEY (id_cat)
 REFERENCES categoria(id_cat);
 
