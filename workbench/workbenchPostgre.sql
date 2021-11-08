CREATE TABLE PRODUCTOS (
  código INT NOT NULL,
  stock VARCHAR(45) NULL,
  precio VARCHAR(45) NULL,
  PRIMARY KEY (código));

CREATE TABLE ZONAS (
  identificador INT NOT NULL,
  viveros_ubicación VARCHAR(40) NOT NULL,
  PRIMARY KEY (identificador));


CREATE TABLE VIVEROS (
  ID INT NOT NULL,
  zonas_id INT NULL,
  PRIMARY KEY (ID),
  CONSTRAINT fk_viveros_zonas1
    FOREIGN KEY (zonas_id)
    REFERENCES ZONAS (identificador)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE EMPLEADOS (
  ID INT NOT NULL,
  zonas_identificador INT NULL,
  PRIMARY KEY (ID),
  CONSTRAINT fk_empleados_zonas
    FOREIGN KEY (zonas_identificador)
    REFERENCES ZONAS (identificador)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE CLIENTE_CLUB (
  DNI VARCHAR(45) NOT NULL,
  nombre VARCHAR(40) NULL,
  apellido1 VARCHAR(45) NULL,
  apellido2 VARCHAR(45) NULL,
  email VARCHAR(45) NULL,
  crédito_mensual VARCHAR(45) NULL,
  productos_comprado_código INT NOT NULL,
  PRIMARY KEY (DNI, productos_comprado_código),
  CONSTRAINT fk_cliente_club_productos1
    FOREIGN KEY (productos_comprado_código)
    REFERENCES PRODUCTOS (código)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE ASIGNA (
  zonas_identificador INT NOT NULL,
  productos_código INT NOT NULL,
  cantidad VARCHAR(45) NULL,
  PRIMARY KEY (zonas_identificador, productos_código),
  CONSTRAINT fk_zonas_has_productos_zonas1
    FOREIGN KEY (zonas_identificador)
    REFERENCES ZONAS (identificador)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_zonas_has_productos_productos1
    FOREIGN KEY (productos_código)
    REFERENCES PRODUCTOS (código)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO PRODUCTOS (código, stock, precio) VALUES (001, '50', '10');
INSERT INTO PRODUCTOS (código, stock, precio) VALUES (007, '24', '20');
INSERT INTO PRODUCTOS (código, stock, precio) VALUES (002, '24', '20');

INSERT INTO ZONAS (identificador, viveros_ubicación) VALUES (001, '\"La Laguna\"');
INSERT INTO ZONAS (identificador, viveros_ubicación) VALUES (005, '\"Tacoronte\"');

INSERT INTO VIVEROS (ID, zonas_id) VALUES (001, 001);
INSERT INTO VIVEROS (ID, zonas_id) VALUES (005, 005);

INSERT INTO EMPLEADOS (ID, zonas_identificador) VALUES (001, 001);
INSERT INTO EMPLEADOS (ID, zonas_identificador) VALUES (002, 005);

INSERT INTO CLIENTE_CLUB (DNI, nombre, apellido1, apellido2, email, crédito_mensual, productos_comprado_código) VALUES ('46372', '\"Carlos\"', '\"Mendoza\"', '\"Peréz\"', '\"mendozano@proton.com\"', '1200', 001);
INSERT INTO CLIENTE_CLUB (DNI, nombre, apellido1, apellido2, email, crédito_mensual, productos_comprado_código) VALUES ('18292', '\"Pepe\"', '\"Fuerte\"', '\"Calvo\"', '\"xlolx@gmail.com\"', '2100', 002);

