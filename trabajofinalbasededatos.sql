create database trabajofinal1;

use trabajofinal1;

create table Dueno(
DNI int not null primary key,
Nombre varchar(80)not null,
Apellido varchar(80)not null,
Telefono int(50),
Direccion varchar(80)
);

create table Perro(
ID_Perro int not null primary key,
Nombre varchar(80)not null,
Fecha_nac varchar(50)not null,
Sexo varchar(50)not null,
DNI_Dueno int references Dueno(DNI)
);

create table Historial(
ID_Historial int not null primary key,
Fecha int(80),
ID_Perro int references Perro (ID_Perro),
Descripcion varchar(150),
Monto int(50)not null
);
-- Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) values ("18244487", "juan", "perez", "4311641", "Belgrano202");
insert into Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_Dueno) values ("001", "Snow", "1/4/2013", "Masculino", "18244487");
-- Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.

select * from Dueno;
select * from Perro;

-- 9 Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123

update Dueno set Direccion= "Libertad 123" where DNI="18244487";
