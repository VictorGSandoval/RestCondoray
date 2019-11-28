create database FOOTIFY;
use FOOTIFY;

-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2019-11-28 23:35:21.509

-- tables
-- Table: ASIGNACION
CREATE TABLE ASIGNACION (
    CODASI int NOT NULL COMMENT 'Contiene el código de asignación.',
    FECASI date NULL COMMENT 'La fecha de la asignación.',
    IDMEN int NOT NULL COMMENT 'Identificador del menú.',
    CONSTRAINT ASIGNACION_pk PRIMARY KEY (CODASI)
) COMMENT 'Contiene la asignación.';

-- Table: DETALLE_MENU
CREATE TABLE DETALLE_MENU (
    IDDETMEN int NOT NULL COMMENT 'Identificador del detalle del menu',
    IDPLA int NOT NULL COMMENT 'Identificador del plato',
    IDMEN int NOT NULL COMMENT 'Identificador del menu',
    CONSTRAINT DETALLE_MENU_pk PRIMARY KEY (IDDETMEN)
) COMMENT 'contiene la informacion del menu';

-- Table: MENU
CREATE TABLE MENU (
    IDMEN int NOT NULL COMMENT 'Identificador del menu',
    NOMMEN varchar(20) NULL COMMENT 'Identificador del nombre del menu',
    CONSTRAINT MENU_pk PRIMARY KEY (IDMEN)
) COMMENT 'contiene el menu';

-- Table: PERSONA
CREATE TABLE PERSONA (
    IDPER int NOT NULL COMMENT 'Este campo es el identificador de cada persona registrada.',
    NOMPER varchar(70) NULL COMMENT 'Contiene los nombres de la persona',
    APEPER varchar(100) NULL COMMENT 'Contiene los apellidos de la persona',
    SEXPER varchar(20) NULL COMMENT 'Contiene el sexo de la persona',
    CELPER char(9) NULL,
    IDUBI int NOT NULL COMMENT 'Identificador de ubigeo de persona',
    IDUSU int NOT NULL COMMENT 'Identificador del usuario',
    CONSTRAINT PERSONA_pk PRIMARY KEY (IDPER)
) COMMENT 'Esta tabla contiene toda la información de las Personas.';

-- Table: PLATO
CREATE TABLE PLATO (
    IDPLA int NOT NULL COMMENT 'Este es el identificador del plato',
    NOMPLA varchar(20) NULL COMMENT 'Este es el identificador del nombre del plato',
    TIPPLA varchar(20) NULL COMMENT 'Este es el identificador del tipo de plato',
    DESPLA varchar(30) NOT NULL COMMENT 'Este campo muestra la descripcion del plato',
    PREPLA int NULL COMMENT 'Es el identificador del precio',
    CONSTRAINT PLATO_pk PRIMARY KEY (IDPLA)
) COMMENT 'contiene la relacion de los platos';

-- Table: UBIGEO
CREATE TABLE UBIGEO (
    IDUBI int NOT NULL COMMENT 'Campo de identificador de ubigueo',
    REGUBI varchar(70) NULL COMMENT 'Región donde se encuentra la persona',
    PROUBI varchar(70) NULL COMMENT 'Provincia donde se ubica la persona',
    DISUBI varchar(70) NULL COMMENT 'Distrito donde se encuentra la persona',
    CONSTRAINT UBIGEO_pk PRIMARY KEY (IDUBI)
) COMMENT 'Contiene la ubicación del restaurante.';

-- Table: USUARIO
CREATE TABLE USUARIO (
    IDUSU int NOT NULL COMMENT 'Identificador del usuario',
    NOMPER varchar(70) NULL COMMENT 'Muestra los nombre de los usuarios',
    PASPER varchar(20) NULL COMMENT 'Contraseña de login del usuario',
    TIPUSU char(1) NOT NULL COMMENT 'Contiene el Tipo de Usuario del personal a cargo.',
    CONSTRAINT USUARIO_pk PRIMARY KEY (IDUSU)
) COMMENT 'Contiene los datos del Usuario.';

