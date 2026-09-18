# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\ECE520\Vivado\Lab2\axi_gpio_ab\axi_gpio_vitis_T1\axi_gpio_app_tb_system\_ide\scripts\debugger_axi_gpio_app_tb-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\ECE520\Vivado\Lab2\axi_gpio_ab\axi_gpio_vitis_T1\axi_gpio_app_tb_system\_ide\scripts\debugger_axi_gpio_app_tb-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351B3FE7AA" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351B3FE7AA-13722093-0"}
fpga -file C:/ECE520/Vivado/Lab2/axi_gpio_ab/axi_gpio_vitis_T1/axi_gpio_app_tb/_ide/bitstream/axi_gpio_ab_wrapper_T1.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/ECE520/Vivado/Lab2/axi_gpio_ab/axi_gpio_vitis_T1/axi_gpio_platform_T1/export/axi_gpio_platform_T1/hw/axi_gpio_ab_wrapper_T1.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/ECE520/Vivado/Lab2/axi_gpio_ab/axi_gpio_vitis_T1/axi_gpio_app_tb/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/ECE520/Vivado/Lab2/axi_gpio_ab/axi_gpio_vitis_T1/axi_gpio_app_tb/Debug/axi_gpio_app_tb.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
