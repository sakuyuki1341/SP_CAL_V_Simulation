#!/bin/sh
sudo /usr/bin/pigpiod -s 1
/home/pi/SPL/CAL_V_Simulation/シャットダウンボタン/shutdown.py
