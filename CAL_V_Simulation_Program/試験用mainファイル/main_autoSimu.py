# conding: utf-8

import pigpio
import time
import os
import sys

pin_PWM = 13	#PWM信号生成ピン
PWM_FREQ = 40000	#PWM信号の周波数
PWM_RANGE = 1023	#PWM信号の分解能

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


def do_simulation(S_data):
	"""1ms間隔でpwm信号を変化させつつ出力
	受け取ったS_dataは本来4ms間隔のデータのため、間を埋める必要がある。
	間を埋める際は、2つのデータ間を直線とみなし、計算。(2次近似などは行わない)
	1ms間隔はBusyWaitを用いて実現している。
	"""
	# todo1: データ間の埋め合わせるを、事前に2次近似してもいいかもしれない
	# todo2: BusyWaitでも若干間隔のズレが生じるため、そこの精度を上げたい
	## memo: time.sleepは安定しなかった。thread, signalは技術的に実装ができなかった
	S_data_len = len(S_data)
	time_start = time.time()
	for i in range(0, S_data_len-1):
		# 1ms間隔で出力
		for j in range(0, 3):
			## 送信データの計算
			sending_data = (S_data[i + 1] - S_data[i])/4 *j + S_data[i]
			## BusyWaitを使って1ms待機
			while True:
				time_now = time.time()
				if (time_now - time_start > 0.001):
					break
			#print(time.time())		#時間のズレ確認用に使用
			pi.set_PWM_dutycycle(pin_PWM, int(sending_data))
			## 処理の開始時間を記録
			time_start = time.time()


if __name__ == "__main__":
	pi = pigpio.pi()
	pi.set_mode(pin_PWM, pigpio.OUTPUT)
	pi.set_PWM_frequency(pin_PWM, PWM_FREQ)
	# Sファイルのデータは0~1023の値をとるため、rangeの第二引数は1023とする
	pi.set_PWM_range(pin_PWM, PWM_RANGE)

	# Sファイルの読み込み
	S_data = readfile()

	print('doing simulating')
	# シミュレーション開始
	do_simulation(S_data)