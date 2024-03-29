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
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) values ('28655444', 'Adalmacio', 'Tronchatoro', '15544466', 'Av Siempreviva 255');
insert into Perro values ( '0001', 'Ayudante de Santa', '2018-01-01', 'Macho', '28655444');

-- Actualice la fecha de nacimiento de algún animal (perro) que usted considere.
update Perro set Fecha_nac= '2018-02-01' where ID_perro ='0001';


