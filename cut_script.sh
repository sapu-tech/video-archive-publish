#!/bin/sh
if [ "$1" == "1phase" ]
then
#ffmpeg              -i source.mp4 -to 00:02:48 -c copy -avoid_negative_ts 1 cut/0.mp4
#ffmpeg -ss 00:02:58 -i source.mp4 -to 00:13:18 -c copy -avoid_negative_ts 1 cut/1.mp4
ffmpeg -ss 00:16:16 -i source.mp4 -to 00:07:14 -c copy -avoid_negative_ts 1 cut/2.mp4
ffmpeg -ss 00:23:30 -i source.mp4 -to 00:08:20 -c copy -avoid_negative_ts 1 cut/3.mp4
ffmpeg -ss 00:31:50 -i source.mp4 -to 00:07:57 -c copy -avoid_negative_ts 1 cut/4.mp4
ffmpeg -ss 00:39:47 -i source.mp4 -to 00:14:25 -c copy -avoid_negative_ts 1 cut/5.mp4
ffmpeg -ss 00:54:12 -i source.mp4 -to 00:13:10 -c copy -avoid_negative_ts 1 cut/6.mp4
ffmpeg -ss 01:07:22 -i source.mp4 -to 00:08:43 -c copy -avoid_negative_ts 1 cut/7.mp4
ffmpeg -ss 01:16:44 -i source.mp4 -to 00:10:42 -c copy -avoid_negative_ts 1 cut/8.mp4
ffmpeg -ss 01:27:26 -i source.mp4 -to 00:04:18 -c copy -avoid_negative_ts 1 cut/9.mp4
ffmpeg -ss 01:31:56 -i source.mp4 -to 00:12:11 -c copy -avoid_negative_ts 1 cut/10.mp4
ffmpeg -ss 01:44:15 -i source.mp4 -to 00:12:09 -c copy -avoid_negative_ts 1 cut/11.mp4
ffmpeg -ss 01:58:32 -i source.mp4              -c copy -avoid_negative_ts 1 cut/12.mp4
fi

if [ "$1" == "2phase" ]
then
ffmpeg -i 4/dbx.mp4    -to 11:00 -c copy 4/dbx_fine.mp4
ffmpeg -i 4/bygsan.mp4 -to 09:25 -c copy 4/bygsan_fine.mp4
ffmpeg -i 4/ame.mp4    -to 28:03 -c copy 4/ame_fine.mp4
ffmpeg -i 4/bygsi.mp4  -to 21:07 -c copy 4/bygsi_fine.mp4
fi
