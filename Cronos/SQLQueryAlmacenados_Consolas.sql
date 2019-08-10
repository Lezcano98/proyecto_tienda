alter procedure Consolas
	@opcion int,
	@Codigo_Articulo int = null,
	@Descripcion_articulo varchar(max) = null, 
	@Precio_articulo int, 
	@imagen image = null,
	@nombre_deArticulo varchar(20) = null
	
	as
	if @opcion = 1
	begin
		insert into Articulo values(@Codigo_Articulo,@Descripcion_articulo, @Precio_articulo, @imagen, @nombre_deArticulo)
	end

	if @opcion = 2
	begin
		select * from Articulo
	end

	if @opcion = 3
	begin
		delete Articulo where Codigo_Articulo = @Codigo_Articulo
	end

	if @opcion = 4
	begin
		update Articulo set Descripcion_articulo = @Descripcion_articulo, Precio_articulo = @Precio_articulo, imagen = @imagen, nombre_deArticulo = @nombre_deArticulo where Codigo_Articulo = @Codigo_Articulo
	end

	select * from Articulo