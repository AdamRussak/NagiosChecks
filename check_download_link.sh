#!/bin/bash


wget -O /home/xoreax/outpot $1 &> /home/xoreax/test

if grep -q "100%" /home/xoreax/test; then
        echo "OK"
        rm -f /home/xoreax/outpot
        exit 0

        elif grep -q "ERROR 404" /home/xoreax/test; then
                echo "CRITICAL"
                rm -f /home/xoreax/outpot
                exit 2

        else
                echo "UNKNOWN"
                rm -f /home/xoreax/outpot
                exit 3

fi

