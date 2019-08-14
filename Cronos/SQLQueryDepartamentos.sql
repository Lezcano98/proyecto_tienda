alter procedure SPDepartamentos
@opcion int,
@Descripcion varchar(50)=null,
@Estado_Departamento int =null
	as
	if @opcion = 1
	begin
		insert into Departamentos values(@Descripcion,@Estado_Departamento)
	end

	if @opcion = 2
	begin
		select * from Departamentos
	end

		if @opcion = 3
	begin
		update Departamentos set Descripcion = @Descripcion,Estado_Departamento = @Estado_Departamento where Estado_Departamento = @Estado_Departamento
	end

	---- cambio en la tabla departamentos para que el campo descripcion sea unico
	ALTER TABLE Departamentos    
ADD CONSTRAINT AK_Departamentos UNIQUE (Descripcion);   
GO 