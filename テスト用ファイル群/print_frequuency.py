#endoding: utf8

import pigpio, sys		#ライブラリのインポート

gpio_PWM = 13	# PWM出力するピン
freq = (int)(sys.argv[1])	# コマンドライン引数で与えられたPWM周波数

pi = pigpio.pi()	# GPIOにアクセスするためのインスタンスを作成
pi.set_mode(gpio_PWM, pigpio.OUTPUT)	# GPIO pin を出力設定
pi.set_PWM_frequency(gpio_PWM, freq)	# PWM 周波数の設定

print(pi.get_PWM_frequency(gpio_PWM))	# 実際に設定された PWM 周波数の読み込みと表示
pi.stop()	# pigpio リソースの解法