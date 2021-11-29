# rb5_lib


This repository contains packages and libraries for the Qualcomm RB5 development platform. The dependencies correspond to various ROS nodes available at [rb5_ros]()

## Kernel Modules

For convenience, a number of kernel modules have been precompiled using the <code>4.19.125</code> release. To load, follow the instructions below. If a different version is needed, driver specific Makefiles can be found in their corresponding directories.

<ul>
  <li> CH341: Implements a serial port driver. To load, use <code>modules/install_ch341.sh</code>. </li>
  <li> JOYDEV: Implements a joystick device driver. To load, use <code>modules/install_joydev.sh</code>. </li>
</ul>
