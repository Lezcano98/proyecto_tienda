alter procedure Insertar_Compras
	@opcion int,
	@Fecha_Compra datetime = null, 
	@Departamento varchar(50)=null, 
	@Articulo_Comprado varchar(20)= null,
	@Descripcion_Articulo varchar(50) = null,
	@Precio varchar(max) = null,
	@Cantidad int = null,
-- esta parate es para el insert en la factura.
	--@codigo_informacion int=null,
	@Codigo_Articulo int null,
	@Descuento decimal(12,0) =null,
    @subtotal decimal(12,0)=null,
	@IVA decimal(12,0)=null,
	@totla_pagra decimal(18,0)=null,
	--------insertar en la informacion de la factura
	@Usuario varchar(50) =null

	as
	if @opcion = 1
	begin
		insert into Compras values(@Fecha_Compra,@Departamento, @Articulo_Comprado, @Descripcion_Articulo,convert(money,@Precio),@Cantidad,@Codigo_Articulo)	
		
		insert into Pago_Factura values(@Codigo_Articulo,convert(money,@Precio),@Cantidad,@Descuento,@subtotal,@IVA,@totla_pagra)
		
		insert into Informacion_Factura values(@Usuario,@Fecha_Compra)
	end
	
	select * from Articulo
	select * from Usuario
	select * from Departamentos
-------------------------------------------
	select*from Compras
	select *from Pago_Factura
	select * from Informacion_Factura


	delete Informacion_Factura where Usuario='keyssi rivera'
	DBCC CHECKIDENT (Informacion_Factura, RESEED,0)

-------------------------------------------------
	select * from Articulo
alter table Articulo
add constraint fk_Arti foreign key (Codigo_Compras) references Compras(Codigo)

alter table Pago_Factura
add constraint fk_Comparas foreign key (Cod_Articulo) references Compras(Codigo)

alter table Informacion_Factura
add constraint fk_info foreign key (Usuario) references Usuario(Codigo_Usuario)

select Descripcion_articulo as Descripcion,Precio_articulo as Precio,imagen as Imagen,nombre_deArticulo as Nombre,Codigo_Articulo as codigo from Articulo where Tipo_Articulo=1

delete  Articulo where Codigo_Articulo=505
--alter table Compras
--add primary key(Codigo,codigo_Articulo)

select Nombre,Apellido,Nombre_Usuario,Tipo,Clave=convert(varchar(max),DECRYPTBYPASSPHRASE('password',Clave)) from Usuario 