CREATE DATABASE veterinaria;
use veterinaria;

CREATE TABLE Dueno
(
DNI int,
Nombre varchar (50),
Apellido varchar (50),
Telefono int,
Direccion varchar (100),
constraint pk_cd primary key (DNI)
);


CREATE TABLE Perro
(
ID_perro int,
Nombre varchar(50),
Fecha_nac datetime,
Sexo varchar(50),
DNI_dueno int,
constraint pk_cp primary key (ID_perro),
constraint fk_fd foreign key (DNI_dueno) references Dueno (DNI)
);

CREATE TABLE Historial 
(
ID_historial int,
Fecha date,
Perro int,
Descripcion varchar(200),
Monto int,
constraint pk_ch primary key (ID_historial),
constraint fk_fp foreign key (Perro) references Perro (ID_perro)
);

-- Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.--
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) values ('21212431', 'Maria', 'Ghezzi', '154554566', 'Av 25 de mayo 10');
insert into Perro values ( '0001', 'pulga', '2016-01-01', 'Macho', '21212431');

-- Borre un animal que ya no va a ser atendido. Para ello consulte antes en el historial, algún animal que ya no sea atendido desde hace mucho tiempo..
insert into Historial (ID Historial, Fecha, Perro, Descripcion, Monto,) values ('0001','10-02-2019','1','baño','2000')

select * from Historial
select perro

delete from Historial where Fecha> '01-01-2022'