-- Table: VENTA
CREATE TABLE VENTA (
    CODVEN char(4) NOT NULL COMMENT 'Contiene el identificador de cada venta ,teniendo en cuenta que el código esta conformado por una letra y tres números por ejemplo : A001',
    FECVEN date NULL COMMENT 'Contiene la fecha en que se realizo la venta',
    IDPER int NOT NULL COMMENT 'Identificador de cada persona registrada',
    CONSTRAINT VENTA_pk PRIMARY KEY (CODVEN)
) COMMENT 'Contiene los datos referentes a la persona y la fecha de venta';

-- Table: VENTA_DETALLE
CREATE TABLE VENTA_DETALLE (
    IDVENDET int NOT NULL COMMENT 'Contiene el identificado de cada venta realizada',
    CODVENDET char(4) NOT NULL COMMENT 'Contiene el codigo de cada venta realizada',
    CODASI int NOT NULL COMMENT 'Contiene el código de asignación.',
    IDPLA int NOT NULL COMMENT 'Identificador del plato.',
    CONSTRAINT VENTA_DETALLE_pk PRIMARY KEY (IDVENDET)
) COMMENT 'Contiene el detalle de ventas realizada a las personas.';

-- foreign keys
-- Reference: Asignacion_Menu (table: ASIGNACION)
ALTER TABLE ASIGNACION ADD CONSTRAINT Asignacion_Menu FOREIGN KEY Asignacion_Menu (IDMEN)
    REFERENCES MENU (IDMEN);

-- Reference: DETALLE_MENU_MENU (table: DETALLE_MENU)
ALTER TABLE DETALLE_MENU ADD CONSTRAINT DETALLE_MENU_MENU FOREIGN KEY DETALLE_MENU_MENU (IDMEN)
    REFERENCES MENU (IDMEN);

-- Reference: Det_Menu_Plato (table: DETALLE_MENU)
ALTER TABLE DETALLE_MENU ADD CONSTRAINT Det_Menu_Plato FOREIGN KEY Det_Menu_Plato (IDPLA)
    REFERENCES PLATO (IDPLA);

-- Reference: Persona_Ubigueo (table: PERSONA)
ALTER TABLE PERSONA ADD CONSTRAINT Persona_Ubigueo FOREIGN KEY Persona_Ubigueo (IDUBI)
    REFERENCES UBIGEO (IDUBI);

-- Reference: Persona_Usuario (table: PERSONA)
ALTER TABLE PERSONA ADD CONSTRAINT Persona_Usuario FOREIGN KEY Persona_Usuario (IDUSU)
    REFERENCES USUARIO (IDUSU);

-- Reference: Venta_Detalle_Asignacion (table: VENTA_DETALLE)
ALTER TABLE VENTA_DETALLE ADD CONSTRAINT Venta_Detalle_Asignacion FOREIGN KEY Venta_Detalle_Asignacion (CODASI)
    REFERENCES ASIGNACION (CODASI);

-- Reference: Venta_Detalle_Plato (table: VENTA_DETALLE)
ALTER TABLE VENTA_DETALLE ADD CONSTRAINT Venta_Detalle_Plato FOREIGN KEY Venta_Detalle_Plato (IDPLA)
    REFERENCES PLATO (IDPLA);

-- Reference: Venta_Detalle_Venta (table: VENTA_DETALLE)
ALTER TABLE VENTA_DETALLE ADD CONSTRAINT Venta_Detalle_Venta FOREIGN KEY Venta_Detalle_Venta (CODVENDET)
    REFERENCES VENTA (CODVEN);

-- Reference: Venta_Persona (table: VENTA)
ALTER TABLE VENTA ADD CONSTRAINT Venta_Persona FOREIGN KEY Venta_Persona (IDPER)
    REFERENCES PERSONA (IDPER);

-- End of file.



