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
![Captura de pantalla de 2021-10-24 11-46-48](https://user-images.githubusercontent.com/58046649/138590579-c737fca2-5bb7-4e81-8961-e48be85337b3.png)

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
![Captura de pantalla de 2021-10-24 11-43-26](https://user-images.githubusercontent.com/58046649/138590443-469b633c-3227-497a-b2a8-f0559845acda.png)
