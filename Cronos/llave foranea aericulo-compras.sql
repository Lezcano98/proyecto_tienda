alter table Compras
add CONSTRAINT FK_Articulo_Comprado FOREIGN KEY (Articulo_Comprado) REFERENCES  Articulo(Codigo_Articulo)

alter table Pago_Factura
add CONSTRAINT FK_Codigo_Articulo FOREIGN KEY (Codigo_Articulo) REFERENCES  Compras(Codigo)