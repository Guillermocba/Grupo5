create database peluqueria_canina ;
use peluqueria_canina;

create  table  Dueno
(
DNI int  not null ,
Nombre varchar ( 20 ),
Apellido varchar ( 20 ),
Teléfono int ,
Dirección varchar ( 40 )
);

create  table  Perro
(
ID_Perro int not null  auto_increment,
Nombre varchar ( 20 ),
Fecha_nac date ,
Sexo varchar ( 1 ),
DNI_dueno int  not null ,
foreign key (DNI_dueno) References Dueno (DNI)
);

create  table  Historial
(
ID_Historial int  not null auto_increment,
Fecha date ,
Perro int  not null ,
foreign key (Perro) References Perro (ID_Perro),
Descripcion varchar ( 100 ),
monto int
);

7) Obtener los ingresos percibidos en Julio del 2022


select monto
from historial
where fecha>=01/07/2022 and fecha<=30/07/2022