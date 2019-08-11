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
alter procedure SPUsuario
	@opcion int, 
	@Codigo_Usuario int =null,
	@Nombre varchar(20)= null,
	@Apellido varchar(20)=null, 
	@Apellido2 varchar (20)=null,
	@Cedula varchar(9)= null, 
	@Correo varchar(20) =null,
	@Nombre_Usuario varchar(20)=null,
	@Clave varbinary(8000)= null,
	@tipo varchar(20) =null

	as
	if @opcion = 1
	begin
		insert into Usuario values(@Codigo_Usuario,@Nombre,@Apellido,@Apellido2,@Cedula,@Correo,@Nombre_Usuario, ENCRYPTBYPASSPHRASE('password', @Clave),@tipo)
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
if @opcion=1
begin
 select *from Usuario where Nombre_Usuario=@Nombre_Usuario and Clave=convert(varchar(max),DECRYPTBYPASSPHRASE('password',@Clave))
end
-- select Nombre,Apellido,Nombre_Usuario,Tipo,Clave=convert(varchar(max),DECRYPTBYPASSPHRASE('password',Clave)) from Usuario where Nombre_Usuario=@Nombre_Usuario and clave=@clave
select * from Usuario
---------------------------------------------------------------------------------------------------------------------------------
insert into Usuario values(1,'leonardo','rodriguez','salazar','1787822','leo24@selcamome','tomepichi',ENCRYPTBYPASSPHRASE('password','le0'),'Administrador')
insert into Usuario values(2,'calor','lezcano','montoya','111111','carlos@','lezcano00',ENCRYPTBYPASSPHRASE('password','cl10'),'Cliente')
-------------------------------------------------------------------------------------------------------------------
