#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo -e "\n------------------ startup of pulseaudio loop devices  ------------------"
# start if not already running
pulseaudio --start

# setup loop devices
pacmd load-module module-null-sink sink_name=loop_mic sink_properties=device.description=Microphone
pacmd load-module module-null-sink sink_name=loop_spk sink_properties=device.description=Speaker

# set default devices for igr
pacmd set-default-sink loop_spk
pacmd set-default-source loop_mic.monitor
