create table Bitacora
(
consecutivo_Entrada int not null,
Descripcion_Articulo varchar(50) not null,
Precio_Articulo money not null,
nombre_deArticulo varchar not null,
Id_Departamento int not null,
Fecha_Transaccion datetime not null,
Tipo_Transaccion varchar(25) not null,
tabla varchar(50) not null
)


--TRIGGER DE INSERTAR
CREATE TRIGGER ARTICULOS_INGRESADOS
ON Articulo
AFTER INSERT

AS

DECLARE @Codigo_Articulo INT
DECLARE @Descripcion_Articulo VARCHAR
DECLARE @Precio_articulo MONEY
DECLARE @nombre_deArticulo VARCHAR
DECLARE @Departamento INT

	BEGIN
		SET @Codigo_Articulo = (SELECT Codigo_Articulo FROM inserted)
		SET @Descripcion_Articulo = (SELECT Descripcion_articulo FROM inserted)
		SET @Precio_articulo = (SELECT Precio_articulo FROM inserted)
		SET @nombre_deArticulo = (SELECT nombre_deArticulo FROM inserted)
		SET @Departamento = (SELECT Departamentos FROM inserted)
		INSERT INTO BITACORA VALUES (@Codigo_Articulo, @Descripcion_Articulo, @Precio_articulo, @nombre_deArticulo, @Departamento, GETDATE(), 'INSERTADO', 'ARTICULOS')
	END

--CREACION DE TRIGGER BORRAR

CREATE TRIGGER ARTICULOS_BORRADOS
ON Articulo
AFTER DELETE

AS

DECLARE @Codigo_Articulo INT
DECLARE @Descripcion_Articulo VARCHAR
DECLARE @Precio_articulo MONEY
DECLARE @nombre_deArticulo VARCHAR
DECLARE @Departamento INT

	BEGIN
		SET @Codigo_Articulo = (SELECT Codigo_Articulo FROM deleted)
		SET @Descripcion_Articulo = (SELECT Descripcion_articulo FROM deleted)
		SET @Precio_articulo = (SELECT Precio_articulo FROM deleted)
		SET @nombre_deArticulo = (SELECT nombre_deArticulo FROM deleted)
		SET @Departamento = (SELECT Departamentos FROM deleted)
		INSERT INTO BITACORA VALUES (@Codigo_Articulo, @Descripcion_Articulo, @Precio_articulo, @nombre_deArticulo, @Departamento, GETDATE(), 'BORRADO', 'ARTICULOS')
	END