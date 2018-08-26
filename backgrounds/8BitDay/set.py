#!/usr/bin/python

import datetime
import os
import shutil

os.chdir('/home/yodal/.local/share/backgrounds/8BitDay/')

time = datetime.datetime.now().hour  # no need for string parsing to get the hour

# Gets out the new wallpaper based on time
if 2 <= time < 5:
	shutil.copy('12-Late-Night.png', 'now.png')
elif 5 <= time < 6:
	shutil.copy('01-Early-Morning.png', 'now.png')
elif 6 <= time < 7:
	shutil.copy('02-Mid-Morning.png', 'now.png')
elif 7 <= time < 9:
	shutil.copy('03-Late-Morning.png', 'now.png')
elif 9 <= time < 11:
	shutil.copy('04-Early-Afternoon.png', 'now.png')
elif 11 <= time < 14:
	shutil.copy('05-Mid-Afternoon.png', 'now.png')
elif 14 <= time < 18:
	shutil.copy('06-Late-Afternoon.png', 'now.png')
elif 18 <= time < 19:
	shutil.copy('07-Early-Evening.png', 'now.png')
elif 19 <= time < 20:
	shutil.copy('08-Mid-Evening.png', 'now.png')
elif 20 <= time < 21:
	shutil.copy('09-Late-Evening.png', 'now.png')
elif 21 <= time < 22:
	shutil.copy('10-Early-Night.png', 'now.png')
else:
	shutil.copy('11-Mid-Night.png', 'now.png')
