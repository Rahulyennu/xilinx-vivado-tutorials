# Define the top level system clock of the design
create_clock -period 10 -name sysClk [get_ports sysClk]

# Define the clocks for the GTX blocks
create_clock -name gt0_txusrclk_i -period 12.8 [get_pins mgtEngine/ROCKETIO_WRAPPER_TILE_i/gt0_ROCKETIO_WRAPPER_TILE_i/gtxe2_i/TXOUTCLK]
create_clock -name gt2_txusrclk_i -period 12.8 [get_pins mgtEngine/ROCKETIO_WRAPPER_TILE_i/gt2_ROCKETIO_WRAPPER_TILE_i/gtxe2_i/TXOUTCLK]
create_clock -name gt4_txusrclk_i -period 12.8 [get_pins mgtEngine/ROCKETIO_WRAPPER_TILE_i/gt4_ROCKETIO_WRAPPER_TILE_i/gtxe2_i/TXOUTCLK]
create_clock -name gt6_txusrclk_i -period 12.8 [get_pins mgtEngine/ROCKETIO_WRAPPER_TILE_i/gt6_ROCKETIO_WRAPPER_TILE_i/gtxe2_i/TXOUTCLK]


# IO delays
set_input_delay -clock sysClk 0.0 [get_ports or1200_clmode]
set_input_delay -clock sysClk 0.0 [get_ports or1200_pic_ints]
set_input_delay -clock sysClk 3.0 [get_ports DataIn_pad_0_i[*]]
set_input_delay -clock sysClk 3.0 [get_ports LineState_pad_0_i[*]]
set_input_delay -clock sysClk 3.0 [get_ports RxActive_pad_0_i]
set_input_delay -clock sysClk 3.0 [get_ports RxError_pad_0_i]
set_input_delay -clock sysClk 3.0 [get_ports RxValid_pad_0_i]
set_input_delay -clock sysClk 3.0 [get_ports TxReady_pad_0_i]
set_input_delay -clock sysClk 3.0 [get_ports VStatus_pad_0_i[*]]
set_input_delay -clock sysClk 3.0 [get_ports usb_vbus_pad_0_i]
set_input_delay -clock sysClk 3.0 [get_ports DataIn_pad_1_i[*]]
set_input_delay -clock sysClk 3.0 [get_ports LineState_pad_1_i[*]]
set_input_delay -clock sysClk 3.0 [get_ports RxActive_pad_1_i]
set_input_delay -clock sysClk 3.0 [get_ports RxError_pad_1_i]
set_input_delay -clock sysClk 3.0 [get_ports RxValid_pad_1_i]
set_input_delay -clock sysClk 3.0 [get_ports TxReady_pad_1_i]
set_input_delay -clock sysClk 3.0 [get_ports VStatus_pad_1_i[*]]
set_input_delay -clock sysClk 3.0 [get_ports usb_vbus_pad_1_i]
set_input_delay -clock sysClk 0.0 [get_ports reset]

set_output_delay -clock sysClk 0.0 [get_ports or1200_pm_out[*]]
set_output_delay -clock sysClk 0.0 [get_ports TermSel_pad_0_o]
set_output_delay -clock sysClk 0.0 [get_ports TxValid_pad_0_o]
set_output_delay -clock sysClk 0.0 [get_ports VControl_Load_pad_0_o]
set_output_delay -clock sysClk 0.0 [get_ports XcvSelect_pad_0_o]
set_output_delay -clock sysClk 0.0 [get_ports TermSel_pad_1_o]
set_output_delay -clock sysClk 0.0 [get_ports TxValid_pad_1_o]
set_output_delay -clock sysClk 0.0 [get_ports VControl_Load_pad_1_o]
set_output_delay -clock sysClk 0.0 [get_ports XcvSelect_pad_1_o]
set_output_delay -clock sysClk 0.0 [get_ports OpMode_pad_0_o[*]]
set_output_delay -clock sysClk 0.0 [get_ports OpMode_pad_1_o[*]]
set_output_delay -clock sysClk 0.0 [get_ports SuspendM_pad_0_o]
set_output_delay -clock sysClk 0.0 [get_ports SuspendM_pad_1_o]
set_output_delay -clock sysClk 0.0 [get_ports VControl_pad_0_o[*]]
set_output_delay -clock sysClk 0.0 [get_ports VControl_pad_1_o[*]]
set_output_delay -clock sysClk 0.0 [get_ports phy_rst_pad_0_o]
set_output_delay -clock sysClk 0.0 [get_ports phy_rst_pad_1_o]
set_output_delay -clock sysClk 0.0 [get_ports DataOut_pad_0_o[*]]
set_output_delay -clock sysClk 0.0 [get_ports DataOut_pad_1_o[*]]

