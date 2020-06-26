-- INSERSIONES:

insert into codigo_postal
values('04300', 'Coyoacan');
insert into codigo_postal
values('04938', 'Coyoacan');
insert into codigo_postal
values('04730', 'Coyoacan');
insert into codigo_postal
values('04910', 'Coyoacan');
insert into codigo_postal
values('04340', 'Coyoacan');
insert into codigo_postal
values('04360', 'Coyoacan');
insert into codigo_postal
values('04320', 'Coyoacan');
insert into codigo_postal
values('04739', 'Coyoacan');
insert into codigo_postal
values('04950', 'Coyoacan');
insert into codigo_postal
values('04640', 'Coyoacan');
insert into codigo_postal
values('14310', 'Tlalpan');
insert into codigo_postal
values('14208', 'Tlalpan');
insert into codigo_postal
values('14230', 'Tlalpan');
insert into codigo_postal
values('14250', 'Tlalpan');
insert into codigo_postal
values('14470', 'Tlalpan');
insert into codigo_postal
values('53260', 'Naucalpan de Juarez');
insert into codigo_postal
values('02630', 'Azcapotzalco');
insert into codigo_postal
values (14060, 'Tlalpan');
insert into codigo_postal
values (03300, 'Benito Juarez');
insert into codigo_postal
values (04660, 'Coyoacan');
insert into codigo_postal
values (54050, 'Tlalnepantla de Baz');
insert into codigo_postal
values (07870, 'Gustavo A. Madero');
insert into codigo_postal
values(02080, 'Azcapotzalco');
insert into codigo_postal
values (15450, 'Venustiano Carranza');
insert into codigo_postal
values (06430, 'Cuauhtemoc');
insert into codigo_postal
values (06800, 'Cuauhtemoc');
insert into codigo_postal
values (03660, 'Benito Juarez');
insert into codigo_postal
values (16030, 'Xochimilco');
insert into codigo_postal
values(52960, 'Atizapan de Zaragoza');
insert into codigo_postal
values (53120,'Naucalpan de Juarez');
insert into codigo_postal
values('07890', 'Gustavo A. Madero');
INSERT INTO codigo_postal(CODIGO, MUNICIPIO_DELEGACION)
VALUES (06500, 'Cuauhtemoc');
INSERT INTO codigo_postal(codigo, municipio_delegacion)
VALUES (02980, 'Azcapotzalco');
INSERT INTO codigo_postal(codigo, municipio_delegacion)
VALUEs (06300, 'Cuauhtemoc');
INSERT INTO codigo_postal(codigo, municipio_delegacion)
VALUES (06700, 'Cuauhtemoc');
INSERT INTO codigo_postal(codigo, municipio_delegacion)
VALUES (04450, 'Coyoacan');
INSERT INTO codigo_postal(codigo, municipio_delegacion)
VALUES (53020, 'Naucalpan');
INSERT INTO codigo_postal
VALUES (15270, 'Venustiano Carranza');
INSERT INTO codigo_postal
VALUES (15810, 'Venustiano Carranza');
INSERT INTO codigo_postal
VALUES (11570, 'Miguel Hidalgo');
INSERT INTO codigo_postal
VALUES (11870, 'Miguel Hidalgo');
INSERT INTO codigo_postal
VALUES (03020, 'Benito Juarez');
INSERT INTO codigo_postal
VALUES (11410, 'Miguel Hidalgo');

-- Dos personas viven en la misma colonia
-- empleados
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('1', 'Mixtecas', 'Ajusco','45', '12', '04300');
insert into direccion(id_direccion, calle, colonia, numero_ext, codigo)
values('2', 'Totonacas', 'Ajusco', '12', '04300');
insert into direccion
values('3', 'Rancho San Isidro', 'Campestre Coyoacan', '3', '1', '04938');
insert into direccion
values('4', 'Júpiter', 'Cantil del Pedregal','14', '2', '04730');

-- direcciones cliente_tienda
insert into direccion
values('20', 'Maria Pistolas', 'Carmen Serdan', '22', '6', '04910');
insert into direccion
values('21', 'Calle Clavel', 'Copilco El Bajo', '34', '12', '04340');
insert into direccion(id_direccion, calle, colonia, numero_ext, codigo)
values('22', 'Leopoldo Salazar', 'Copilco El Alto', '14', '04360');
insert into direccion
values('23', 'Calle Tres Cruces', 'Cuadrante de San Francisco', '14', '12', '04320');
insert into direccion
values('24', 'Calle Aponecas', 'El Caracol', '67', '7', '04739');
insert into direccion
values('25', 'Calle Mirador', 'El Mirador', '13', '12', '04950');
insert into direccion(id_direccion, calle, colonia, numero_ext, codigo)
values('26', 'Calle Corola', 'El Reloj', '97', '04640');
insert into direccion
values('27', 'Calle Rosaura Zapata', 'Belisario Dominguez', '12', '20', '	14310');
insert into direccion
values('28', 'Calle Ajusco', 'Colonias del Ajusco', '43', '33', '14208');
insert into direccion
values('29', 'Calle Bochil', 'Cultura Maya', '65', '12', '14230');
insert into direccion
values('30', 'Calle Benito Juarez', 'Miguel Hidalgo', '453', '23', '14250');
insert into direccion
values('31', 'Calle Durazno', 'Plan de Ayala', '45', '2', '14470');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('32', 'Calle Manzana', 'Plan de Ayala', '12', '2', '14470');
insert into direccion(id_direccion, calle, colonia, numero_ext, codigo)
values('33', 'Alemania', 'Mexico 68', '68', '53260');
insert into direccion(id_direccion, calle, colonia, numero_ext, codigo)
values('34', 'Calzada Coltongo', 'Coltongo', '12', '02630');

