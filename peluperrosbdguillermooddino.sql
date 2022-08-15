CREATE DATABASE Pelu_Perros;
use Pelu_Perros;
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
insert into Historial (ID_historial, Fecha, Perro, Descripcion, Monto) values ('00023', '2018-02-01', '10', 'Lavado', '1200')
Select *
From Historial
WHERE Perro = ( SELECT ID_Perro 
		         FROM Perro
                 WHERE ID_perro = '10');