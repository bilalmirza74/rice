#!/bin/bash

# Replace XX:XX:XX:XX:XX:XX with the Bluetooth devic>
BT_DEVICE="EB:06:EF:73:18:77"

# Connect to the Bluetooth device
bluetoothctl << EOF
connect $BT_DEVICE
exit
EOF
