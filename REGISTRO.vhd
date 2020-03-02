LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY REGISTRO IS 
PORT
(
PARALLEL_DATA_OUTPUT: BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
SERIAL_DATA_IN, CLEAR, CLOCK : IN STD_LOGIC
);
END REGISTRO;

ARCHITECTURE SIPO OF REGISTRO IS
SIGNAL D0, D1, D2, D3 : STD_LOGIC;
BEGIN 
	PROCESS (CLOCK, CLEAR)
	BEGIN
   IF (CLOCK'EVENT AND CLOCK = '1') THEN
   	IF (CLEAR = '1') THEN
	   	
		PARALLEL_DATA_OUTPUT (3 downto 0) <= "0000"; 
		
		ELSIF (CLEAR = '0') THEN  
			PARALLEL_DATA_OUTPUT(0) <= SERIAL_DATA_IN;	
			PARALLEL_DATA_OUTPUT(1) <= PARALLEL_DATA_OUTPUT(0);
			PARALLEL_DATA_OUTPUT(2) <= PARALLEL_DATA_OUTPUT(1);
			PARALLEL_DATA_OUTPUT(2) <= PARALLEL_DATA_OUTPUT(3);
		END IF;
 	END IF;
   END PROCESS;

END SIPO;