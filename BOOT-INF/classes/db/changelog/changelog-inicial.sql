-- liquibase formatted sql

-- changeset script:1
-- comment: Creacion tabla personas
CREATE TABLE personas
(
    id_persona INTEGER GENERATED BY DEFAULT AS IDENTITY,
    primer_nombre VARCHAR(255),
    segundo_nombre VARCHAR(255),
    primer_apellido VARCHAR(255),
    segundo_apellido VARCHAR(255),
    documento INTEGER NOT NULL,
    telefono VARCHAR(255),
    direccion VARCHAR(255),
    ciudad VARCHAR(255),
    id_tipo_documento_fk INTEGER NOT NULL, PRIMARY KEY (id_persona),
    CONSTRAINT UK_nbckvbtl2ut3rda94qikpbt89 UNIQUE (documento)
);

-- changeset script:2
-- comment: Creacion tabla employees
CREATE TABLE tipos_documento
(
    id_tipo_documento INTEGER GENERATED BY DEFAULT AS IDENTITY,
    descripcion VARCHAR(255),
    tipo VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_tipo_documento),
    CONSTRAINT UK_sc22sugm0qj8hvab81n9pl6pe UNIQUE (tipo)
);

-- changeset script:3
-- comment: Insertar tipos de documento
INSERT INTO tipos_documento(descripcion, tipo)	VALUES
    ( 'Cedula', 'C'),
	( 'Pasaporte', 'P');

-- changeset script:4
-- comment: Insertar Personas
INSERT INTO personas
    (primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, documento, telefono, direccion, ciudad, id_tipo_documento_fk)	VALUES
    ( 'Duvan', 'Esteban', 'Cardozo', 'Cerrano', 23445322, '3251654892', 'Calle 25 No 15 - 22', 'Bogota', 1),
	( 'Jhon', 'Sneider', 'Valenzuela', 'Manlloma', 15935712, '321265896', 'Carrera 48 No 65 - 13', 'Medellin', 2);