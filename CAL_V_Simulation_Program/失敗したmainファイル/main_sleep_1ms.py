# coding: utf-8

#-----------------------------
#time.sleepを利用した繰り返しプログラム
#-----------------------------

import pigpio
import time
import os
import sys

pin_PWM = 13	# PWM信号生成ピン

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
	S_data_processed = []
	for i in range(0, S_data_len-1):
		#アナログ値が0～1023なので、1,000,000 ÷ 1023 = 977を使用
		S_data_processed.append(977 * int(S_data[i]))

	print('reading completed.')
	return S_data_processed

if __name__=="__main__":
	pi = pigpio.pi()
	pi.set_mode(pin_PWM, pigpio.OUTPUT)

	S_data = readfile()		# Sファイルの読み込み

	# 1ms 間隔でpwm_outを実行
	print('doing simulating.')

	S_data_len = len(S_data)
	for i in range(0, S_data_len-1):
		# 1ms 間隔にするために、4ms間隔のデータの間を埋める
		# 処理速度の維持のため、２点間の間を直線として計算する。(近似などはしない)
		for j in range(0, 3):
			# 送信データの計算
			sending_data = (S_data[i+1] - S_data[i]) /4 *j + S_data[i]
			pi.hardware_PWM(pin_PWM, 40000, int(sending_data))
			time.sleep(0.0009)
		#時間のズレの確認用
		if(i % 1000 == 0):
			print(time.time())