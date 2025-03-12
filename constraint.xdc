## Clock Signal
set_property PACKAGE_PIN E3 [get_ports {CLOCK}]
set_property IOSTANDARD LVCMOS33 [get_ports {CLOCK}]

## Reset Signal (assigned to SW0)
set_property PACKAGE_PIN J15 [get_ports {RESET}]
set_property IOSTANDARD LVCMOS33 [get_ports {RESET}]

## Enable Signal (assigned to SW1)
set_property PACKAGE_PIN L16 [get_ports {ENABLE}]
set_property IOSTANDARD LVCMOS33 [get_ports {ENABLE}]

## Output Signals Mapped to LEDs
# Out_1 (3-bit output) mapped to LD0, LD1, LD2
set_property PACKAGE_PIN H17 [get_ports {Out_1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Out_1[0]}]
set_property PACKAGE_PIN K15 [get_ports {Out_1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Out_1[1]}]
set_property PACKAGE_PIN J13 [get_ports {Out_1[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Out_1[2]}]

# Out_2 (3-bit output) mapped to LD3, LD4, LD5
set_property PACKAGE_PIN N14 [get_ports {Out_2[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Out_2[0]}]
set_property PACKAGE_PIN R18 [get_ports {Out_2[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Out_2[1]}]
set_property PACKAGE_PIN V17 [get_ports {Out_2[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Out_2[2]}]

# Out_3 (3-bit output) mapped to LD6, LD7, LD8
set_property PACKAGE_PIN U17 [get_ports {Out_3[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Out_3[0]}]
set_property PACKAGE_PIN U16 [get_ports {Out_3[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Out_3[1]}]
set_property PACKAGE_PIN V16 [get_ports {Out_3[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Out_3[2]}]

# Out_4 (3-bit output) mapped to LD9, LD10, LD11
set_property PACKAGE_PIN T15 [get_ports {Out_4[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Out_4[0]}]
set_property PACKAGE_PIN U14 [get_ports {Out_4[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Out_4[1]}]
set_property PACKAGE_PIN T16 [get_ports {Out_4[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Out_4[2]}]
