-- Consulta básica:
SELECT id_persona, nombre, apm
FROM persona
ORDER BY id_persona;

-- Subconsulta:
-- La siguiente consulta nos regresa el grupo para el cuál hubo más reparaciones. Hay dos grupos y se
-- toman a partir del atributo "garantia". Hubo más reparaciones sin garantía.
SELECT garantia
FROM (SELECT garantia,
             count(id_orden_reparacion) total -- RENOMBRANDO LA ÚLTIMA COLUMNA.
      FROM orden_reparacion
      GROUP BY garantia) T2
     -- 8
WHERE T2.total = (SELECT MAX(total)
                  FROM (
                           SELECT garantia,
                                  count(id_orden_reparacion) AS total -- RENOMBRANDO LA ÚLTIMA COLUMNA.
                           FROM orden_reparacion
                           GROUP BY garantia) T1);

-- Consulta compuesta:
-- podemos ver datos de clientes y el número de compras que hicieron en línea y en tienda.
SELECT nombre, apm, calle, T0.id_persona, CASE WHEN T1.linea IS NULL THEN 0 ELSE T1.linea END,
       CASE WHEN tienda IS NULL THEN 0 ELSE tienda END
FROM (SELECT *
      FROM persona JOIN direccion d on persona.id_direccion = d.id_direccion) T0 LEFT JOIN
              (SELECT id_persona, COUNT(id_compra_linea) linea
               FROM compra_linea JOIN cliente_linea cl on compra_linea.id_cliente_linea = cl.id_cliente_linea
               GROUP BY id_persona) T1 ON T0.id_persona = T1.id_persona
        LEFT JOIN
               (SELECT id_persona, COUNT(id_compra) tienda
               FROM compra JOIN cliente_tienda ct on compra.id_cliente_tienda = ct.id_cliente_tienda
               GROUP BY id_persona) T2 ON T2.id_persona = T0.id_persona;

-- Paginación.
-- PAGINACIÓN DE LA TABLA "color" EN TRES PÁGINAS:
SELECT tipo_color
FROM color
ORDER BY id_color ASC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;

SELECT tipo_color
FROM color
ORDER BY id_color ASC
OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY;

SELECT tipo_color
FROM color
ORDER BY id_color ASC
OFFSET 10 ROWS FETCH NEXT 5 ROWS ONLY;

-- CROSSTAB
CREATE EXTENSION tablefunc;

-- La siguiente consulta regresa el total de órdenes registradas por año para cada tipo de orden.
SELECT *
FROM CROSSTAB(
    'SELECT ''TIENDA'' tipo, EXTRACT(YEAR FROM fecha) año, COUNT(c.id_cliente_tienda) total
FROM cliente_tienda
         JOIN compra c on cliente_tienda.id_cliente_tienda = c.id_cliente_tienda
GROUP BY EXTRACT(YEAR FROM fecha) -- como date_part
UNION ALL
SELECT ''LINEA'', EXTRACT(YEAR FROM fecha) año, COUNT(compra_linea.id_cliente_linea) total1
FROM cliente_linea
         JOIN compra_linea ON cliente_linea.id_cliente_linea = compra_linea.id_cliente_linea
GROUP BY EXTRACT(YEAR FROM fecha)
UNION ALL
SELECT ''REPARACIONES'', EXTRACT(YEAR FROM fecha) año, COUNT(id_cliente_rep) total2
FROM detalle_rep
         JOIN orden_reparacion ON detalle_rep.id_orden_reparacion = orden_reparacion.id_orden_reparacion
GROUP BY EXTRACT(YEAR FROM fecha)
ORDER BY tipo, año', -- SEGUNDO PARÁMETRO
    'SELECT DISTINCT EXTRACT(YEAR FROM fecha) año
FROM cliente_tienda JOIN compra c on cliente_tienda.id_cliente_tienda = c.id_cliente_tienda
ORDER BY año') AS resultado(otipo TEXT, o2019 BIGINT, o2020 BIGINT);

-- Función de ventana:
-- Agregando otra compra para el cliente 15, en tienda.
INSERT INTO compra(id_compra, hora, fecha, total, id_empleado, id_cliente_tienda)
VALUES (16, '10:00', '2020-02-10', 5300, 1, 15);

-- La siguiente consulta va a devolver los nombres de los clientes en tienda, su id, el total que pagaron y el total global.
SELECT nombre, app, apm, ct.id_cliente_tienda, total, SUM(total) OVER() totalglobal -- SUMA EN UN CONJUNTO DE DATOS
FROM persona JOIN cliente_tienda ct ON persona.id_persona = ct.id_persona
JOIN compra c on ct.id_cliente_tienda = c.id_cliente_tienda;

-- Agrupación.
-- Misma consulta que arriba
SELECT nombre, app, apm, cliente_tienda.id_cliente_tienda, total,
       (SELECT SUM(total) FROM compra ) totalglobal
FROM cliente_tienda JOIN
    (SELECT id_cliente_tienda, SUM(total) total
    FROM COMPRA
    GROUP BY id_cliente_tienda) T1 ON cliente_tienda.id_cliente_tienda = T1.id_cliente_tienda
    JOIN persona p on cliente_tienda.id_persona = p.id_persona;

DELETE FROM compra
WHERE id_compra = 16;