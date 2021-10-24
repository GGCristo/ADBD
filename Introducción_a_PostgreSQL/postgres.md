## Instalación
- Acceder al usuario postgres
  ~~~
  sudo su postgres
  ~~~
- Crear usuario en el sistema
  ~~~
  createuser alu0101204512
  alter role alu0101204512 with password 'XXXXXXXXXX'
  ~~~

- Crear una base de datos de prueba
 ~~~
CREATE DATABASE pract1;

create table usuarios (
  nombre varchar(30),
  clave varchar(10)
 );


insert into usuarios (nombre, clave) values ('Isa','asdf');
 insert into usuarios (nombre, clave) values ('Pablo','jfx344');
 insert into usuarios (nombre, clave) values ('Ana','tru3fal');
 ~~~
