create database peluqueriaCanina;
use peluqueriaCanina;

create table dueno (
dni int not null,
nombre varchar(20) not null,
apellido varchar(50) not null,
telefono varchar(12) not null,
direccion varchar(50) not null,
primary key(dni)
);

create table perro (
id_perro int not null auto_increment,
nombre varchar(20) not null,
fecha_nacimiento date not null,
sexo varchar(10) not null,
dni_dueno int not null,
primary key(id_perro),
foreign key(dni_dueno) references dueno(dni)
);

create table historial (
id_historial int auto_increment not null,
fecha date not null,
descripcion text not null,
monto int not null,
perro int not null,
primary key(id_historial),
foreign key(perro) references perro(id_perro)
);

insert into dueno (dni, nombre, apellido, telefono, direccion)
values
(39635751, 'brian ivan', 'galarza', 3774566978, 'rucci 1629' );

insert into perro (nombre, fecha_nacimiento, sexo, dni_dueno)
values
('Falucho', '2020-03-27', 'macho', 39635751);

select * from perro where sexo = "macho" or "Macho" and fecha_nacimiento between 2020 and 2022;

