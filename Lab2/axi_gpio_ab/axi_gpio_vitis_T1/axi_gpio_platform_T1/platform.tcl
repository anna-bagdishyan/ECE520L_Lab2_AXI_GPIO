# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\ECE520\Vivado\Lab2\axi_gpio_ab\axi_gpio_vitis_T1\axi_gpio_platform_T1\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\ECE520\Vivado\Lab2\axi_gpio_ab\axi_gpio_vitis_T1\axi_gpio_platform_T1\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {axi_gpio_platform_T1}\
-hw {C:\ECE520\Vivado\Lab2\axi_gpio_ab\axi_gpio_ab_wrapper_T1.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/ECE520/Vivado/Lab2/axi_gpio_ab/axi_gpio_vitis_T1}

platform write
platform generate -domains 
platform active {axi_gpio_platform_T1}
platform generate
platform generate
