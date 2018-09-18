#!/bin/bash


wget -O /dev/null $1 &> <output/file/print-out>

if grep -q "100%" /<output/file/print-out>; then
        echo "OK"
        exit 0

        elif grep -q "ERROR 404" <output/file/print-out>; then
                echo "CRITICAL"
                exit 2

        else
                echo "UNKNOWN"
                exit 3

fi
