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
<<<<<<< Updated upstream
	@opcion int, 
=======
	@opcion int,
>>>>>>> Stashed changes
	@Nombre varchar(20)= null,
	@Apellido varchar(20)=null, 
	@Apellido2 varchar (20)=null,
	@Cedula varchar(9)= null, 
	@Correo varchar(20)=null,
	@Nombre_Usuario varchar(20)=null,
	@Clave varchar(max) =null,
	@tipo varchar(20) =null
 
	as
	if @opcion = 1
	begin
<<<<<<< Updated upstream
		insert into Usuario values(@Nombre,@Apellido,@Apellido2,@Cedula,@Correo,@Nombre_Usuario,CONVERT(varbinary(8000),ENCRYPTBYPASSPHRASE('password',@Clave)),@tipo)		
=======
		insert into Usuario values(@Nombre,@Apellido,@Apellido2,@Cedula,@Correo,@Nombre_Usuario, convert(varchar(20),ENCRYPTBYPASSPHRASE('password', @Clave)),@tipo)
>>>>>>> Stashed changes
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
		update Usuario set Nombre = @Nombre,Apellido = @Apellido,Apellido2=@Apellido2,Correo=@Correo,Nombre_Usuario=@Nombre_Usuario,Clave=CONVERT(varbinary(8000),ENCRYPTBYPASSPHRASE('password',@Clave)),Tipo=@tipo where Cedula =@cedula
	end

--------------------------------------------------------------------------------------------------------------------
alter procedure SPValida
@opcion int,
@Nombre_Usuario varchar(20)=null, 
@Clave varchar(max)=null,
@tipo varchar(20)=null
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
if @opcion=2
begin
select tipo from Usuario
end
--------------------------------------------------------------------------------------------------------------------
delete Usuario where Codigo_Usuario=16
select * from Usuario
------------este update es para cambiar el tipo de minuscula ha mayuscula. debido a que envial estan en mayusculas.
update Usuario set tipo='CLIENTE ' where tipo='Cliente' 
---------------------------------------------------------------------------------------------------------------------------------
<<<<<<< Updated upstream
insert into Usuario values(1,'leonardo','rodriguez','salazar','1787822','leo24@selcamome','tomepichi',ENCRYPTBYPASSPHRASE('password','leo10'),'Administrador')
insert into Usuario values(2,'calor','lezcano','montoya','111111','carlos@','lezcano00',ENCRYPTBYPASSPHRASE('password','cl10'),'Cliente')
insert into Usuario values(4,'keyssi','rivera','de lezcano','33333','key@','key',ENCRYPTBYPASSPHRASE('password','key3'),'Administrador')
<<<<<<< Updated upstream
insert into Usuario values('Michael','Arroyo','Valenzuela','989780','michael@','mike',ENCRYPTBYPASSPHRASE('password','m88'),'Cliente')
=======

=======
insert into Usuario values('leonardo','rodriguez','salazar','1787822','leo24@selcamome','tomepichi',ENCRYPTBYPASSPHRASE('password','le0'),'Administrador')
insert into Usuario values('calor','lezcano','montoya','111111','carlos@','lezcano00',ENCRYPTBYPASSPHRASE('password','cl10'),'Cliente')
>>>>>>> Stashed changes
>>>>>>> Stashed changes
-------------------------------------------------------------------------------------------------------------------

select a.Usuario, a.Fecha, b.Codigo_Articulo as CodigoArticulo, b.Precio_Articulo as PrecioArticulo, b.Cantidad, b.Descuento, b.Subtotal, b.IVA, b.total_pagar as Total from Informacion_Factura a, Pago_Factura b
