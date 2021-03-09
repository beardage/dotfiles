#!/bin/sh

kill -9 $(ps aux | grep 'gvfs-gphoto2-volume-monitor' | awk '{print $2}')
kill -9 $(ps aux | grep 'gvfsd-gphoto2 --spawner' | awk '{print $2}')

gphoto2 --auto-detect

echo 'camera ready for capture';

gphoto2 --stdout --capture-movie | ffmpeg -hwaccel nvdec -c:v mjpeg_cuvid -i - -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video0
