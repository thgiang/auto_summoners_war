while true
do
	#An nut Bat dau
	now=$(date +"%T")
	echo "$now: Start new match"
	x=$(( $RANDOM % 288 + 1830 ))
	y=$(( $RANDOM % 107 + 711 ))
	press_time=$(( $RANDOM % 100 + 100 ))
	adb shell input swipe $x $y $x $y $press_time

	#Cho 180s + random(60s) de ket thuc tran dau
	s=$(( $RANDOM % 30 + 200 ))
	sleep $s

	#Chup man hinh xem thua hay thang
	adb shell screencap -p "\/sdcard\/screencap.png";
	cmd "/C download.bat";
	color=`magick screencap.png -format '%[pixel:p{1900,555}]' info:-;`
	mau_vien_crytal='srgba(240,52,105,1)';

	if [ "$color" = "$mau_vien_crytal" ]; then
	#Truong hop Win
		now=$(date +"%T")
		echo "$now: Win"
		#An nut linh tinh tren man hinh de hien hop qua
		x=$(( $RANDOM % 320 + 1680 ))
		y=$(( $RANDOM % 200 + 690 ))
		for i in {1..4}
		do
		 	x2=$(( $RANDOM % 50 + $x ))
			y2=$(( $RANDOM % 50 + $y ))
			press_time=$(( $RANDOM % 100 + 100 ))
			adb shell input swipe $x2 $y2 $x2 $y2 $press_time
			s=$(( $RANDOM % 1 + 1))
			sleep $s
		done

		#An nut OK
		sleep 2
		# Tim xem day la nut nhan rune hay nhan vat pham khac
		adb shell screencap -p "\/sdcard\/screencap.png";
		cmd "/C download.bat";
		color=`magick screencap.png -format '%[pixel:p{1160,910}]' info:-;`
		
		# Move anh sang thu muc results
		now=$(date +"%T")
		mv screencap.png results/$now.png
		
		# Tim xem day la nut nhan rune hay nhan vat pham khac
		mau_khi_co_2_nut='srgba(37,24,15,1)';
		if [ "$color" = "$mau_khi_co_2_nut" ]; then
			x=$(( $RANDOM % 210 + 1217 ))
			y=$(( $RANDOM % 70 + 830 ))
			press_time=$(( $RANDOM % 100 + 100 ))
			adb shell input swipe $x $y $x $y $press_time
			#echo 'Da an nhan Rune';
		else
			x=$(( $RANDOM % 200 + 1060 ))
			y=$(( $RANDOM % 70 + 855 ))
			press_time=$(( $RANDOM % 100 + 100 ))
			adb shell input swipe $x $y $x $y $press_time

			x=$(( $RANDOM % 210 + 1060 ))
			y=$(( $RANDOM % 70 + 880 ))
			press_time=$(( $RANDOM % 100 + 100 ))
			adb shell input swipe $x $y $x $y $press_time
			#echo 'Da an nhan Da';
		fi

		#Nghi vai giay
		s=$(( $RANDOM % 3 + 2))
		sleep $s

		#An nut Choi lai
		x=$(( $RANDOM % 400 + 560 ))
		y=$(( $RANDOM % 100 + 540 ))
		press_time=$(( $RANDOM % 100 + 100 ))
		adb shell input swipe $x $y $x $y $press_time
	else
	#Truong hop Lose
		now=$(date +"%T")
		echo "$now: Lose"
		#echo "An nut KHONG"
		x=$(( $RANDOM % 330 + 1275 ))
		y=$(( $RANDOM % 83 + 660 ))
		press_time=$(( $RANDOM % 100 + 100 ))
		adb shell input swipe $x $y $x $y $press_time
		s=$(( $RANDOM % 3 + 3))
		sleep $s

		#echo "An nut chuan bi"
		x=$(( $RANDOM % 400 + 560 ))
		y=$(( $RANDOM % 100 + 540 ))
		press_time=$(( $RANDOM % 100 + 100 ))
		adb shell input swipe $x $y $x $y $press_time
		s=$(( $RANDOM % 2 + 1))
		sleep $s
		x=$(( $RANDOM % 400 + 560 ))
		y=$(( $RANDOM % 100 + 540 ))
		press_time=$(( $RANDOM % 100 + 100 ))
		adb shell input swipe $x $y $x $y $press_time
	fi
	
	#Kiem tra xem co het Enery ko
	s=$(( $RANDOM % 3 + 2))
	sleep $s
	adb shell screencap -p "\/sdcard\/screencap.png";
	cmd "/C download.bat";
	color=`magick screencap.png -format '%[pixel:p{880,650}]' info:-;`
	het_enery='srgba(214,173,81,1)';
	if [ "$color" = "$het_enery" ]; then
		#Click nut Shop
		now=$(date +"%T")
		echo "$now: Mua crytal"
		s=$(( $RANDOM % 2 + 1))
		sleep $s
		x=$(( $RANDOM % 200 + 860 ))
		y=$(( $RANDOM % 60 + 640 ))
		press_time=$(( $RANDOM % 100 + 100 ))
		adb shell input swipe $x $y $x $y $press_time

		#Click chon mua enery
		s=$(( $RANDOM % 2 + 3))
		sleep $s
		x=$(( $RANDOM % 200 + 870 ))
		y=$(( $RANDOM % 200 + 430 ))
		press_time=$(( $RANDOM % 100 + 100 ))
		adb shell input swipe $x $y $x $y $press_time
		
		# Nut dong y mua
		s=$(( $RANDOM % 2 + 2))
		sleep $s
		x=$(( $RANDOM % 140 + 880 ))
		y=$(( $RANDOM % 70 + 625 ))
		press_time=$(( $RANDOM % 100 + 100 ))
		adb shell input swipe $x $y $x $y $press_time

		# Nut Ok giao dich thanh cong
		s=$(( $RANDOM % 2 + 2))
		sleep $s
		x=$(( $RANDOM % 140 + 1060 ))
		y=$(( $RANDOM % 60 + 620 ))
		press_time=$(( $RANDOM % 100 + 100 ))
		adb shell input swipe $x $y $x $y $press_time


		# Nut dong sau khi mua
		s=$(( $RANDOM % 2 + 2))
		sleep $s
		x=$(( $RANDOM % 200 + 1060 ))
		y=$(( $RANDOM % 70 + 900 ))
		press_time=$(( $RANDOM % 100 + 100 ))
		adb shell input swipe $x $y $x $y $press_time

		# Nut giao dich hoan thanh
		s=$(( $RANDOM % 2 + 2))
		sleep $s
		x=$(( $RANDOM % 140 + 1060 ))
		y=$(( $RANDOM % 60 + 620 ))
		press_time=$(( $RANDOM % 100 + 100 ))
		adb shell input swipe $x $y $x $y $press_time

		#An nut Choi lai
		s=$(( $RANDOM % 2 + 2))
		sleep $s
		x=$(( $RANDOM % 400 + 560 ))
		y=$(( $RANDOM % 100 + 540 ))
		press_time=$(( $RANDOM % 100 + 100 ))
		adb shell input swipe $x $y $x $y $press_time
	fi
done
