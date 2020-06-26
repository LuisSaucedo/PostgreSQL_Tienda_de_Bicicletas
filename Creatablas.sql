-- CREATE DATABASE bicicletas;

-- CAMBIOS:
-- ALTER TABLE Tamano ALTER COLUMN Tamano DROP NOT NULL;
-- ALTER TABLE cliente_reparacion ADD CONSTRAINT chk_cliente_reparacion_Pago_total CHECK ( Pago_total >= 0 );
-- ALTER TABLE Tipo_reparacion DROP CONSTRAINT tipo_reparacion_precio_check;
-- ALTER TABLE Tipo_reparacion ALTER COLUMN Precio DROP NOT NULL ;


create table Codigo_Postal
(
    Codigo integer ,
    Municipio_Delegacion varchar(50) not null ,

    primary key(Codigo),
    check ( Codigo > 0 )
);

create table Direccion
(
    id_direccion integer not null ,
    Calle varchar(50) not null ,
    Colonia varchar(50) not null ,
    Numero_Ext integer not null ,
    Numero_Int integer ,
    Codigo integer not null ,

    primary key(id_direccion),
    foreign key(Codigo) references Codigo_Postal(Codigo),
    check ( Numero_Ext >= 0 ),
    check ( Numero_Int >= 0 or Numero_Int IS NULL)
);

create table Persona
(
    id_persona integer not null ,
    Nombre varchar(50) not null ,
    APP varchar(50)  ,
    APM varchar(50)  ,
    correo varchar(50) not null ,
    id_direccion integer not null ,

    primary key (id_persona),
    foreign key (id_direccion) references Direccion(id_direccion)
);

create table Tipo_Empleado
(
    id_tipo_empleado integer not null,
    Puesto varchar(50) not null ,

    primary key (id_tipo_empleado)
);

create table Empleado
(
    id_empleado integer not null ,
    RFC varchar(13) not null ,
    Salario integer ,
    CURP varchar(18) not null ,
    id_persona integer not null ,
    id_tipo_empleado integer not null ,

    primary key(id_empleado),
    foreign key(id_persona) references Persona(id_persona),
    foreign key(id_tipo_empleado) references Tipo_Empleado(id_tipo_empleado),
    check (Salario > 0)
);

CREATE TABLE Descripcion
(
  id_descripcion integer NOT NULL,
  tipo_producto  varchar(50) NOT NULL,

  PRIMARY KEY ( id_descripcion )
);

create table Tamano
(
    id_tamano integer not null ,
    Tamano varchar(50),

    primary key (id_tamano)
);

create table Membresia
(
    id_membresia integer not null ,
    Tipo_membresia varchar(50) not null ,

    primary key(id_membresia)
);

CREATE TABLE Cliente_linea
(
  id_cliente_linea integer NOT NULL,
  id_persona       integer NOT NULL,
  id_membresia     integer NOT NULL,

  PRIMARY KEY ( "id_cliente_linea" ),
  FOREIGN KEY ( id_persona ) REFERENCES Persona ( id_persona ),
  FOREIGN KEY ( id_membresia ) REFERENCES Membresia ( id_membresia )
);


CREATE TABLE Cliente_reparacion
(
  id_cliente_rep      integer NOT NULL,
  Cantidad_bicicletas integer ,
  Pago_total          integer ,
  id_persona          integer NOT NULL,
  id_membresia        integer NOT NULL,

  PRIMARY KEY ( id_cliente_rep ),
  FOREIGN KEY ( id_persona ) REFERENCES Persona ( id_persona ),
  FOREIGN KEY ( id_membresia ) REFERENCES Membresia ( id_membresia ),
  check ( Pago_total >= 0 ),
  check ( Cantidad_bicicletas >0 )
);

CREATE TABLE Cliente_tienda
(
  id_cliente_tienda integer NOT NULL,
  id_persona        integer NOT NULL,
  id_membresia      integer NOT NULL,

  PRIMARY KEY ( id_cliente_tienda ),
  FOREIGN KEY ( id_persona ) REFERENCES Persona ( id_persona ),
  FOREIGN KEY ( id_membresia ) REFERENCES Membresia ( id_membresia )
);


CREATE TABLE Color
(
  id_color   integer NOT NULL,
  Tipo_color varchar(50) NOT NULL,

  PRIMARY KEY ( "id_color" )
);


