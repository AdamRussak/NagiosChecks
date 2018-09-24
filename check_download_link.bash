#!/bin/bash
#                           !!!!!!!!! writing by: Adam Russak !!!!!!!!!
#Command to Download a Using WGET with Accepting $1 and Outpot of data to /dev/null and Wget screen outpot to <output/file/print-out>
wget -O /dev/null $1 &> <output/file/print-out>

#if Download is Sucessfull the script Exits with Exit Code 0 if there is an error Exit Code 2 & if UNKOWN Exit Code 3
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
