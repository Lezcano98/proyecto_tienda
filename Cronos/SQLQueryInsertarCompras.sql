create procedure Insertar_Compras
	@opcion int,
	@Fecha_Compra datetime = null, 
	@Departamento varchar(50), 
	@Articulo_Comprado int = null,
	@Descripcion_Articulo varchar(max) = null,
	@Precio money = null,
	@Cantidad int = null
	
	as
	if @opcion = 1
	begin
		insert into Compras values(@Fecha_Compra,@Departamento, @Articulo_Comprado, @Descripcion_Articulo, @Precio,@Cantidad)
	end

	

	select * from Articulo
	select * from Usuario
	select * from Departamentos