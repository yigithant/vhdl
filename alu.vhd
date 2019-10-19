library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.all;

--arith.all kütüphanesi ; This is the library that defines some types and basic arithmetic operations for representing integers in standard ways.
--unsigned.all kütüphanesi ; This library extends the std_logic_arith library to handle std_logic_vector values as unsigned integers
--logic_1164.all kütüphanesi ; This is the library that defines the basic std_logic data types and a few functions.
--numeric_std.all kütüphanesi ; It provides arithmetic functions for vectors. Overrides of std_logic_vector are defined for signed and unsigned arithmetic. 

entity alu is port
(
a:in STD_LOGIC_VECTOR(3 downto 0);
b:in STD_LOGIC_VECTOR(3 downto 0);
sel:in STD_LOGIC_VECTOR(2 downto 0);
x:out STD_LOGIC_VECTOR(3 downto 0)
);
end alu;

architecture karakter of alu is
begin
process(a,b,sel)
begin
case sel is
when "000"=>x<= a  and b ;
when "001"=>x<= a or b;
when "010"=>x<= not a;
when "100"=>x<= conv_std_logic_vector(conv_integer(a)+conv_integer(b),4); 
when "101"=>x<= conv_std_logic_vector(2*conv_integer(a)-conv_integer(b),4);
when "110"=>x<= conv_std_logic_vector(conv_integer(b)/conv_integer(a),4);
when "111"=>x<= conv_std_logic_vector(conv_integer(a)*conv_integer(b),4);
when others=>x<="0000";
end case;
end process;
end karakter;