-- Clientes_linea
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('5', 'Av. Insurgentes Sur', 'Peña Pobre', '3500', '42', '14060');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('6', 'Av. Popocatepetl', 'Portales Sur', '173', null, '03300');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('7', 'Saratoga', 'Portales', '810', '202', '03300');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('8', 'Av. del Iman', 'La Zorra', '5', '2', '04660');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('9', 'Adolfo Lopez Mateos', 'Jacarandas', '108', '1', '54050');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('10', 'Insurgentes Norte', 'Guadalupe Insurgentes', '1275', null, '07870');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('11', 'Norte', 'Nueva Tenochstitlan', '80', 4549, '07890');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('12', 'Calzada Camarones', 'Sector Naval', '407', null, '02080');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('13', 'German Cecilio Garcia', 'Damian Carmona', '5', null, '15450');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('14', 'Mimosas', 'Santa Maria Insurgentes', '117', null, '06430');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('15', 'Antonio Leon y Gama', 'Obrera', '7', null, 06800);
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('16', 'Av. Antonio Rodriguez', 'San Simon Ticumac', '40', null, '03660');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('17', 'San Bernardino Local C', 'Potrero de San Bernardino', '107', null, '16030');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('18', 'Leandro Valle', 'Barrio Norte', '36', null, '52960');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('19', 'Av. Lomas Verdes', 'Los Alamos', 454, null, '53120');


-- clientes_reparaciones
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('35', 'De la Reforma', 'Juarez', '308', null, '06500');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('36', 'Antonio Valeriano', 'Arenal', '211', null, '02980');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('37', 'Arteaga', 'Guerrero', '26', null, '06300');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('38', 'Durango', 'Roma Norte', '50', null, '06700');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('39', 'Calzada de Tlalpan', 'El Centinela', '2360', null, '04450');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('40', 'Blvd. Manuel Avila Camacho', 'Santa Maria Nativitas', '715', NULL, '53020');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('41', 'Mortelanos', 'Morelos', '88', null, '15270');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('42', 'Fray T de Mier', 'Merced Balbuena', '428440', null, '15810');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('43', 'Omer', 'Chapultepec Morales', '530', '102', '11570');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('44', 'Av. Revolucion', 'Tacubaya', '10', null, '11870');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('45', 'Av Antonio Rodriguez', 'San Simon Ticumac', '19', null, '03660');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('46', '2da cerrada de Corla', 'El Reloj', '9',null, '04640');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('47', 'Canarias', 'Portales Sur', '611', null, '03300');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('48', 'Cuauhtemoc', 'Narvarte Poniente', '661', null, '03020');
insert into direccion(id_direccion, calle, colonia, numero_ext, numero_int, codigo)
values('49', 'Colegio Salesiano', 'Tacuba', '3', null, '11410');

--Ya
-- Membresía, por cuestiones de supuestos, solo se cuentan con tres tipos de membresías.
insert into membresia
values('1', 'sencilla');
insert into membresia
values('2', 'intermedia');
insert into membresia
values('3', 'plus');

-- Personas:
--empleados
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('1','Vicente', 'Alfonso', 'Torrijos', 'vat@gmail.com', '1');
insert into persona
values('2', 'Raul', 'Esteves', 'Ramos', 'raul@hotmail.com', '2');
insert into persona
values('3', 'Susana', 'Coello', 'Azcona', 'asd@gmail.com', '3');
insert into persona
values('4', 'Miriam', 'Toro', 'Cerdan', 'mas@hotmail.com', '4');

--cliente_linea
insert into persona
values('5', 'Ana Isabel', 'Campuzano', 'Porcel', 'aicp@yahoo.com', '5');
insert into persona
values('6', 'Luis', 'Vilanova', 'Solano', 'luis@gmail.com', '6');
insert into persona
values('7', 'Diego', 'Bilbao', 'Machin', 'asfa@yahoo.com', '7');
insert into persona
values('8', 'Jaime', 'Melchor', 'Rico', 'jmr@yahoo.com', '8');
insert into persona
values('9', 'Rosa', 'Perez', 'Prieto', 'rpp@gmail.com', '9');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('10', 'Juan Antonio', 'Capel', 'Pajares', 'jua@gmail.com', '10');
insert into persona
values('11', 'Monsterrat', 'Prado', 'Dominguez', 'pdr@hotmail.com', '11');
insert into persona
values('12', 'Mayte', 'Lometo', 'Rodriguez', 'mlr@yahoo.com', '12');
insert into persona
values('13', 'Patricio', 'Calo', 'Melo', 'pcm@gmail.com', '13');
insert into persona
values('14', 'Elsa', 'Porrico', 'Zacarias', 'epz@gmail.com', '14');
insert into persona
values('15', 'Miguel', 'Ambes', 'Parada', 'map@yahoo.com', '15');
insert into persona
values('16', 'Maria Angeles', 'Echeverria', 'Wang', 'juoi@gmail.com', '16');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('17', 'Casimiro', 'Pancracio', 'Padilla', 'sapito@yahoo.com', '17');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('18', 'Patricio', 'Carlo', 'Mendez', 'noesfake@gmail.com', '18');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('19', 'Ricardo', 'Melos', 'Ortiz', 'hoyno@hotmail.com', '19');

--cliente reparacion
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('20', 'Juan', 'Hernandez', 'Hernandez', 'jhh@gmail.com', '35');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('21', 'Jose Luis', 'García', 'Laurentino', '234@hotmail.com', '36');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('22', 'Jose', 'Martinez', 'Ochoa', 'ocho@hotmail.com', '37');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('23', 'Maria Guadalupe', 'Lopez', 'Sanchez', 'mari98@hotmail.com', '38');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('24', 'Juana', 'Gonzalez', 'Hernandez', 'jgm8@live.com', '39');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('25', 'Antonio', 'Perez', 'Medroza', 'APM@gmail.com', '40');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('26', 'Jesus', 'Rodriguez', 'Hernandez', 'yisus00@hotmail.com', '41');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('27', 'Margarita', 'Flores', 'Buendia', 'dias34@live.com', '42');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('28', 'Alejandro', 'Gomes', 'Bernal', 'aless@hotmail.com', '43');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('29', 'Veronica', 'Sanchez', 'De la Rosa', 'Rose@yahoo.com', '44');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('30', 'Leticia', 'Cruz', 'Dominguez', 'leC@gmail.com', '45');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('31', 'Rosa', 'Hernandez', 'Quiroga', 'rosa@gmail.com', '46');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('32', 'Mario', 'Garcia', 'Chavez', 'el-mario@hotmailcom', '47');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('33', 'Teresa', 'Ruiz', 'Ortiz', 'tere@gov.com', '48');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('34', 'Martha', 'Ramos', 'Galvan', 'mrg@gmail.com', '49');

