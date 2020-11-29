# conding: utf-8

import pigpio
import time
import os
import sys

pin_PWM = 13	#PWM信号生成ピン

def readfile():
	"""SP30-0 OSHの"Sファイル"を読み取り、前処理をして返還
	読み取った値はS_dataに文字列リストとして格納。
	S_dataの先頭部分に含まれている余計なデータ(日時等)を削除。
	最終的にS_data_iに整数型リストとして格納。返す。
	"""
	# todo: SP30-0 OSHのSファイルかどうかの確かめをする処理を追加

	# ファイルの読み込み
	print('select using file')
	print(os.listdir('/home/pi/SPL/CAL_V_Simulation/Data_folder'))
	S_filename = input().strip()
	# ファイルが存在しなければ異常終了
	if (os.path.exists('/home/pi/SPL/CAL_V_Simulation/Data_folder/' + S_filename) == False):
		print('the file dose not exist (' + S_filename + ')')
		sys.exit(1)
	
	print('reading file. wait a minute.')
	f = open('/home/pi/SPL/CAL_V_Simulation/Data_folder/' + S_filename)
	S_data = f.readlines()

	# 前処理の実行
	S_data = S_data[3:]
	## 文字列リストから整数リストへ
	S_data_i = [int(s) for s in S_data]

	print('reading completed')
	return S_data_i

if __name__ == "__main__":
	pi = pigpio.pi()
	pi.set_mode(pin_PWM, pigpio.OUTPUT)
	pi.set_PWM_frequency(pin_PWM, 8000)
	# Sファイルのデータは0~1023の値をとるため、rangeの第二引数は1023とする
	pi.set_PWM_range(pin_PWM, 1023)
	pi.set_PWM_dutycycle(pin_PWM, 0)

	# Sファイルの読み込み
	S_data = readfile()

	print('doing simulating')
	# 1ms間隔でpwm_outを実行
	S_data_len = len(S_data)
	time_start = time.time()
	for i in range(0, S_data_len-1):
		## 1ms間隔にするために、元々は4ms間隔のデータの間を埋める
		## 処理速度維持のため、間を埋めたい2データ間を直線とみなし、計算する。(2次近似などは行わない)
		## todo: この埋める処理を、事前に別関数で２次近似するなどしてもいいかもしれない

		## 現在、4ms毎のファイル(SP30のファイル)ではなく20ms毎のファイル(SP38のファイル)を読む機会が多く、
		## それに対応して一部数値を変更してあります。SP30のファイルを読む際は気をつけてください。
		for j in range(20):		#4ms毎のファイルの場合、ココをrange(4)へ変更
			## 送信データの計算
			sending_data = (S_data[i + 1] - S_data[i])/20.00 *j + S_data[i]		#4ms毎のファイルの場合、20.0を4.0へ変更
			#最大値での出力を行うとデータが振り切れるため、制限を行う。
			sending_data = sending_data / 6
			## BusyWaitを使って1ms待機
			while True:
				time_now = time.time()
				if (time_now - time_start > 0.001):
					break
			## memo: BusyWait以外の手法(time.sleep, thread, signal)を試したが、それらは安定しなかった。
			
			pi.set_PWM_dutycycle(pin_PWM, int(sending_data))
			## 次の再生時間を計算
			time_start = time_start + 0.001
