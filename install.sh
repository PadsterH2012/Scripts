#!/bin/bash

#clear
function BTC {
echo "You have chosen Bitcoin"
}
function LTC {
echo "You have chosen Litecoin"
}
function DOGE {
echo "You have chosen Dogecoin"
}
function FTH {
echo "You have chosen Feathercoin"
}
function Port {
echo "You have chosen to change default webport"
}

whiptail --title "Options:" --checklist --separate-output "Please choose:" 20 78 15 \
Port "change default port from 8081" off \
BTC "bitcoin" off \
LTC "litecoin" off \
DOGE "dogecoin" off \
FTH "feathercoin" off 2>results

while read choice
do
        case $choice in
                Port) Port
                ;;
                BTC) BTC
                ;;
                LTC) LTC
                ;;
                DOGE) DOGE
                ;;
                FTH) FTH
                ;;
                *)
                ;;
        esac
done < results