-- Cliente_tienda --
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('35', 'Juan Manuel', 'de Dios', 'Salinas', 'asd@gov.com', '20');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('36', 'Marta', 'Mella', 'Ebro', 'marta@yahoo.com', '21');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('37', 'Alvaro', 'Lopez', 'Tellez', 'tex@gmail.com', '22');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('38', 'Eyvar', 'Cotrofe', 'Morras', 'kl@hotmail.com', '23');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('39', 'Karen', 'Cerda', 'Pellin', 'carla@gov.com', '24');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('40', 'Alonso', 'Pulido', 'Chavez', 'asd@gmail.com', '25');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('41', 'Luis', 'Salcedo', 'Martinez', 'lsm@gov.com', '26');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('42', 'Estefania', 'Ramirez', 'Bravo', 'bravo@yahoo.com', '27');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('43', 'Carmelo', 'Tallas', 'De la Cruz', 'talla@gmail.com', '28');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('44', 'Salome', 'Teeran', 'Tiezo', 'salo@gmail.com', '29');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('45', 'Omar', 'Ochoa', 'Garcia', 'omar@hotmail.com', '30');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('46', 'Benito', 'Carlos', 'del Toro', 'san_benito@gmail.com', '31');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('47', 'Jessica', 'Zacarias', 'Orta', 'jes@yahoo.com', '32');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('48', 'Ernesto Carlos', 'Blanco', 'Prada', 'e.charles@gmail.com', '33');
insert into persona(id_persona, nombre, app, apm, correo, id_direccion)
values('49', 'Elsa Patricia', 'Sazua','Ortiz', 'elpat@gov.com', '34');



-- Por los supuestos, solo hay dos puestos
insert into tipo_empleado(id_tipo_empleado, puesto)
values('1', 'dependiente');
insert into tipo_empleado
values('2', 'reparador');
insert into tipo_empleado
values('3', 'gerente');

-- Por los supuestos, solo hay cuatro empleados
insert into empleado(id_empleado, rfc, salario, curp, id_persona, id_tipo_empleado)
values('1', 'ALTV9304121H0', '13000', 'AATV930412HDFLTV', '1', '3');
insert into empleado(id_empleado, rfc, salario, curp, id_persona, id_tipo_empleado)
values('2', 'ESRR900521AH1', '8000', 'EERR900521HDFSRR', '2', '1');
insert into empleado(id_empleado, rfc, salario, curp, id_persona, id_tipo_empleado)
values('3', 'COAS001201HY7', '8000', 'COAS001201MDFCZS', '3', '1');
insert into empleado(id_empleado, rfc, salario, curp, id_persona, id_tipo_empleado)
values('4', 'TOCM971015KL7', '15000', 'TOCM971015MDFTCM', '4', '2');


-- 15 venta en linea
insert into cliente_linea(id_cliente_linea, id_persona, id_membresia)
values('1', '5', '1');
insert into cliente_linea(id_cliente_linea, id_persona, id_membresia)
values('2', '6', '1');
insert into cliente_linea(id_cliente_linea, id_persona, id_membresia)
values('3', '7', '2');
insert into cliente_linea(id_cliente_linea, id_persona, id_membresia)
values('4', '8', '3');
insert into cliente_linea(id_cliente_linea, id_persona, id_membresia)
values('5', '9', '2');
insert into cliente_linea(id_cliente_linea, id_persona, id_membresia)
values('6', '10', '3');
insert into cliente_linea(id_cliente_linea, id_persona, id_membresia)
values('7', '11', '1');
insert into cliente_linea(id_cliente_linea, id_persona, id_membresia)
values('8', '12', '1');
insert into cliente_linea(id_cliente_linea, id_persona, id_membresia)
values('9', '13', '1');
insert into cliente_linea(id_cliente_linea, id_persona, id_membresia)
values('10', '14', '2');
insert into cliente_linea(id_cliente_linea, id_persona, id_membresia)
values('11', '15', '3');
insert into cliente_linea(id_cliente_linea, id_persona, id_membresia)
values('12', '16', '1');
insert into cliente_linea(id_cliente_linea, id_persona, id_membresia)
values('13', '17', '2');
insert into cliente_linea(id_cliente_linea, id_persona, id_membresia)
values('14', '18', '2');
insert into cliente_linea(id_cliente_linea, id_persona, id_membresia)
values('15', '19', '3');


