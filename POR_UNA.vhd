
LIBRARY IEEE; --Definimos la libreria de trabajo 

USE IEEE.STD_LOGIC_1164.ALL; --Añadimos el paquetes especifica STD_LOGIC que esta en 8 niveles para sistemas multinivel 
USE IEEE.STD_LOGIC_UNSIGNED.ALL; --Permite operaciones sin signo de datos del tipo STD_LOGIC_VECTOR
--USE IEEE.STD_LOGIC_SIGNED.ALL; --Permite realizar operaciones con signo de datos del tipo STD_LOGIC_VECTOR 
--USE IEEE.STD_LOGIC_ARITH.ALL; --Permite especificar tipos de datos con y sin signo, operaciones aritmeticas con y sin signo

ENTITY POR_UNA IS --Creamos la entidad para poder asignar las entradas y las salidas de nuestro circuito 
PORT(
ENTRADA1, ENTRADA2 : IN BIT; --Asignamos las entradas que son de un BIT 
SALIDA: OUT BIT; --Asignamos la salida de un BIT 
SELECTOR: IN BIT --Asignamos el selector de un bit
);
END POR_UNA; --Terminamos la entidad 

ARCHITECTURE SELECCION OF POR_UNA IS --Empezamos la arquitectura del codigo
BEGIN --Empezamos 
WITH SELECTOR SELECT --Empezamos con la sentencia WHEN con SELECT 
SALIDA <= ENTRADA1 OR ENTRADA2 WHEN '0',
          ENTRADA1 AND ENTRADA2 WHEN OTHERS; 
END SELECCION;