----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2024 22:12:58
-- Design Name: 
-- Module Name: Traffic_Light_Controller - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Traffic_Light_Controller is
    Port ( CLOCK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           ENABLE : in STD_LOGIC;
           Out_1 : out STD_LOGIC_VECTOR (2 downto 0);
           Out_2 : out STD_LOGIC_VECTOR (2 downto 0);
           Out_3 : out STD_LOGIC_VECTOR (2 downto 0);
           Out_4 : out STD_LOGIC_VECTOR (2 downto 0));
end Traffic_Light_Controller;

ARCHITECTURE Controller_Arch of Traffic_Light_Controller IS
	TYPE    state_type is (S0, S1, S2, S3, S4, S5); 
	SIGNAL  current_state: state_type;  
	SIGNAL  count:    std_logic_vector(2 downto 0);  --3 bit counter
	
	--Initializing constants for each of the lights
	CONSTANT RED:     std_logic_vector(2 downto 0) := "100"; --RED Light
	CONSTANT YELLOW:  std_logic_vector(2 downto 0) := "010"; --YELLOW Light
	CONSTANT GREEN:	  std_logic_vector(2 downto 0) := "001"; --GREEN Light
	
BEGIN
	
	--Combinational and Sequential Logic                                       
	PROCESS(CLOCK, RESET, current_state, count)
	BEGIN
		IF (RESET = '1') THEN			  --Resets the whole system
			current_state <= S0;
			count <= "000";
		ELSIF (CLOCK'Event and CLOCK = '1') THEN
			IF (ENABLE = '1') THEN	
				CASE current_state IS	   --Actions for each state
					WHEN S0 =>
						IF (count < "110") THEN   --7 seconds delay
							current_state <= S0; 
							count <= count + 1;
						ELSE
							current_state <= S1; 
							count <= "000";
						END IF; 
							
					WHEN S1 => 
						IF (count < "010") THEN   --3 seconds delay
							current_state <= S1; 
							count <= count + 1;
						ELSE
							current_state <= S2; 
							count <= "000";
						END IF; 
						
					WHEN S2 => 
						IF (count < "001") THEN   --2 seconds delay
							current_state <= S2; 
							count <= count + 1;
						ELSE
							current_state <= S3; 
							count <= "000";
						END IF; 
							
					WHEN S3 => 
						IF (count < "110") THEN   --7 seconds delay
							current_state <= S3; 
							count <= count + 1;
						ELSE
							current_state <= S4; 
							count <= "000";
						END IF; 
							
					WHEN S4 => 
						IF (count < "010") THEN   --3 seconds delay
							current_state <= S4; 
							count <= count + 1;
						ELSE
							current_state <= S5; 
							count <= "000";
						END IF;
						 
					WHEN S5 => 
						IF (count < "001") THEN   --2 seconds delay
							current_state <= S5; 
							count <= count + 1;
						ELSE
							current_state <= S0; 
							count <= "000";
						END IF; 
								
					WHEN OTHERS => 
							current_state <= S0;
				END CASE;
			END IF; 
		END IF; 
	END PROCESS; 

	
	--Description of the Output in Each State (Moore)
	PROCESS(current_state)
	BEGIN
		IF (current_state = S0) THEN
			Out_1 <= RED;
			Out_2 <= RED;
			Out_3 <= GREEN;
 			Out_4 <= GREEN;
 		ELSIF (current_state = S1) THEN
			Out_1 <= RED;
			Out_2 <= RED;
			Out_3 <= YELLOW;
 			Out_4 <= YELLOW;
 		ELSIF (current_state = S2) THEN
			Out_1 <= RED;
			Out_2 <= RED;
			Out_3 <= RED;
 			Out_4 <= RED;
 		ELSIF (current_state = S3) THEN
			Out_1 <= GREEN;
			Out_2 <= GREEN;
			Out_3 <= RED;
 			Out_4 <= RED;
 		ELSIF (current_state = S4) THEN
			Out_1 <= YELLOW;
			Out_2 <= YELLOW;
			Out_3 <= RED;
 			Out_4 <= RED;
 		ELSIF (current_state = S5) THEN
			Out_1 <= RED;
			Out_2 <= RED;
			Out_3 <= RED;
 			Out_4 <= RED;
 		ELSE 
			Out_1 <= RED;
			Out_2 <= RED;
			Out_3 <= GREEN;
 			Out_4 <= GREEN;
 		END IF; 
 	END PROCESS; 
 END Controller_Arch;
 
