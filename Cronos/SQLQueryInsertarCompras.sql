alter procedure SPInsertar_Compras
	@opcion int,
	@Codigo_Articulo int null,
	@Departamento varchar(50)=null, 
	@Descripcion_Articulo varchar(50) = null,
	@Precio_Articulo varchar(max) = null,
	@Cantidad int = null,
	@Descuento decimal(12,0) =null,
    @subtotal decimal(12,0)=null,
	@IVA decimal(12,0)=null,
	@total_pagar decimal(18,0)=null,
	@Fecha datetime = null,
	@Nombre_Usuario varchar(20)=null
--@Articulo_Comprado varchar(20)= null,
-- esta parate es para el insert en la factura.
--@codigo_informacion int=null,	
---insertar en la informacion de la factura
--@Usuario varchar(50) =null
	as
	declare @usu int
	declare @Nfactura int
	if @opcion = 1
	begin
	select  @usu=Codigo_Usuario from Usuario where Nombre_Usuario=@Nombre_usuario
    insert into Informacion_Factura values(@usu,@Fecha)
    insert into Pago_Factura values(@Codigo_Articulo, @Departamento, @Descripcion_Articulo, convert(money,@Precio_Articulo),@Cantidad,@Descuento,@subtotal,@IVA,@total_pagar)
	end
-----------------------------
alter procedure SPNFACTURA
	@opcion int
	as
	if @opcion=1
	begin
        select Numero_Factura=ISNULL(max(Numero_Factura),0)+1 from Informacion_Factura
	end

---   SELECT @IdProvinciaInsertada= SCOPE_IDENTITY()

   -- select @@IDENTITY Numero_Factura from Informacion_Factura
	--select  @Nfactura=@@IDENTITY from Informacion_Factura
	--select @@IDENTITY =@Nfactura from Informacion_Fcatura
-----------------------------------------
-- este para extraer el campo identity
--select Numero_Factura from Informacion_Factura where Numero_Factura=@@IDENTITY
 --Select Numero_Factura from Informacion_Factura where(Numero_Factura= SCOPE_IDENTITY())
	select * from Articulo
	select * from Usuario
	select * from Departamentos
-------------------------------------------
	select*from Compras
	select *from Pago_Factura
	select * from Informacion_Factura


	delete Informacion_Factura where Usuario=2
	delete Pago_Factura where IVA=13
	DBCC CHECKIDENT (Informacion_Factura, RESEED,0)

-------------------------------------------------
--	select * from Articulo
--alter table Articulo
--add constraint fk_Arti foreign key (Codigo_Compras) references Compras(Codigo)

--alter table Pago_Factura
--add constraint fk_Comparas foreign key (Cod_Articulo) references Compras(Codigo)

--alter table Informacion_Factura
--add constraint fk_info foreign key (Usuario) references Usuario(Codigo_Usuario)

select Descripcion_articulo as Descripcion,Precio_articulo as Precio,imagen as Imagen,nombre_deArticulo as Nombre,Codigo_Articulo as codigo from Articulo where Tipo_Articulo=1

delete  Articulo where Codigo_Articulo=505
--alter table Compras
--add primary key(Codigo,codigo_Articulo)

select Nombre,Apellido,Nombre_Usuario,Tipo,Clave=convert(varchar(max),DECRYPTBYPASSPHRASE('password',Clave)) from Usuario 

insert into Usuario values('Carlos','Lezcano','Montoya','8379223','carlos.lezcano988@gmail.com','cl7',ENCRYPTBYPASSPHRASE('password','123'),'ADMINISTRADOR ')
insert into Usuario values('leonardo','rodriguez','salazar','1787822','leo24@selcamome','tomepichi',ENCRYPTBYPASSPHRASE('password','le0'),'ADMINISTRADOR ')

insert into Usuario values('carlos','lezcano','montoya','111111','carlos@','lezcano00',ENCRYPTBYPASSPHRASE('password','cl10'),'CLIENTE')