CREATE TABLE Compra
(
  id_compra         integer NOT NULL,
  Hora              time NOT NULL,
  Fecha             date NOT NULL,
  Total             integer ,
  id_empleado       integer NOT NULL,
  id_cliente_tienda integer NOT NULL,

  PRIMARY KEY ( id_compra ),
  FOREIGN KEY ( id_empleado ) REFERENCES Empleado ( id_empleado ),
  FOREIGN KEY ( id_cliente_tienda ) REFERENCES Cliente_tienda ( id_cliente_tienda ),
  check ( Total >0 )
);

CREATE TABLE Compra_linea
(
  id_compra_linea integer NOT NULL,
  Fecha            date NOT NULL,
  Hora             time NOT NULL,
  Total            integer ,
  id_cliente_linea integer NOT NULL,

  PRIMARY KEY ( id_compra_linea ),
  FOREIGN KEY ( id_cliente_linea ) REFERENCES Cliente_linea ( id_cliente_linea ),
  check ( Total >0 )
);

create table Producto
(
    id_producto integer not null ,
    Nombre_prod varchar(50) not null ,
    Precio integer ,
    id_color integer not null ,
    id_tamano integer not null ,
    id_descripcion integer not null ,

    primary key (id_producto),
    foreign key (id_color) references Color(id_color),
    foreign key (id_tamano) references Tamano(id_tamano),
    foreign key (id_descripcion) references Descripcion(id_descripcion),
    check ( Precio >0 )

);


CREATE TABLE Compra_producto
(
  id_com_prod integer NOT NULL,
  Cantidad    integer ,
  id_producto integer NOT NULL,
  id_compra   integer NOT NULL,

  PRIMARY KEY ( id_com_prod ),
  FOREIGN KEY ( id_producto ) REFERENCES Producto ( id_producto ),
  FOREIGN KEY ( id_compra ) REFERENCES Compra ( id_compra ),
  check ( Cantidad > 0 )
);


create table Producto_linea
(
    id_producto_linea integer not null ,
    Nombre_prod varchar(50) not null ,
    Precio integer  ,
    id_color integer not null ,
    id_tamano integer not null ,
    id_descripcion integer not null ,

    primary key (id_producto_linea),
    foreign key (id_color) references Color(id_color),
    foreign key (id_tamano) references Tamano(id_tamano),
    foreign key (id_descripcion) references Descripcion(id_descripcion),
    check ( Precio >0 )
);

CREATE TABLE Detalle_compra_linea
(
  id_detalle        integer NOT NULL,
  Cantidad         integer NOT NULL,
  id_compra_linea   integer NOT NULL,
  id_producto_linea integer NOT NULL,

  PRIMARY KEY ( id_detalle ),
  FOREIGN KEY ( id_compra_linea ) REFERENCES Compra_linea ( id_compra_linea ),
  FOREIGN KEY ( id_producto_linea ) REFERENCES Producto_linea ( id_producto_linea),
  check ( Cantidad >0 )
);

create table Tipo_reparacion
(
    id_tipo_rep integer not null ,
    Tipo_reparacion varchar(50) not null ,
    Precio integer ,

    primary key (id_tipo_rep)
);

create table Orden_Reparacion
(
    id_orden_reparacion integer not null ,
    Garantia char(2) ,
    Piezas integer ,
    Hora time not null ,
    Fecha date not null ,
    id_empleado integer not null ,
    id_tipo_rep integer not null ,

    primary key (id_orden_reparacion),
    foreign key (id_empleado) references Empleado(id_empleado),
    foreign key (id_tipo_rep) references Tipo_reparacion(id_tipo_rep),
    check ( Piezas >= 0),
    check ( Garantia in ('Si', 'No') )
);


CREATE TABLE Detalle_rep
(
  id_detalle_rep      integer NOT NULL,
  id_cliente_rep      integer NOT NULL,
  id_orden_reparacion integer NOT NULL,
  PRIMARY KEY ( id_detalle_rep ),
  FOREIGN KEY ( id_cliente_rep ) REFERENCES Cliente_reparacion  (id_cliente_rep ),
  FOREIGN KEY ( id_orden_reparacion ) REFERENCES Orden_Reparacion ( id_orden_reparacion )
);



