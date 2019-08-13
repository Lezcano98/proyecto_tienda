--create table Usuario( codigo_Usuario int identity(1,1),
--Nombre varchar(20) not null,
--Apellido varchar (20) null,
--Apellido2 varchar (20) null,
--Cedula varchar (9) ,
--Correo varchar(20) not null,
--Nombre_Usuario varchar(20) not null unique,
--Clave varchar (20) not null,
--Tipo int not null
--)

-------------------------
-- este script es para actualizar la tabla usuarios de su columna de cedula a un valor unique para evitar a dos usuarios con el mismo numero de cedula
ALTER TABLE Usuario  
ADD CONSTRAINT AK_cedula UNIQUE (Cedula);   
GO 
--------------------------
alter procedure SPUsuario
	@opcion int, 
	@Nombre varchar(20)= null,
	@Apellido varchar(20)=null, 
	@Apellido2 varchar (20)=null,
	@Cedula varchar(9)= null, 
	@Correo varchar(20)=null,
	@Nombre_Usuario varchar(20)=null,
	@Clave varbinary(800) =null,
	@tipo varchar(20) =null
 
	as

	if @opcion = 1
	begin
	set @Clave= convert(varbinary(800),@Clave)
		insert into Usuario values(@Nombre,@Apellido,@Apellido2,@Cedula,@Correo,@Nombre_Usuario,convert (varbinary(8000),ENCRYPTBYPASSPHRASE('password', @Clave)),@tipo)		
	end

	if @opcion = 2
	begin
		select * from Usuario
	end

	if @opcion = 3
	begin
		delete Usuario where Cedula = @cedula
	end

	if @opcion = 4
	begin
		update Usuario set Nombre = @Nombre,Apellido = @Apellido,Apellido2=@Apellido2,Correo=@Correo,Nombre_Usuario=@Nombre_Usuario,Clave=@Clave,Tipo=@tipo where Cedula =@cedula
	end

--------------------------------------------------------------------------------------------------------------------
alter procedure SPValida
@opcion int,
@Nombre_Usuario varchar(20)=null, 
@Clave varchar(max)=null
as
-- declaracion de variables para almacenar los datos a desencriptar
declare @encriptado as Nvarchar (max)
declare @desencriptado as Nvarchar(max)

if @opcion=1
begin
--- aqui llamamos el valor a desencriptar y lo saginamos a las variables 
select @encriptado=clave from Usuario where Nombre_Usuario=@Nombre_Usuario
set @desencriptado=convert(varchar(max),DECRYPTBYPASSPHRASE('password',@encriptado))

select *from Usuario where Nombre_Usuario=@Nombre_Usuario and @Clave=@desencriptado 
--- este otro select tambien funciona 
--select Nombre,Apellido,Nombre_Usuario,Tipo,Clave=convert(varchar(max),DECRYPTBYPASSPHRASE('password',Clave)) from Usuario where Nombre_Usuario=@Nombre_Usuario and @Clave=@desencriptado
end
--------------------------------------------------------------------------------------------------------------------
delete Usuario where Codigo_Usuario=6
select * from Usuario

---------------------------------------------------------------------------------------------------------------------------------
insert into Usuario values(1,'leonardo','rodriguez','salazar','1787822','leo24@selcamome','tomepichi',ENCRYPTBYPASSPHRASE('password','leo10'),'Administrador')
insert into Usuario values(2,'calor','lezcano','montoya','111111','carlos@','lezcano00',ENCRYPTBYPASSPHRASE('password','cl10'),'Cliente')
insert into Usuario values(4,'keyssi','rivera','de lezcano','33333','key@','key',ENCRYPTBYPASSPHRASE('password','key3'),'Administrador')
insert into Usuario values('Michael','Arroyo','Valenzuela','989780','michael@','mike',ENCRYPTBYPASSPHRASE('password','m88'),'Cliente')
-------------------------------------------------------------------------------------------------------------------
delete Usuario where Codigo_Usuario =2
------------------------------------------------------------------------------------------------------------------------------------