# Timing exceptions
set_false_path -from [get_ports GTPRESET_IN]

# Multi-cycle paths for ALU
set_multicycle_path -through [get_pins cpuEngine/or1200_cpu/or1200_alu/*] 2
set_multicycle_path -hold -through [get_pins cpuEngine/or1200_cpu/or1200_alu/*] 1

# I/O Constraints
set_property IOSTANDARD LVCMOS18 [get_ports {DataIn_pad_0_i[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataIn_pad_0_i[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataIn_pad_0_i[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataIn_pad_0_i[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataIn_pad_0_i[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataIn_pad_0_i[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataIn_pad_0_i[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataIn_pad_0_i[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataIn_pad_1_i[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataIn_pad_1_i[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataIn_pad_1_i[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataIn_pad_1_i[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataIn_pad_1_i[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataIn_pad_1_i[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataIn_pad_1_i[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataIn_pad_1_i[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataOut_pad_0_o[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataOut_pad_0_o[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataOut_pad_0_o[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataOut_pad_0_o[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataOut_pad_0_o[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataOut_pad_0_o[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataOut_pad_0_o[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataOut_pad_0_o[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataOut_pad_1_o[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataOut_pad_1_o[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataOut_pad_1_o[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataOut_pad_1_o[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataOut_pad_1_o[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataOut_pad_1_o[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataOut_pad_1_o[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DataOut_pad_1_o[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports GTPRESET_IN]
set_property IOSTANDARD LVCMOS18 [get_ports {LineState_pad_0_i[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LineState_pad_0_i[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LineState_pad_1_i[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LineState_pad_1_i[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {OpMode_pad_0_o[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {OpMode_pad_0_o[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {OpMode_pad_1_o[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {OpMode_pad_1_o[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports or1200_clmode]
set_property IOSTANDARD LVCMOS18 [get_ports or1200_pic_ints]
set_property IOSTANDARD LVCMOS18 [get_ports {or1200_pm_out[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {or1200_pm_out[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {or1200_pm_out[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {or1200_pm_out[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports phy_rst_pad_0_o]
set_property IOSTANDARD LVCMOS18 [get_ports phy_rst_pad_1_o]
set_property IOSTANDARD LVCMOS18 [get_ports reset]
set_property IOSTANDARD LVCMOS18 [get_ports RxActive_pad_0_i]
set_property IOSTANDARD LVCMOS18 [get_ports RxActive_pad_1_i]
set_property IOSTANDARD LVCMOS18 [get_ports RxError_pad_0_i]
set_property IOSTANDARD LVCMOS18 [get_ports RxError_pad_1_i]
set_property IOSTANDARD LVCMOS18 [get_ports RxValid_pad_0_i]
set_property IOSTANDARD LVCMOS18 [get_ports RxValid_pad_1_i]
set_property IOSTANDARD LVCMOS18 [get_ports SuspendM_pad_0_o]
set_property IOSTANDARD LVCMOS18 [get_ports SuspendM_pad_1_o]
set_property IOSTANDARD LVCMOS18 [get_ports sysClk]
set_property IOSTANDARD LVCMOS18 [get_ports TermSel_pad_0_o]
set_property IOSTANDARD LVCMOS18 [get_ports TermSel_pad_1_o]
set_property IOSTANDARD LVCMOS18 [get_ports TxReady_pad_0_i]
set_property IOSTANDARD LVCMOS18 [get_ports TxReady_pad_1_i]
set_property IOSTANDARD LVCMOS18 [get_ports TxValid_pad_0_o]
set_property IOSTANDARD LVCMOS18 [get_ports TxValid_pad_1_o]
set_property IOSTANDARD LVCMOS18 [get_ports usb_vbus_pad_0_i]
set_property IOSTANDARD LVCMOS18 [get_ports usb_vbus_pad_1_i]
set_property IOSTANDARD LVCMOS18 [get_ports VControl_Load_pad_0_o]
set_property IOSTANDARD LVCMOS18 [get_ports VControl_Load_pad_1_o]
set_property IOSTANDARD LVCMOS18 [get_ports {VControl_pad_0_o[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VControl_pad_0_o[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VControl_pad_0_o[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VControl_pad_0_o[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VControl_pad_1_o[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VControl_pad_1_o[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VControl_pad_1_o[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VControl_pad_1_o[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VStatus_pad_0_i[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VStatus_pad_0_i[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VStatus_pad_0_i[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VStatus_pad_0_i[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VStatus_pad_0_i[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VStatus_pad_0_i[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VStatus_pad_0_i[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VStatus_pad_0_i[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VStatus_pad_1_i[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VStatus_pad_1_i[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VStatus_pad_1_i[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VStatus_pad_1_i[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VStatus_pad_1_i[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VStatus_pad_1_i[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VStatus_pad_1_i[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VStatus_pad_1_i[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports XcvSelect_pad_0_o]
set_property IOSTANDARD LVCMOS18 [get_ports XcvSelect_pad_1_o]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports {RXP_IN[0]}]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports {RXP_IN[1]}]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports {RXP_IN[2]}]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports {RXP_IN[3]}]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports {RXP_IN[4]}]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports {RXP_IN[5]}]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports {RXP_IN[6]}]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports {RXP_IN[7]}]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports TILE0_REFCLK_PAD_P_IN]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports TILE1_REFCLK_PAD_P_IN]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports TILE2_REFCLK_PAD_P_IN]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports TILE3_REFCLK_PAD_P_IN]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports {TXP_OUT[0]}]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports {TXP_OUT[1]}]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports {TXP_OUT[2]}]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports {TXP_OUT[3]}]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports {TXP_OUT[4]}]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports {TXP_OUT[5]}]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports {TXP_OUT[6]}]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports {TXP_OUT[7]}]

set_property PACKAGE_PIN R23 [get_ports {DataIn_pad_0_i[6]}]
set_property PACKAGE_PIN P25 [get_ports {DataIn_pad_0_i[7]}]
set_property PACKAGE_PIN N27 [get_ports {DataIn_pad_0_i[4]}]
set_property PACKAGE_PIN R24 [get_ports {DataIn_pad_0_i[5]}]
set_property PACKAGE_PIN N28 [get_ports {DataIn_pad_0_i[3]}]
set_property PACKAGE_PIN N24 [get_ports {DataIn_pad_0_i[2]}]
set_property PACKAGE_PIN N25 [get_ports {DataIn_pad_0_i[1]}]
set_property PACKAGE_PIN N23 [get_ports {DataIn_pad_0_i[0]}]
set_property PACKAGE_PIN U27 [get_ports {DataIn_pad_1_i[5]}]
set_property PACKAGE_PIN R27 [get_ports {DataIn_pad_1_i[1]}]
set_property PACKAGE_PIN T28 [get_ports {DataIn_pad_1_i[3]}]
set_property PACKAGE_PIN T26 [get_ports {DataIn_pad_1_i[7]}]
set_property PACKAGE_PIN R26 [get_ports {DataIn_pad_1_i[2]}]
set_property PACKAGE_PIN U26 [get_ports {DataIn_pad_1_i[6]}]
set_property PACKAGE_PIN U28 [get_ports {DataIn_pad_1_i[4]}]
set_property PACKAGE_PIN T29 [get_ports {DataIn_pad_1_i[0]}]
set_property PACKAGE_PIN U25 [get_ports {DataOut_pad_0_o[5]}]
set_property PACKAGE_PIN P32 [get_ports {DataOut_pad_0_o[7]}]
set_property PACKAGE_PIN N32 [get_ports {DataOut_pad_0_o[6]}]
set_property PACKAGE_PIN P24 [get_ports {DataOut_pad_0_o[4]}]
set_property PACKAGE_PIN T24 [get_ports {DataOut_pad_0_o[3]}]
set_property PACKAGE_PIN T25 [get_ports {DataOut_pad_0_o[2]}]
set_property PACKAGE_PIN P26 [get_ports {DataOut_pad_0_o[1]}]
set_property PACKAGE_PIN P27 [get_ports {DataOut_pad_0_o[0]}]
set_property PACKAGE_PIN M31 [get_ports {DataOut_pad_1_o[4]}]
set_property PACKAGE_PIN N29 [get_ports {DataOut_pad_1_o[7]}]
set_property PACKAGE_PIN M30 [get_ports {DataOut_pad_1_o[5]}]
set_property PACKAGE_PIN N30 [get_ports {DataOut_pad_1_o[6]}]
set_property PACKAGE_PIN T31 [get_ports {DataOut_pad_1_o[3]}]
set_property PACKAGE_PIN R32 [get_ports {DataOut_pad_1_o[2]}]
set_property PACKAGE_PIN U31 [get_ports {DataOut_pad_1_o[1]}]
set_property PACKAGE_PIN U32 [get_ports {DataOut_pad_1_o[0]}]
set_property PACKAGE_PIN P31 [get_ports {LineState_pad_0_i[0]}]
set_property PACKAGE_PIN P30 [get_ports {LineState_pad_1_i[0]}]
set_property PACKAGE_PIN R31 [get_ports {LineState_pad_0_i[1]}]
set_property PACKAGE_PIN P29 [get_ports {LineState_pad_1_i[1]}]
set_property PACKAGE_PIN M32 [get_ports {OpMode_pad_1_o[0]}]
set_property PACKAGE_PIN R28 [get_ports {OpMode_pad_0_o[1]}]
set_property PACKAGE_PIN R29 [get_ports {OpMode_pad_0_o[0]}]
set_property PACKAGE_PIN T30 [get_ports {OpMode_pad_1_o[1]}]
set_property PACKAGE_PIN AB28 [get_ports {or1200_pm_out[0]}]
set_property PACKAGE_PIN Y26 [get_ports {or1200_pm_out[3]}]
set_property PACKAGE_PIN AB27 [get_ports {or1200_pm_out[1]}]
set_property PACKAGE_PIN Y27 [get_ports {or1200_pm_out[2]}]
set_property PACKAGE_PIN R3 [get_ports {RXN_IN[7]}]
set_property PACKAGE_PIN U3 [get_ports {RXN_IN[6]}]
set_property PACKAGE_PIN W3 [get_ports {RXN_IN[5]}]
set_property PACKAGE_PIN N3 [get_ports {RXN_IN[4]}]
set_property PACKAGE_PIN K1 [get_ports {TXN_OUT[3]}]
set_property PACKAGE_PIN J3 [get_ports {RXN_IN[2]}]
set_property PACKAGE_PIN H1 [get_ports {TXN_OUT[1]}]
set_property PACKAGE_PIN AA3 [get_ports {RXN_IN[0]}]
set_property PACKAGE_PIN W27 [get_ports {VControl_pad_0_o[2]}]
set_property PACKAGE_PIN W26 [get_ports {VControl_pad_0_o[3]}]
set_property PACKAGE_PIN W29 [get_ports {VControl_pad_0_o[0]}]
set_property PACKAGE_PIN V29 [get_ports {VControl_pad_0_o[1]}]
set_property PACKAGE_PIN V33 [get_ports {VStatus_pad_1_i[2]}]
set_property PACKAGE_PIN AA31 [get_ports {VStatus_pad_0_i[4]}]
set_property PACKAGE_PIN AA28 [get_ports {VControl_pad_1_o[1]}]
set_property PACKAGE_PIN Y28 [get_ports {VControl_pad_1_o[3]}]
set_property PACKAGE_PIN Y29 [get_ports {VControl_pad_1_o[2]}]
set_property PACKAGE_PIN AA29 [get_ports {VControl_pad_1_o[0]}]
set_property PACKAGE_PIN AB31 [get_ports {VStatus_pad_1_i[5]}]
set_property PACKAGE_PIN W30 [get_ports {VStatus_pad_0_i[7]}]
set_property PACKAGE_PIN V32 [get_ports {VStatus_pad_1_i[3]}]
set_property PACKAGE_PIN Y31 [get_ports {VStatus_pad_0_i[5]}]
set_property PACKAGE_PIN AB32 [get_ports {VStatus_pad_1_i[4]}]
set_property PACKAGE_PIN W31 [get_ports {VStatus_pad_0_i[6]}]
set_property PACKAGE_PIN V30 [get_ports {VStatus_pad_1_i[6]}]
set_property PACKAGE_PIN AC32 [get_ports {VStatus_pad_1_i[1]}]
set_property PACKAGE_PIN W32 [get_ports {VStatus_pad_0_i[3]}]
set_property PACKAGE_PIN U30 [get_ports {VStatus_pad_1_i[7]}]
set_property PACKAGE_PIN AC33 [get_ports {VStatus_pad_1_i[0]}]
set_property PACKAGE_PIN Y32 [get_ports {VStatus_pad_0_i[2]}]
set_property PACKAGE_PIN AA30 [get_ports {VStatus_pad_0_i[1]}]
set_property PACKAGE_PIN AB30 [get_ports {VStatus_pad_0_i[0]}]
set_property PACKAGE_PIN H30 [get_ports GTPRESET_IN]
set_property PACKAGE_PIN L23 [get_ports phy_rst_pad_0_o]
set_property PACKAGE_PIN G30 [get_ports or1200_clmode]
set_property PACKAGE_PIN L28 [get_ports or1200_pic_ints]
set_property PACKAGE_PIN K23 [get_ports phy_rst_pad_1_o]
set_property PACKAGE_PIN J30 [get_ports sysClk]
set_property PACKAGE_PIN T5 [get_ports TILE0_REFCLK_PAD_N_IN]
set_property PACKAGE_PIN V5 [get_ports TILE1_REFCLK_PAD_N_IN]
set_property PACKAGE_PIN P5 [get_ports TILE2_REFCLK_PAD_N_IN]
set_property PACKAGE_PIN M5 [get_ports TILE3_REFCLK_PAD_N_IN]
set_property PACKAGE_PIN E33 [get_ports reset]
set_property PACKAGE_PIN G32 [get_ports RxActive_pad_1_i]
set_property PACKAGE_PIN E32 [get_ports RxValid_pad_0_i]
set_property PACKAGE_PIN F31 [get_ports RxValid_pad_1_i]
set_property PACKAGE_PIN H27 [get_ports SuspendM_pad_0_o]
set_property PACKAGE_PIN F33 [get_ports RxActive_pad_0_i]
set_property PACKAGE_PIN M27 [get_ports SuspendM_pad_1_o]
set_property PACKAGE_PIN F30 [get_ports RxError_pad_0_i]
set_property PACKAGE_PIN E34 [get_ports RxError_pad_1_i]
set_property PACKAGE_PIN H32 [get_ports TermSel_pad_0_o]
set_property PACKAGE_PIN G31 [get_ports TermSel_pad_1_o]
set_property PACKAGE_PIN L25 [get_ports TxValid_pad_0_o]
set_property PACKAGE_PIN K26 [get_ports usb_vbus_pad_1_i]
set_property PACKAGE_PIN M25 [get_ports TxValid_pad_1_o]
set_property PACKAGE_PIN K27 [get_ports usb_vbus_pad_0_i]
set_property PACKAGE_PIN F34 [get_ports TxReady_pad_0_i]
set_property PACKAGE_PIN L26 [get_ports VControl_Load_pad_0_o]
set_property PACKAGE_PIN L24 [get_ports XcvSelect_pad_1_o]
set_property PACKAGE_PIN M26 [get_ports VControl_Load_pad_1_o]
set_property PACKAGE_PIN G33 [get_ports TxReady_pad_1_i]
set_property PACKAGE_PIN K24 [get_ports XcvSelect_pad_0_o]
