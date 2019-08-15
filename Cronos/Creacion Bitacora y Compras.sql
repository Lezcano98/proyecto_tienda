create table Bitacora
(
consecutivo_Entrada int identity(1,1) primary key,
Usuario varchar (20) not null,
Fecha_Compra date not null,
Articulos_Comprado varchar(50) not null,
Cantidad_Articulo int not null,
Total decimal(5,2),
Fecha_Transaccion date not null
)

create table Compras
(
Codigo int identity(1,1) primary key,
Fecha_Compra date not null,
Departamento varchar(50),
Articulo_Comprado varchar(50),
Precio decimal(5,2) not null
)