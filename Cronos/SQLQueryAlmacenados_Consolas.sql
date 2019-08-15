alter procedure Articulos
	@opcion int,
	@Codigo_Articulo int = null,
	@Descripcion_articulo varchar(max) = null, 
	@Precio_articulo int, 
	@imagen image = null,
	@nombre_deArticulo varchar(20) = null,
	@Tipo_Articulo int =null,
	@Id_Departamentos int=null
	
	as
	if @opcion = 1
	begin
		insert into Articulo values(@Codigo_Articulo,@Descripcion_articulo, @Precio_articulo, @imagen, @nombre_deArticulo,@Tipo_Articulo,@Id_Departamentos)
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
		update Articulo set Descripcion_articulo = @Descripcion_articulo, Precio_articulo = @Precio_articulo, imagen = @imagen, nombre_deArticulo = @nombre_deArticulo,Tipo_Articulo=@Tipo_Articulo,Id_Departamentos=@Id_Departamentos where Codigo_Articulo = @Codigo_Articulo
	end

	select * from Articulo
	select * from Usuario
	select * from Departamentos

	delete Articulo where Codigo_Articulo=1
	delete Usuario where Codigo_Usuario=17
	delete Departamentos  
	update Articulo set Tipo_Articulo=1
	--- inserciones manuales a la tabla departamentos
	insert into Departamentos values('Consola',1)
	insert into Departamentos values('Video Jugeo',1)
----codigo para reiniciar un campo identity en una tabla.
DBCC CHECKIDENT (Departamentos, RESEED,0)