-- venta en línea
insert into compra_linea(id_compra_linea, fecha, hora, total, id_cliente_linea)
values('1', '2020-06-01', '02:35', '5000', '1');
insert into compra_linea(id_compra_linea, fecha, hora, total, id_cliente_linea)
values('2', '2020-06-16', '05:00', '6500', '2');
insert into compra_linea(id_compra_linea, fecha, hora, total, id_cliente_linea)
values('3', '2020-06-23', '05:55', '20000', '3');
insert into compra_linea(id_compra_linea, fecha, hora, total, id_cliente_linea)
values('4', '2020-07-03', '06:55', '600', '4');
insert into compra_linea(id_compra_linea, fecha, hora, total, id_cliente_linea)
values('5', '2020-07-08', '07:50', '800', '5');
insert into compra_linea(id_compra_linea, fecha, hora, total, id_cliente_linea)
values('6', '2020-08-19', '08:15', '2100', '6');
insert into compra_linea(id_compra_linea, fecha, hora, total, id_cliente_linea)
values('7', '2020-08-24', '09:35', '750', '7');
insert into compra_linea(id_compra_linea, fecha, hora, total, id_cliente_linea)
values('8', '2020-09-18', '10:20', '450', '8');
insert into compra_linea(id_compra_linea, fecha, hora, total, id_cliente_linea)
values('9', '2020-09-24', '13:35', '300', '9');
insert into compra_linea(id_compra_linea, fecha, hora, total, id_cliente_linea)
values('10', '2020-09-30', '15:00', '400', '10');
insert into compra_linea(id_compra_linea, fecha, hora, total, id_cliente_linea)
values('11', '2020-10-20', '16:25', '1000', '11');
insert into compra_linea(id_compra_linea, fecha, hora, total, id_cliente_linea)
values('12', '2020-10-22', '16:50', '2000', '12');
insert into compra_linea(id_compra_linea, fecha, hora, total, id_cliente_linea)
values('13', '2020-10-23', '16:55', '890', '13');
insert into compra_linea(id_compra_linea, fecha, hora, total, id_cliente_linea)
values('14', '2020-12-21', '17:35', '200', '14');
insert into compra_linea(id_compra_linea, fecha, hora, total, id_cliente_linea)
values('15', '2020-12-30', '21:10', '300', '15');

-- COLOR
insert into color(id_color, tipo_color)
values('1', 'rojo');
insert into color(id_color, tipo_color)
values('2', 'amarillo');
insert into color(id_color, tipo_color)
values('3', 'negro');
insert into color(id_color, tipo_color)
values('4', 'morado');
insert into color(id_color, tipo_color)
values('5', 'verde');
insert into color(id_color, tipo_color)
values('6', 'azul');
insert into color(id_color, tipo_color)
values('7', 'cafe');
insert into color(id_color, tipo_color)
values('8', 'rosa');
insert into color(id_color, tipo_color)
values('9', 'purpura');
insert into color(id_color, tipo_color)
values('10', 'violeta');
insert into color(id_color, tipo_color)
values('11', 'azul marino');
insert into color(id_color, tipo_color)
values('12', 'gris');
insert into color(id_color, tipo_color)
values('13', 'blanco');
insert into color(id_color, tipo_color)
values('14', 'naranja');
insert into color(id_color, tipo_color)
values('15', 'verde fosforescente');

-- TAMAÑO YA
insert into tamano(id_tamano, tamano)
values('1', 'chico');
insert into tamano(id_tamano, tamano)
values('2', 'mediano');
insert into tamano(id_tamano, tamano)
values('3', 'grande');
insert into tamano(id_tamano, tamano)
values('4', null);

-- DESCRIPCIÓN
-- BICICLETAS Y LLANTAS
INSERT INTO descripcion(id_descripcion, tipo_producto)
VALUES(1, 'montaña');
INSERT INTO descripcion(id_descripcion, tipo_producto)
VALUES (2, 'ruta');
INSERT INTO descripcion(id_descripcion, tipo_producto)
VALUES (3, 'ciudad');
-- COMPONENTES
INSERT INTO descripcion(id_descripcion, tipo_producto)
VALUES (4, 'pedales');
INSERT INTO descripcion(id_descripcion, tipo_producto)
VALUES (5, 'frenos');
INSERT INTO descripcion(id_descripcion, tipo_producto)
VALUES (6, 'suspension');
INSERT INTO descripcion(id_descripcion, tipo_producto)
VALUES (14, 'manubrio');
INSERT INTO descripcion(id_descripcion, tipo_producto)
VALUES (15, 'asiento');
-- ACCESORIOS
INSERT INTO descripcion(id_descripcion, tipo_producto)
VALUES (7, 'anfora');
INSERT INTO descripcion(id_descripcion, tipo_producto)
VALUES (8, 'bomba de aire');
INSERT INTO descripcion(id_descripcion, tipo_producto)
VALUES (9, 'candado');
INSERT INTO descripcion
VALUES (10, 'cadena');
-- ROPA
INSERT INTO descripcion(id_descripcion, tipo_producto)
VALUES (11, 'jersey');
INSERT INTO descripcion(id_descripcion, tipo_producto)
VALUES (12, 'chamarra');
INSERT INTO descripcion(id_descripcion, tipo_producto)
VALUES (13, 'short');

-- PRODUCTO_LINEA
insert into producto_linea(id_producto_linea, nombre_prod, precio, id_color, id_tamano, id_descripcion)
values('1', 'bicicleta', '5000', '3', '2', '3');
insert into producto_linea(id_producto_linea, nombre_prod, precio, id_color, id_tamano, id_descripcion)
values('2', 'bicicleta', '6500', '1', '2', '1');
insert into producto_linea(id_producto_linea, nombre_prod, precio, id_color, id_tamano, id_descripcion)
values('3', 'bicicleta', '10000', '5', '2', '2');
insert into producto_linea(id_producto_linea, nombre_prod, precio, id_color, id_tamano, id_descripcion)
values(4, 'componente', '300', '3', '4', '4');
insert into producto_linea(id_producto_linea, nombre_prod, precio, id_color, id_tamano, id_descripcion)
values(5, 'componente', '400', '3', '1', '5');
insert into producto_linea(id_producto_linea, nombre_prod, precio, id_color, id_tamano, id_descripcion)
values(6, 'componente', '700', '3', '2', '6');
insert into producto_linea(id_producto_linea, nombre_prod, precio, id_color, id_tamano, id_descripcion)
values(7, 'componente', '200', '3', '3', '14');
insert into producto_linea(id_producto_linea, nombre_prod, precio, id_color, id_tamano, id_descripcion)
values(8, 'componente', '300', '5', '2', '15');
insert into producto_linea(id_producto_linea, nombre_prod, precio, id_color, id_tamano, id_descripcion)
values('9', 'accesorio', '250', '11', '2', '7');
insert into producto_linea(id_producto_linea, nombre_prod, precio, id_color, id_tamano, id_descripcion)
values('10', 'accesorio', '150', '12', '1', '8');
insert into producto_linea(id_producto_linea, nombre_prod, precio, id_color, id_tamano, id_descripcion)
values('11', 'accesorio', '300', '10', '3', '9');
insert into producto_linea(id_producto_linea, nombre_prod, precio, id_color, id_tamano, id_descripcion)
values('12', 'accesorio', '400', '3', '4', '10');
INSERT INTO producto_linea(ID_PRODUCTO_LINEA, NOMBRE_PROD, PRECIO, ID_COLOR, ID_TAMANO, ID_DESCRIPCION)
VALUES (13, 'ropa', 1000, 8, 4, 11);
INSERT INTO producto_linea(ID_PRODUCTO_LINEA, NOMBRE_PROD, PRECIO, ID_COLOR, ID_TAMANO, ID_DESCRIPCION)
VALUES (14, 'ropa', 2000, 6, 2, 12);
INSERT INTO producto_linea(ID_PRODUCTO_LINEA, NOMBRE_PROD, PRECIO, ID_COLOR, ID_TAMANO, ID_DESCRIPCION)
VALUES (15, 'ropa', 890, 4, 3, 13);


