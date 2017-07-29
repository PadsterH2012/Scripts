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

whiptail --title "Test" --checklist --separate-output "Choose:" 20 78 15 \
BTC "bitcoin" off \
LTC "litecoin" off \
DOGE "dogecoin" off \
FTH "feathercoin" off 2>results

while read choice
do
        case $choice in
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
