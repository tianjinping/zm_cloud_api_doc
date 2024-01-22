#!/bin/bash

# ./jekyll_control.sh start
# ./jekyll_control.sh stop

# 定义变量
JEKYLL_COMMAND="bundler exec jekyll"
JEKYLL_OPTIONS="server --host 0.0.0.0 --port 10000"
PID_FILE="jekyll.pid"

# 启动Jekyll服务
start() {
  nohup $JEKYLL_COMMAND $JEKYLL_OPTIONS > /dev/null 2>&1 &
  echo $! > $PID_FILE
  echo "Jekyll服务已启动。"
}

# 停止Jekyll服务
stop() {
  kill $(cat $PID_FILE)
  rm -f $PID_FILE
  echo "Jekyll服务已停止。"
}

# 根据参数执行相应操作
case "$1" in
  start)
    start
    ;;
  stop)
    stop
    ;;
  *)
    echo "用法： $0 {start|stop}"
    exit 1
    ;;
esac