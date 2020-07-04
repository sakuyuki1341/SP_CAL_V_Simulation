# coding: utf-8

#-----------------------------
#signalを利用した繰り返しプログラム
#-----------------------------

import pigpio
import time
import os
import sys
import signal

pin_PWM = 13	# PWM信号生成ピン

# todo: 以下の変数は応急処置、上手くpwm_outやその他に組み込みたい
tmp = 0		# 一定間隔でのpwm_out実行のため使用

S_data_processed = []
S_data_processed_len = 0


def readfile():
	"""SP30-0 OSHの"Sファイル"を読み取り、前処理をして返還
	読み取った値はS_dataに文字列リストとして格納。
	S_dataに含まれている余計なデータ(日時等)を削除し、pwm設定値に変換。
	最終的にS_data_processedに整数型リストとして格納。返す。
	"""
	# todo: SP30-0 OSHのSファイルかどうかの確かめをするコードを追加

	#ファイルの読み込み
	print('select using file.')
	print(os.listdir('../Data_folder'))
	S_filename=input().strip()
	# ファイルが存在しなければ異常終了
	if(os.path.exists('../Data_folder/'+S_filename) == False):
		print('the file dose not exist ('+S_filename+')')
		sys.exit(1)
	print('reading file. wait a minute.')
	f = open('../Data_folder/' + S_filename)
	S_data = f.readlines()
	
	#前処理の実行
	S_data = S_data[3:]
	# S_dataを整数型に変換
	S_data_len = len(S_data)
	global S_data_processed
	for i in range(0, S_data_len-1):
		#アナログ値が0～1023なので、1,000,000 ÷ 1023 = 977を使用
		S_data_processed.append(977 * int(S_data[i]))


def pwm_out(arg1, arg2):
	"""S_dataのtmp番目をpwmの設定値として出力
	引数はsignalモジュールを使用するためのもので、
	この関数内で使用しない
	"""
	global tmp
	pi.hardware_PWM(pin_PWM, 40000, S_data_processed[tmp])	# (13pin, 40000Hz, pwmのデューティー比)
	tmp += 1
	#S_dataが残り4秒しかデータがなくなったとき、終了する
	if(S_data_processed_len < tmp+1000):
		sys.exit(0)

if __name__=="__main__":
	pi = pigpio.pi()
	pi.set_mode(pin_PWM, pigpio.OUTPUT)

	readfile()		# Sファイルの読み込み
	global S_data_processed_len
	S_data_processed_len = len(S_data_processed)
	
	# 4ms 間隔でpwm_outを実行
	print('doing simulating')
	signal.signal(signal.SIGALRM, pwm_out)
	signal.setitimer(signal.ITIMER_REAL, 0.004, 0.004)

	while True:
		time.sleep(1)