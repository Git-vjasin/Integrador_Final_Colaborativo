create database c23561_proyectofinal_2023;
use c23561_proyectofinal_2023;

create table tickets
(
  id int auto_increment primary key,
  nombre varchar(50),
  apellido varchar(50),
  mail varchar(50) unique,
  cant int,
  tipo_ticket int,
  total_facturado float
);

create table oradores
(
  id int auto_increment primary key,
  nombre varchar(50),
  apellido varchar(50),
  tematica text
);

insert into tickets values (1, "Victor", "Jasin", "vjasin@gmail.com", 1, 1, 800);
insert into tickets values (2, "Nicolas", "Silva", "nsilva@hotmail.com", 1, 1, 800);
insert into tickets values (3, "Fernando", "Gago", "fgago@edu.gob.ar", 1, 1, 800);
insert into tickets values (4, "Patricia", "Brito", "pbrito@yahoo.com.ar", 1, 1, 800);

insert into oradores values (1, "Nicolas", "Fernandez", "Desarrollos FullStack en Java - Todo lo que es FrontEnd y luego BackEnd");
insert into oradores values (2, "Agostina", "Lemoine", "Todo lo que se refiere a consultas administrativas las podra resolver ella");

select * from tickets;
select * from oradores;