docker stop jreport jreportDesigner
docker rm jreport jreportDesigner
docker run -d -p 18888:8888 -p 18887:8887 -p 18889:8889 --name "jreport" devbhuwan/jreport
timeout /t 20 /nobreak
xhost +
docker run -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --name "jreportDesigner" devbhuwan/jreport bash /usr/local/jreport/Designer/bin/JReport.sh
