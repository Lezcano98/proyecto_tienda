create  database ELECTRON

create table Usuario( codigo_Usuario int identity(1,1),
Nombre varchar(20) not null,
Apellido varchar (20) null,
Apellido2 varchar (20) null,
Cedula varchar (9) primary key not null,
Correo varchar(20) not null,
Nombre_Usuario varchar(20) not null unique,
Clave varchar (20) not null,
Tipo int not null
)

--CONSTRAINT FK_ALUMNO_NOTAS FOREIGN KEY (ID_Alumno) REFERENCES ALUMNO (ID_Alumno)
---------------------------------------------------------------------
create table Categorias(ID_Categoria int identity (1,1) primary key,
Descripcion varchar(max) null)
----------------------------------------------------------------------
create table Departamentos(
ID_Departamentos int identity (1,1) primary key,
Descripcion varchar(max) null,
ID_Tipo int not null

CONSTRAINT FK_Categorias_Departamentos FOREIGN KEY (ID_Departamentos) REFERENCES  Categorias(ID_Categoria) --Categorias_Departamentos esto lo coloco para saber de que
                                                                                                        -- a que tabla estoy haceindo la referencias
)
-------------------------------------------------------------------------
create table SubDepartamentos(
ID_SubDepartamentos int identity (1,1) primary key,
Descripcion varchar(max) null,
Direccion varchar (max) not null,
ID_Tipo int not null,
ID_Categoria int not null

CONSTRAINT FK_SubDepartamentos_Tipo_Categorias FOREIGN KEY (ID_Tipo) references Tipo (ID_Tipo) 
)
------------------------------------------------------------------------
create table Articulo(
codigo_Articulo int identity (1,1) primary key,
Descripcion_articulo varchar(50) not null,
Precio_articulo int not null,
imagen image not null,
ID_Categoria int not null
)
---------------------------------------------------------------------------
create table Bitacora(
consecutivo_Entrada int identity (1,1) primary key,
Descripcion varchar (50) not null,
fecha date not null,
usuario varchar (20) not null,
Accion_Usuario varchar (MAX) not null
)
--------------------------------------------------------------------------
create table Tipo(ID_Tipo int identity(1,1) primary key,
Descripcion varchar(max) null)
-------------------------------------------------------------------------
create table Informacio_Factura(

Codigo int identity (1,1),
Codigo_Articulo int identity(1,1),
Precio int not null,
Cantidad int not null,
Descuento DECIMAL (12,0) not null,
Subtotal DECIMAL (12,0) not null,
IVA DECIMAL (12,0) not null,
Codigo_Encabezado int not null,
primary key(codigo,Codigo_Articulo)
)
-----------------------------------------------------------------------
create table Pago_Factura(
Codigo int identity (1,1) primary key,
Cliente varchar (20) not null,
Fecha date not null,
Telefono varchar(15) null, 
monto DECIMAL not null
)