select * from Articulo 
select * from Departamentos
select * from Informacion_Factura
select * from Pago_Factura
select * from Usuario

delete articulo where Codigo_Articulo = 8008
delete Informacion_Factura where Numero_Factura = 0

DBCC CHECKIDENT (Pago_Factura, RESEED,0)

delete Informacion_Factura where Usuario=11



select d.Factura, c.Fecha, e.Nombre_Usuario as [Usuario que compra], a.Nombre_deArticulo as Articulo, d.Departamento, d.Descripcion_Articulo as Descripcion, d.Precio_Articulo as Precio, d.Cantidad, d.Descuento, d.Subtotal, d.IVA, d.total_pagar as[Total a Cancelar] from Pago_Factura d, Informacion_Factura c, Articulo a, Usuario e
where c.Numero_Factura=d.Factura
and a.Codigo_Articulo=d.Codigo_Articulo
and e.Codigo_Usuario=c.Usuario

select * from Usuario
----------------- este proceso almacenado es para hacer el filtro de factura con el dropdowlist
create procedure SPBusquedaFactura
@opcion int,
@Codigo_usuario int
as
if @opcion=1
begin
select d.Factura, c.Fecha, e.Nombre_Usuario as [Usuario que compra], a.Nombre_deArticulo as Articulo, d.Departamento, d.Descripcion_Articulo as Descripcion, d.Precio_Articulo as Precio, d.Cantidad, d.Descuento, d.Subtotal, d.IVA, d.total_pagar as[Total a Cancelar] from Pago_Factura d, Informacion_Factura c, Articulo a, Usuario e
where c.Numero_Factura=d.Factura
and a.Codigo_Articulo=d.Codigo_Articulo
and e.Codigo_Usuario=@Codigo_usuario
end
----------------------------------------------------------------------------------------------------------
-- para limpiar toda la base de datos;
select *from Articulo
select * from Compras
select * from Bitacora
select * from Departamentos
select * from Informacion_Factura
select * from Pago_Factura
select * from Usuario

delete Informacion_Factura where Usuario=1
delete Pago_Factura where Factura=3
delete Usuario where Codigo_Usuario=1
delete Articulo where Codigo_Articulo=9002
delete Departamentos where Estado_Departamento=1
delete Bitacora where Id_Departamento=1

DBCC CHECKIDENT (Pago_Factura, RESEED,0)

--------------------------------------------------------------------------------------------------------
--insertar valores
 insert into Usuario values ('Carlos','Lezcano','Montoya','282993','carlos.lezcano988@gmail.com','lezcano',ENCRYPTBYPASSPHRASE('password','123'),'ADMINISTRADOR')
