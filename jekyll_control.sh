#!/bin/bash

# ./jekyll_control.sh start
# ./jekyll_control.sh stop

# �������
JEKYLL_COMMAND="bundler exec jekyll"
JEKYLL_OPTIONS="server --host 0.0.0.0 --port 10000"
PID_FILE="jekyll.pid"

# ����Jekyll����
start() {
  nohup $JEKYLL_COMMAND $JEKYLL_OPTIONS > /dev/null 2>&1 &
  echo $! > $PID_FILE
  echo "Jekyll������������"
}

# ֹͣJekyll����
stop() {
  kill $(cat $PID_FILE)
  rm -f $PID_FILE
  echo "Jekyll������ֹͣ��"
}

# ���ݲ���ִ����Ӧ����
case "$1" in
  start)
    start
    ;;
  stop)
    stop
    ;;
  *)
    echo "�÷��� $0 {start|stop}"
    exit 1
    ;;
esac