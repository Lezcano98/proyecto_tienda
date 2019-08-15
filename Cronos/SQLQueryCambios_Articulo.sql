select * from Articulo
select * from Departamentos

delete Articulo where Departamentos = 1
delete Departamentos where Id_Departamentos = 1

insert into Departamentos values ('consola',1)
insert into Departamentos values ('video juego',2)

insert into Articulo values ('viedo juego',800,'','carlos es gay',2,2)
insert into Articulo values ('consola',1000,'','atari',1,1)
insert into Articulo values ('Consola',1200,'','xbox one',1,1)
insert into Articulo values ('Consola',800,'','atari',1,3)

alter table Articulo
add constraint fk_Id_Departamentos foreign key (Departamentos) references Departamentos(Id_Departamentos)
DBCC CHECKIDENT (Departamentos, RESEED,0)

alter table Articulo
add Primary key (Departamentos)


create table Articulo
(
Codigo_Articulo int identity (1,1),
Descripcion_articulo varchar(max) not null,
Precio_articulo int not null,
imagen image not null,
nombre_deArticulo varchar(max),
Tipo_Articulo int not null,
Departamentos int not null,
Primary key (Codigo_Articulo, Departamentos)
)