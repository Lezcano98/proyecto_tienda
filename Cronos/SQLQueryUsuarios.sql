--create table Usuario( codigo_Usuario int identity(1,1),
--Nombre varchar(20) not null,
--Apellido varchar (20) null,
--Apellido2 varchar (20) null,
--Cedula varchar (9) primary key not null,
--Correo varchar(20) not null,
--Nombre_Usuario varchar(20) not null unique,
--Clave varchar (20) not null,
--Tipo int not null
--)

go
create procedure SPUsuario
@opcion int,
@Nombre varchar(20)=null,
@Apellido varchar(20)=null,
@Apellido2 varchar(20)=null,
@Cedula varchar(9)=null,
@Correo varchar(20)=null,
@Nombre_Usuario varchar(20)=null, 
@Clave varchar(20)=null,
@Tipo varchar(20)=null

as 
if @opcion=1
begin
insert into Usuario values(@Nombre,@Apellido,@Apellido2,@Cedula,@Correo,@Nombre_Usuario,@Clave,@Tipo)
end

if @opcion=2
begin
select *from Usuario
end

if @opcion=3

begin
delete Usuario where Cedula=@Cedula
end

if @opcion=4
begin
update Usuario set Nombre=@Nombre,Apellido=@Apellido,Apellido2=@Apellido2,Correo=@Correo,Nombre_Usuario=@Nombre_Usuario,Clave=@Clave,Tipo=@Tipo where Cedula=@Cedula
end

--if @opcion=5
--begin
-- select * from Usuario where Nombre_Usuario=@Nombre_Usuario and Clave=@Clave
--end


---------------------------------------------------------------------------------------
create procedure SPValida

@opcion int,
@Nombre_Usuario varchar(20)=null, 
@Clave varchar(20)=null

as
if @opcion=1
begin
 select * from Usuario where Nombre_Usuario=@Nombre_Usuario and Clave=@Clave
end