-- DETALLE_COMPRA_LÍNEA
INSERT INTO detalle_compra_linea(ID_DETALLE, CANTIDAD, ID_COMPRA_LINEA, ID_PRODUCTO_LINEA)
VALUES (1, 1, 1, 1);
INSERT INTO detalle_compra_linea(ID_DETALLE, CANTIDAD, ID_COMPRA_LINEA, ID_PRODUCTO_LINEA)
VALUES (2, 1, 2, 2);
INSERT INTO detalle_compra_linea(ID_DETALLE, CANTIDAD, ID_COMPRA_LINEA, ID_PRODUCTO_LINEA)
VALUES (3, 2, 3, 3);
INSERT INTO detalle_compra_linea(id_detalle, cantidad, id_compra_linea, id_producto_linea)
VALUES (4, 2, 4, 4);
INSERT INTO detalle_compra_linea(id_detalle, cantidad, id_compra_linea, id_producto_linea)
VALUES (5, 2, 5, 5);
INSERT INTO detalle_compra_linea(id_detalle, cantidad, id_compra_linea, id_producto_linea)
VALUES (6, 3, 6, 6);
INSERT INTO detalle_compra_linea(id_detalle, cantidad, id_compra_linea, id_producto_linea)
VALUES (7, 3, 7, 7);
INSERT INTO detalle_compra_linea(id_detalle, cantidad, id_compra_linea, id_producto_linea)
VALUES (8, 3, 8, 8);
INSERT INTO detalle_compra_linea(id_detalle, cantidad, id_compra_linea, id_producto_linea)
VALUES (9, 1, 9, 9);
INSERT INTO detalle_compra_linea(id_detalle, cantidad, id_compra_linea, id_producto_linea)
VALUES (10, 1, 10, 10);
INSERT INTO detalle_compra_linea(id_detalle, cantidad, id_compra_linea, id_producto_linea)
VALUES (11, 1, 11, 11);
INSERT INTO detalle_compra_linea(id_detalle, cantidad, id_compra_linea, id_producto_linea)
VALUES (12, 1, 12, 12);
INSERT INTO detalle_compra_linea(id_detalle, cantidad, id_compra_linea, id_producto_linea)
VALUES (13, 1, 13, 13);
INSERT INTO detalle_compra_linea(id_detalle, cantidad, id_compra_linea, id_producto_linea)
VALUES (14, 1, 14, 14);
INSERT INTO detalle_compra_linea(id_detalle, cantidad, id_compra_linea, id_producto_linea)
VALUES (15, 1, 15, 15);


--Venta en tienda
insert into cliente_tienda(id_cliente_tienda, id_persona, id_membresia)
values (1,35,2);
insert into cliente_tienda(id_cliente_tienda, id_persona, id_membresia)
values (2,36,1);
insert into cliente_tienda(id_cliente_tienda, id_persona, id_membresia)
values (3,37,3);
insert into cliente_tienda(id_cliente_tienda, id_persona, id_membresia)
values (4,38,2);
insert into cliente_tienda(id_cliente_tienda, id_persona, id_membresia)
values (5,39 ,1);
insert into cliente_tienda(id_cliente_tienda, id_persona, id_membresia)
values (6,40,2);
insert into cliente_tienda(id_cliente_tienda, id_persona, id_membresia)
values (7,41,1);
insert into cliente_tienda(id_cliente_tienda, id_persona, id_membresia)
values (8,42,3);
insert into cliente_tienda(id_cliente_tienda, id_persona, id_membresia)
values (9,43,2);
insert into cliente_tienda(id_cliente_tienda, id_persona, id_membresia)
values (10,44,2);
insert into cliente_tienda(id_cliente_tienda, id_persona, id_membresia)
values (11,45,2);
insert into cliente_tienda(id_cliente_tienda, id_persona, id_membresia)
values (12,46,3);
insert into cliente_tienda(id_cliente_tienda, id_persona, id_membresia)
values (13,47,2);
insert into cliente_tienda(id_cliente_tienda, id_persona, id_membresia)
values (14,48,1);
insert into cliente_tienda(id_cliente_tienda, id_persona, id_membresia)
values (15,49 ,1);

