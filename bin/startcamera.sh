#!/bin/sh

kill $(ps aux | grep 'gvfs-gphoto2-volume-monitor' | awk '$2')
kill $(ps aux | grep 'gvfsd-gphoto2 --spawner' | awk '$2')

echo gphoto2 --auto-detect
echo 'camera ready for capture';

gphoto2 --stdout --capture-movie | ffmpeg -hwaccel nvdec -c:v mjpeg_cuvid -i - -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video0
