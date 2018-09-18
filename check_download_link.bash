#!/bin/bash


wget -O <output/file> $1 &> <output/file/print-out>

if grep -q "100%" /<output/file/print-out>; then
        echo "OK"
        rm -f <output/file>
        exit 0

        elif grep -q "ERROR 404" <output/file/print-out>; then
                echo "CRITICAL"
                rm -f <output/file>
                exit 2

        else
                echo "UNKNOWN"
                rm -f <output/file>
                exit 3

fi