-- COMPRA EN TIENDA
INSERT INTO compra(id_compra, hora, fecha, total, id_empleado, id_cliente_tienda)
VALUES (1, '09:10', '2019-06-06', 6500, 1, 1);
INSERT INTO compra(id_compra, hora, fecha, total, id_empleado, id_cliente_tienda)
VALUES (2, '09:15', '2019-06-21', 10000, 3, 2);
INSERT INTO compra(id_compra, hora, fecha, total, id_empleado, id_cliente_tienda)
VALUES (3, '09:55', '2019-07-02', 5000, 1, 3);
INSERT INTO compra(id_compra, hora, fecha, total, id_empleado, id_cliente_tienda)
VALUES (4, '10:40', '2019-07-04', 300, 3, 4);
INSERT INTO compra(id_compra, hora, fecha, total, id_empleado, id_cliente_tienda)
VALUES (5, '10:50', '2019-09-17', 800, 1, 5);
INSERT INTO compra(id_compra, hora, fecha, total, id_empleado, id_cliente_tienda)
VALUES (6, '10:55', '2019-10-07', 1900, 1, 6);
INSERT INTO compra(id_compra, hora, fecha, total, id_empleado, id_cliente_tienda)
VALUES (7, '12:20', '2020-03-12', 1600, 3, 7);
INSERT INTO compra(id_compra, hora, fecha, total, id_empleado, id_cliente_tienda)
VALUES (8, '17:20', '2020-02-27', 2000, 3, 8);
INSERT INTO compra(id_compra, hora, fecha, total, id_empleado, id_cliente_tienda)
VALUES (9, '17:15', '2020-02-24', 750, 1, 9);
INSERT INTO compra(id_compra, hora, fecha, total, id_empleado, id_cliente_tienda)
VALUES (10, '15:15', '2019-12-25', 450, 3, 10);
INSERT INTO compra(id_compra, hora, fecha, total, id_empleado, id_cliente_tienda)
VALUES (11, '13:15', '2020-02-10', 900, 1, 11);
INSERT INTO compra(id_compra, hora, fecha, total, id_empleado, id_cliente_tienda)
VALUES (12, '15:55', '2020-01-21', 1200, 3, 12);
INSERT INTO compra(id_compra, hora, fecha, total, id_empleado, id_cliente_tienda)
VALUES (13, '15:20', '2019-12-05', 4000, 1, 13);
INSERT INTO compra(id_compra, hora, fecha, total, id_empleado, id_cliente_tienda)
VALUES (14, '15:45', '2019-10-18', 6000, 1, 14);
INSERT INTO compra(id_compra, hora, fecha, total, id_empleado, id_cliente_tienda)
VALUES (15, '11:05', '2019-07-10', 2670, 3, 15);

-- PRODUCTO
insert into producto(id_producto, nombre_prod, precio, id_color, id_tamano, id_descripcion)
values('1', 'bicicleta', '5000', '4', '2', '3');
insert into producto(id_producto, nombre_prod, precio, id_color, id_tamano, id_descripcion)
values('2', 'bicicleta', '6500', '4', '2', '1');
insert into producto(id_producto, nombre_prod, precio, id_color, id_tamano, id_descripcion)
values('3', 'bicicleta', '10000', '6', '3', '2');
insert into producto(id_producto, nombre_prod, precio, id_color, id_tamano, id_descripcion)
values(4, 'componente', '300', '3', '4', '4');
insert into producto(id_producto, nombre_prod, precio, id_color, id_tamano, id_descripcion)
values(5, 'componente', '400', '3', '1', '5');
insert into producto(id_producto, nombre_prod, precio, id_color, id_tamano, id_descripcion)
values(6, 'llanta', '950', '3', '2', '1');
insert into producto(id_producto, nombre_prod, precio, id_color, id_tamano, id_descripcion)
values(7, 'llanta', '800', '6', '2', 2);
insert into producto(id_producto, nombre_prod, precio, id_color, id_tamano, id_descripcion)
values(8, 'llanta', '1000', '8', '2', '3');
insert into producto(id_producto, nombre_prod, precio, id_color, id_tamano, id_descripcion)
values('9', 'accesorio', '250', '11', '2', '7');
insert into producto(id_producto, nombre_prod, precio, id_color, id_tamano, id_descripcion)
values('10', 'accesorio', '150', '12', '1', '8');
insert into producto(id_producto, nombre_prod, precio, id_color, id_tamano, id_descripcion)
values('11', 'accesorio', '300', '10', '3', '9');
insert into producto(id_producto, nombre_prod, precio, id_color, id_tamano, id_descripcion)
values('12', 'accesorio', '400', '3', '4', '10');
INSERT INTO producto(ID_PRODUCTO, NOMBRE_PROD, PRECIO, ID_COLOR, ID_TAMANO, ID_DESCRIPCION)
VALUES (13, 'ropa', 1000, 8, 4, 11);
INSERT INTO producto(ID_PRODUCTO, NOMBRE_PROD, PRECIO, ID_COLOR, ID_TAMANO, ID_DESCRIPCION)
VALUES (14, 'ropa', 2000, 6, 2, 12);
INSERT INTO producto(ID_PRODUCTO, NOMBRE_PROD, PRECIO, ID_COLOR, ID_TAMANO, ID_DESCRIPCION)
VALUES (15, 'ropa', 890, 4, 3, 13);

-- COMPRA_PRODUCTO
INSERT INTO compra_producto(ID_COM_PROD, CANTIDAD, ID_PRODUCTO, ID_COMPRA)
VALUES (1, 1, 1, 1);
INSERT INTO compra_producto(ID_COM_PROD, CANTIDAD, ID_PRODUCTO, ID_COMPRA)
VALUES (2, 1, 2, 2);
INSERT INTO compra_producto(ID_COM_PROD, CANTIDAD, ID_PRODUCTO, ID_COMPRA)
VALUES (3, 1, 3, 3);
INSERT INTO compra_producto(ID_COM_PROD, CANTIDAD, ID_PRODUCTO, ID_COMPRA)
VALUES (4, 1, 4, 4);
INSERT INTO compra_producto(ID_COM_PROD, CANTIDAD, ID_PRODUCTO, ID_COMPRA)
VALUES (5, 2, 5, 5);
INSERT INTO compra_producto(ID_COM_PROD, CANTIDAD, ID_PRODUCTO, ID_COMPRA)
VALUES (6, 2, 6, 6);
INSERT INTO compra_producto(ID_COM_PROD, CANTIDAD, ID_PRODUCTO, ID_COMPRA)
VALUES (7, 2, 7, 7);
INSERT INTO compra_producto(ID_COM_PROD, CANTIDAD, ID_PRODUCTO, ID_COMPRA)
VALUES (8, 2, 8, 8);
INSERT INTO compra_producto(ID_COM_PROD, CANTIDAD, ID_PRODUCTO, ID_COMPRA)
VALUES (9, 3, 9, 9);
INSERT INTO compra_producto(ID_COM_PROD, CANTIDAD, ID_PRODUCTO, ID_COMPRA)
VALUES (10, 3, 10, 10);
INSERT INTO compra_producto(ID_COM_PROD, CANTIDAD, ID_PRODUCTO, ID_COMPRA)
VALUES (11, 3, 11, 11);
INSERT INTO compra_producto(ID_COM_PROD, CANTIDAD, ID_PRODUCTO, ID_COMPRA)
VALUES (12, 3, 12, 12);
INSERT INTO compra_producto(ID_COM_PROD, CANTIDAD, ID_PRODUCTO, ID_COMPRA)
VALUES (13, 4, 13, 13);
INSERT INTO compra_producto(ID_COM_PROD, CANTIDAD, ID_PRODUCTO, ID_COMPRA)
VALUES (14, 4, 14, 14);
INSERT INTO compra_producto(ID_COM_PROD, CANTIDAD, ID_PRODUCTO, ID_COMPRA)
VALUES (15, 4, 15, 15);


