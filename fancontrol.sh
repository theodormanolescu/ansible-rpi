#! /bin/sh

case "$1" in
  start)
    sleep 20
    chmod og+rwx "/dev/gpio*"
    echo "Starting fancontrol.py"
    /usr/local/bin/fancontrol.py &
    ;;
  stop)
    echo "Stopping fancontrol.py"
    pkill -f /usr/local/bin/fancontrol.py
    ;;
  *)
    echo "Usage: /etc/init.d/fancontrol.sh {start|stop}"
    exit 1
    ;;
esac

exit 0
