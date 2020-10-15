#!/usr/bin/python
# coding:utf-8
import time
import RPi.GPIO as GPIO
import os

GPIO.setmode(GPIO.BCM)

#GPIO22pinを入力モードとし、pull up設定とします
GPIO.setup(22, GPIO.IN, pull_up_down = GPIO.PUD_UP)

while True:
    GPIO.wait_for_edge(22, GPIO.FALLING)
    sw_counter=0
    
    while True:
        sw_status = GPIO.input(22)
		    #長く(0.01秒×100回ループ)押された時だけシャットダウンするようにする
        if sw_status == 0:
            sw_counter = sw_counter + 1
            if sw_counter >= 100:
                print("長押し検知")
                os.system("sudo shutdown -h now")
                break
        #短く押された時は無視する(誤操作防止)
        else:
            print("短押し検知")
            break
            
        time.sleep(0.01)

    print(sw_counter)