-- Por los supuestos, solo hay cuatro tipos de reparaciones
insert into tipo_reparacion(id_tipo_rep, tipo_reparacion, precio)
values('1', 'sencilla', '250');
insert into tipo_reparacion(id_tipo_rep, tipo_reparacion, precio)
values('2', 'intermedia', '300');
insert into tipo_reparacion(id_tipo_rep, tipo_reparacion, precio)
values('3', 'avanzada', '500');
insert into tipo_reparacion
values('4', 'extra', null);

-- CLIENTE_REPARACION
INSERT INTO cliente_reparacion(ID_CLIENTE_REP, CANTIDAD_BICICLETAS, PAGO_TOTAL, ID_PERSONA, ID_MEMBRESIA)
VALUES (1, 1, 0, 20, 1);
INSERT INTO cliente_reparacion(ID_CLIENTE_REP, CANTIDAD_BICICLETAS, PAGO_TOTAL, ID_PERSONA, ID_MEMBRESIA)
VALUES (2, 1, 0, 21, 2);
INSERT INTO cliente_reparacion(ID_CLIENTE_REP, CANTIDAD_BICICLETAS, PAGO_TOTAL, ID_PERSONA, ID_MEMBRESIA)
VALUES (3, 1, 0, 22, 2);
INSERT INTO cliente_reparacion(ID_CLIENTE_REP, CANTIDAD_BICICLETAS, PAGO_TOTAL, ID_PERSONA, ID_MEMBRESIA)
VALUES (4, 1, 0, 23, 2);
INSERT INTO cliente_reparacion(ID_CLIENTE_REP, CANTIDAD_BICICLETAS, PAGO_TOTAL, ID_PERSONA, ID_MEMBRESIA)
VALUES (5, 1, 0, 24, 3);
INSERT INTO cliente_reparacion(ID_CLIENTE_REP, CANTIDAD_BICICLETAS, PAGO_TOTAL, ID_PERSONA, ID_MEMBRESIA)
VALUES (6, 1, 500, 25, 1);
INSERT INTO cliente_reparacion(ID_CLIENTE_REP, CANTIDAD_BICICLETAS, PAGO_TOTAL, ID_PERSONA, ID_MEMBRESIA)
VALUES (7, 1, 500, 26, 1);
INSERT INTO cliente_reparacion(ID_CLIENTE_REP, CANTIDAD_BICICLETAS, PAGO_TOTAL, ID_PERSONA, ID_MEMBRESIA)
VALUES (8, 1, 1000, 27, 1);
INSERT INTO cliente_reparacion(ID_CLIENTE_REP, CANTIDAD_BICICLETAS, PAGO_TOTAL, ID_PERSONA, ID_MEMBRESIA)
VALUES (9, 1, 300, 28, 2);
INSERT INTO cliente_reparacion(ID_CLIENTE_REP, CANTIDAD_BICICLETAS, PAGO_TOTAL, ID_PERSONA, ID_MEMBRESIA)
VALUES (10, 1, 250, 29, 3);
INSERT INTO cliente_reparacion(ID_CLIENTE_REP, CANTIDAD_BICICLETAS, PAGO_TOTAL, ID_PERSONA, ID_MEMBRESIA)
VALUES (11, 1, 250, 30, 1);
INSERT INTO cliente_reparacion(ID_CLIENTE_REP, CANTIDAD_BICICLETAS, PAGO_TOTAL, ID_PERSONA, ID_MEMBRESIA)
VALUES (12, 1, 0, 31, 3);
INSERT INTO cliente_reparacion(ID_CLIENTE_REP, CANTIDAD_BICICLETAS, PAGO_TOTAL, ID_PERSONA, ID_MEMBRESIA)
VALUES (13, 1, 0, 32, 3);
INSERT INTO cliente_reparacion(ID_CLIENTE_REP, CANTIDAD_BICICLETAS, PAGO_TOTAL, ID_PERSONA, ID_MEMBRESIA)
VALUES (14, 1, 1500, 33, 1);
INSERT INTO cliente_reparacion(ID_CLIENTE_REP, CANTIDAD_BICICLETAS, PAGO_TOTAL, ID_PERSONA, ID_MEMBRESIA)
VALUES (15, 1, 300, 34, 1);


