#!/bin/bash

case $1 in
    start)
        echo "Starting the service..."
        ;;
    stop)
        echo "Stopping the service..."
        ;;
    restart)
        echo "Restarting the service..."
        ;;
    status)
        echo "Service status: Running"
        ;;
    *)
        echo "Usage: $0 {start|stop|restart|status}"
        ;;
esac