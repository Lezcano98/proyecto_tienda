ALTER TABLE Articulo    
ADD CONSTRAINT fk_Id_Departamentos  FOREIGN KEY (Id_Departamentos) REFERENCES Articulo(Codigo_Articulo)   
select * from Departamentos
select * from Articulo