-- ORDEN_REPARACION
INSERT INTO orden_reparacion(ID_ORDEN_REPARACION, GARANTIA, PIEZAS, HORA, FECHA, ID_EMPLEADO, ID_TIPO_REP)
VALUES (1, 'Si', 0, '09:30', '2020-04-07', 2, 1);
INSERT INTO orden_reparacion(ID_ORDEN_REPARACION, GARANTIA, PIEZAS, HORA, FECHA, ID_EMPLEADO, ID_TIPO_REP)
VALUES (2, 'Si', 1, '10:30', '2020-04-03', 2, 1);
INSERT INTO orden_reparacion(ID_ORDEN_REPARACION, GARANTIA, PIEZAS, HORA, FECHA, ID_EMPLEADO, ID_TIPO_REP)
VALUES (3, 'Si', 5, '11:00', '2020-02-11', 2, 1);
INSERT INTO orden_reparacion(ID_ORDEN_REPARACION, GARANTIA, PIEZAS, HORA, FECHA, ID_EMPLEADO, ID_TIPO_REP)
VALUES (4, 'Si', 2, '11:30', '2020-01-27', 2, 2);
INSERT INTO orden_reparacion(ID_ORDEN_REPARACION, GARANTIA, PIEZAS, HORA, FECHA, ID_EMPLEADO, ID_TIPO_REP)
VALUES (5, 'Si', 4, '12:30', '2020-01-15', 2, 1);
INSERT INTO orden_reparacion(ID_ORDEN_REPARACION, GARANTIA, PIEZAS, HORA, FECHA, ID_EMPLEADO, ID_TIPO_REP)
VALUES (6, 'No', 4, '12:10', '2020-01-09', 2, 3);
INSERT INTO orden_reparacion(ID_ORDEN_REPARACION, GARANTIA, PIEZAS, HORA, FECHA, ID_EMPLEADO, ID_TIPO_REP)
VALUES (7, 'No', 5, '10:50', '2019-12-18', 2, 3);
INSERT INTO orden_reparacion(ID_ORDEN_REPARACION, GARANTIA, PIEZAS, HORA, FECHA, ID_EMPLEADO, ID_TIPO_REP)
VALUES (8, 'No', 6, '12:50', '2019-11-11', 2, 4);
INSERT INTO orden_reparacion(ID_ORDEN_REPARACION, GARANTIA, PIEZAS, HORA, FECHA, ID_EMPLEADO, ID_TIPO_REP)
VALUES (9, 'No', 2, '13:10', '2019-10-21', 2, 2);
INSERT INTO orden_reparacion(ID_ORDEN_REPARACION, GARANTIA, PIEZAS, HORA, FECHA, ID_EMPLEADO, ID_TIPO_REP)
VALUES (10, 'No', 3, '13:20', '2019-10-15', 2, 1);
INSERT INTO orden_reparacion(ID_ORDEN_REPARACION, GARANTIA, PIEZAS, HORA, FECHA, ID_EMPLEADO, ID_TIPO_REP)
VALUES (11, 'No', 4, '14:20', '2019-10-08', 2, 1);
INSERT INTO orden_reparacion(ID_ORDEN_REPARACION, GARANTIA, PIEZAS, HORA, FECHA, ID_EMPLEADO, ID_TIPO_REP)
VALUES (12, 'Si', 1, '15:00', '2019-10-02', 2, 1);
INSERT INTO orden_reparacion(ID_ORDEN_REPARACION, GARANTIA, PIEZAS, HORA, FECHA, ID_EMPLEADO, ID_TIPO_REP)
VALUES (13, 'Si', 1, '16:00', '2019-09-27', 2, 1);
INSERT INTO orden_reparacion(ID_ORDEN_REPARACION, GARANTIA, PIEZAS, HORA, FECHA, ID_EMPLEADO, ID_TIPO_REP)
VALUES (14, 'No', 10, '16:20', '2019-07-04', 2, 4);
INSERT INTO orden_reparacion(ID_ORDEN_REPARACION, GARANTIA, PIEZAS, HORA, FECHA, ID_EMPLEADO, ID_TIPO_REP)
VALUES (15, 'No', 4, '17:30', '2019-06-21', 2, 2);

-- DETALLE_REP
INSERT INTO detalle_rep(ID_DETALLE_REP, ID_CLIENTE_REP, ID_ORDEN_REPARACION)
VALUES (1, 1, 1);
INSERT INTO detalle_rep(id_detalle_rep, id_cliente_rep, id_orden_reparacion)
VALUES (2,2, 2);
INSERT INTO detalle_rep(id_detalle_rep, id_cliente_rep, id_orden_reparacion)
VALUES (3, 3, 3);
INSERT INTO detalle_rep(id_detalle_rep, id_cliente_rep, id_orden_reparacion)
VALUES (4, 4, 4);
INSERT INTO detalle_rep(id_detalle_rep, id_cliente_rep, id_orden_reparacion)
VALUES (5, 5, 5);
INSERT INTO detalle_rep(id_detalle_rep, id_cliente_rep, id_orden_reparacion)
VALUES (6, 6, 6);
INSERT INTO detalle_rep(id_detalle_rep, id_cliente_rep, id_orden_reparacion)
VALUES (7, 7, 7);
INSERT INTO detalle_rep(id_detalle_rep, id_cliente_rep, id_orden_reparacion)
VALUES (8, 8, 8);
INSERT INTO detalle_rep(id_detalle_rep, id_cliente_rep, id_orden_reparacion)
VALUES (9, 9, 9);
INSERT INTO detalle_rep(id_detalle_rep, id_cliente_rep, id_orden_reparacion)
VALUES (10, 10, 10);
INSERT INTO detalle_rep(id_detalle_rep, id_cliente_rep, id_orden_reparacion)
VALUES (11, 11, 11);
INSERT INTO detalle_rep(id_detalle_rep, id_cliente_rep, id_orden_reparacion)
VALUES (12, 12, 12);
INSERT INTO detalle_rep(id_detalle_rep, id_cliente_rep, id_orden_reparacion)
VALUES (13, 13, 13);
INSERT INTO detalle_rep(id_detalle_rep, id_cliente_rep, id_orden_reparacion)
VALUES (14, 14, 14);
INSERT INTO detalle_rep(id_detalle_rep, id_cliente_rep, id_orden_reparacion)
VALUES (15, 15, 15);
----------------------------------------------------------------------------------------------------------------------------------
