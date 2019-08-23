
--TRIGGER DE INSERTAR
alter TRIGGER ARTICULOS_INGRESADOS
ON Articulo
AFTER INSERT

AS

DECLARE @Codigo_Articulo INT
DECLARE @Descripcion_Articulo VARCHAR(max)
DECLARE @Precio_articulo MONEY
DECLARE @nombre_deArticulo VARCHAR(max)
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

alter TRIGGER ARTICULOS_BORRADOS
ON Articulo
AFTER DELETE

AS

DECLARE @Codigo_Articulo INT
DECLARE @Descripcion_Articulo VARCHAR(max)
DECLARE @Precio_articulo MONEY
DECLARE @nombre_deArticulo VARCHAR(max)
DECLARE @Departamento INT

	BEGIN
		SET @Codigo_Articulo = (SELECT Codigo_Articulo FROM deleted)
		SET @Descripcion_Articulo = (SELECT Descripcion_articulo FROM deleted)
		SET @Precio_articulo = (SELECT Precio_articulo FROM deleted)
		SET @nombre_deArticulo = (SELECT nombre_deArticulo FROM deleted)
		SET @Departamento = (SELECT Departamentos FROM deleted)
		INSERT INTO BITACORA VALUES (@Codigo_Articulo, @Descripcion_Articulo, @Precio_articulo, @nombre_deArticulo, @Departamento, GETDATE(), 'BORRADO', 'ARTICULOS')
	END