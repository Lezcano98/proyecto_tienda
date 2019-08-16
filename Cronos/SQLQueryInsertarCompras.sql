alter procedure Insertar_Compras
	@opcion int,
	@Fecha_Compra datetime = null, 
	@Departamento varchar(50)=null, 
	@Articulo_Comprado varchar(20)= null,
	@Descripcion_Articulo varchar(50) = null,
	@Precio money = null,
	@Cantidad int = null,
-- esta parate es para el insert en la factura.
	@codigo_informacion int=null,
	@Codigo_Articulo int null,
	@Descuento decimal(12,0) =null,
    @subtotal decimal(12,0)=null,
	@IVA decimal(12,0)=null,
	--------insertar en la informacion de la factura
	@Usuario varchar(50) =null

	as
	if @opcion = 1
	begin
		insert into Compras values(@Fecha_Compra,@Departamento, @Articulo_Comprado, @Descripcion_Articulo, @Precio,@Cantidad)	
		
		insert into Pago_Factura values(@codigo_informacion,@Codigo_Articulo,@Precio,@Cantidad,@Descuento,@subtotal,@IVA)
		
		insert into Informacion_Factura values(@Usuario,@Fecha_Compra)
	end
	
	select * from Articulo
	select * from Usuario
	select * from Departamentos

alter table Articulo
