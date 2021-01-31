#查看耗资源的进程
top

#获取进程的启动文件
ls -l /proc/$PID/exe

#杀死进程并移除文件
kill -9 580&&rm -r -f  /tmp/network01
