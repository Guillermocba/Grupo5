create database peluqueria_canina;

use peluqueria_canina;

CREATE TABLE dueno
(
Iddueno int,
DNI int,
Nombre varchar(80) not null,
Apellido varchar(80) not null,
Telefono int(50),
Direccion varchar(80)
constraint pk_cd primary key (DNI)
);

CREATE TABLE Perro
(
ID_Perro int.
Nombre varchar(45) not null,
Fecha_nac datetime,
Sexo varchar(50) not null,
DNI int,
constraint pk_cp primary key (ID_perro),
constraint fk_fd foreign key (Dni_dueno) references dueno(DNI)   
);

CREATE TABLE Historial
(
ID_Historial int,
Fecha date,
Perro int,
Descripcion varchar(200),
Monto int,
constraint pk_ch primary key (ID_historial),
constraint fk_fp foreign key (Perro) references Perro (ID_perro)
);
 --Obtener todos los perros que asistieron a la peluquería en 2022--
 SELECT * FROM Historial where fecha=2022;






