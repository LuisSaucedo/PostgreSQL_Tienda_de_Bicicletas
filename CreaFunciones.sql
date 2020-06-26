-- Función que devuelve un valor:
CREATE FUNCTION fnc_porcentaje(
ptotalt INTEGER,
ptotalg INTEGER
)
RETURNS DECIMAL
AS
$$
-- antes de definir una variable se necesita declarar.
DECLARE vresultado DECIMAL;  -- Nombre de la variable y el tipo. Por convención empiezan con la letra v
BEGIN
    -- cambiamos para que el resultado sea DECIMAL
    vresultado = (CAST(ptotalt AS DECIMAL) * 100 / CAST(ptotalg AS DECIMAL));  -- variables empiezan con 'v' por convención.
    RETURN vresultado;
END;
$$
LANGUAGE 'plpgsql' VOLATILE;

SELECT * FROM fnc_porcentaje(25, 300000);

-- Función que devuelve una tabla:
-- La siguiente función devuelve el nombre de los clientes en tienda, por año.
CREATE FUNCTION fnc_recuperaclientesaño(
pano INTEGER
)
RETURNS TABLE(onombre VARCHAR(128))  -- nombres de los atributos empiezan con o
AS
$$
BEGIN
    RETURN QUERY SELECT nombre
                 FROM persona
                          JOIN cliente_tienda ct on persona.id_persona = ct.id_persona
                          JOIN compra c on ct.id_cliente_tienda = c.id_cliente_tienda
                 WHERE EXTRACT(YEAR FROM fecha) = pano;

end;
$$
LANGUAGE 'plpgsql' VOLATILE;

SELECT * FROM fnc_recuperaclientesaño(2020);


-- Función que realiza una acción.

-- quito restricción.
ALTER TABLE persona ALTER COLUMN id_direccion DROP NOT NULL;

-- funcion que hace inserciones.
CREATE FUNCTION fnc_registroclienteslinea(
-- no conviene que el usuario nos diga el id_persona
    piddireccion INTEGER, -- color gris indica que no se está utilizando
    pnombre VARCHAR(32),
    papp VARCHAR(32),
    papm VARCHAR(32),
    pcorreo VARCHAR(32),
-- DATOS DE CLIENTE, nosotros asignamos lo demás:
    pmembresia VARCHAR(10))
    RETURNS INTEGER
AS
$$
-- HAY QUE DECLARAR las variables id
DECLARE
    vidpersona INTEGER;
    vidcliente INTEGER;
    vmembresia INTEGER;
BEGIN
    vidpersona = (SELECT MAX(id_persona) FROM persona) + 1;

    -- no vamos a almacenar la direccion.
    INSERT INTO persona(id_persona, nombre, app, apm, correo)
        -- mayusculas para ver el ejemplo
    VALUES (vidpersona, UPPER(pnombre), UPPER(papp), UPPER(papm), UPPER(pcorreo));

    vidcliente = (SELECT MAX(id_cliente_linea) FROM cliente_linea) + 1;
    -- elegimos el id_membresia del tipo de membresia que nos digan.
    vmembresia = (SELECT id_membresia FROM membresia WHERE tipo_membresia LIKE pmembresia);

    INSERT INTO cliente_linea(id_cliente_linea, id_persona, id_membresia)
    VALUES (vidcliente, vidpersona, vmembresia);

    RETURN 1; -- Se agrega para saber si todo salió bien. En otro caso todo salió mal
END;
$$
    LANGUAGE 'plpgsql' VOLATILE;

-- la función arroja un 1, lo cual indica que todo salió bien, no hubo errores
SELECT *
FROM fnc_registroclienteslinea(10000, 'luis alberto', 'saucedo', 'mendieta',
                                'esbasura.07@gmail.com', 'intermedia');

SELECT *
FROM cliente_linea;

SELECT *
FROM persona;