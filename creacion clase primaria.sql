CREATE DATABASE ejercicio_db character set utf8
collate utf8_general_ci;

create table `cat_productos`(
	id_prod varchar(100), nombre_prod varchar(100),
    desc_prod varchar(100), stock_prod varchar(100),
    foto_prod varchar(100), unidad_prod varchar(100),
    precio_compra_prod double, precio_venta_prod double,
    existencias_prod double, id_categoria_prod integer (100),
    id_proveedor integer(100)
    

); 



alter table `cat_productos` add primary key (id_prod);

create table `cat_categorias`(
	id_categoria_prod int(100), 
    nom_categoria_prod varchar(100),
    desc_categoría_prod varchar(100)
);

alter table `cat_categorias` add primary key(id_categoria_prod);

create table `cat_proveedores`(
	id_proveedor int(100), nom_proveedor varchar(100),
    dir_proveedor varchar(100), telefono_proveedor varchar(100),
    email_proveedor varchar(100), contacto_proveedor varchar(100)
);

alter table `cat_proveedores` add primary key(id_proveedor);

ALTER TABLE cat_productos ADD CONSTRAINT/*restricción ENTRE AMBAS TABLAS*/
 relacion_prod_categoria FOREIGN KEY (id_categoria_prod)#LLAVE FORÁNEA
 references cat_categorias(id_categoria_prod);
 
 alter table cat_productos add constraint relacion_prod_proveedores
 foreign key (id_proveedor) references cat_proveedores(id_proveedor);
 
 create table `detalle_venta`(
	id_detalle_venta int(100), id_venta integer(100),
    id_prod varchar(100), cantidad_vendida double
 );
 
 alter table detalle_venta add primary key(id_detalle_venta); 
 
 create table `ventas`(
	id_venta int(100),
    modo_venta double,
    fecha_venta double
 );
 
 alter table ventas add primary key(id_venta);
 
 alter table detalle_venta add constraint relacion_venta_prod
 foreign key (id_prod) references cat_productos(id_prod);
 
 alter table detalle_venta add constraint relacion_venta_detalle
 foreign key (id_venta) references ventas(id_venta);