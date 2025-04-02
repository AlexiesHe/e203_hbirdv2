#####               create clock              #####
set_property -dict { PACKAGE_PIN J19    IOSTANDARD LVCMOS33 } [get_ports { clk }]; 
create_clock -add -name sys_clk_pin -period 20.00 -waveform {0 10} [get_ports {clk}];

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets dut_io_pads_jtag_TCK_i_ival]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets IOBUF_jtag_TCK/O]

#####            rst define           #####

# RESET
set_property IOSTANDARD LVCMOS33 [get_ports fpga_rst ]
# KEY1
set_property IOSTANDARD LVCMOS33 [get_ports mcu_rst  ]

set_property PACKAGE_PIN AA1 [get_ports mcu_rst    ]
set_property PACKAGE_PIN L18 [get_ports fpga_rst   ]

#####            uart define          #####
set_property PACKAGE_PIN  U2      [get_ports uart0_rx]
set_property PACKAGE_PIN  V2      [get_ports uart0_tx]

set_property IOSTANDARD   LVCMOS33 [get_ports uart0_rx]
set_property IOSTANDARD   LVCMOS33 [get_ports uart0_tx]

#####               MCU JTAG define           #####
# GPIO2_0P
set_property PACKAGE_PIN W21 [get_ports mcu_TCK]
# GPIO2_0N
set_property PACKAGE_PIN W22 [get_ports mcu_TDI]
# GPIO2_1P
set_property PACKAGE_PIN N17 [get_ports mcu_TDO]
# GPIO2_1N
set_property PACKAGE_PIN P17 [get_ports mcu_TMS]
set_property KEEPER true     [get_ports mcu_TMS]

set_property IOSTANDARD LVCMOS33 [get_ports mcu_TCK  ]
set_property IOSTANDARD LVCMOS33 [get_ports mcu_TDI  ]
set_property IOSTANDARD LVCMOS33 [get_ports mcu_TDO  ]
set_property IOSTANDARD LVCMOS33 [get_ports mcu_TMS  ]

#####                PMU define               #####
# LED1
set_property PACKAGE_PIN M18 [get_ports pmu_paden  ]
# LED2
set_property PACKAGE_PIN N18 [get_ports pmu_padrst ]
# KEY2
set_property PACKAGE_PIN W1  [get_ports mcu_wakeup ]

set_property IOSTANDARD LVCMOS33 [get_ports pmu_paden  ]
set_property IOSTANDARD LVCMOS33 [get_ports pmu_padrst ]
set_property IOSTANDARD LVCMOS33 [get_ports mcu_wakeup ]