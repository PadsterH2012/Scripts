#! /bin/bash
whiptail --title "Configuration" --yesno --defaultno "Do you require a new configuration." 8 78
exitstatus=$?
if [ $exitstatus = 0 ]; then
    status="0"
    while [ "$status" -eq 0 ]  
    do
        whiptail --title "Config" --checklist "Choose:" 20 78 15 \
  "Bitcoin" "" on \
  "Litecoin" "" off \
  "Feathercoin" "" off \
  "Dogecoin" "" off \

# If "bitcoin" is selected, run this function:
function Bitcoin {
echo "You chose Bitcoin"
}

# If "litecoin" is selected, run this function:
function Litecoin {
echo "You chose Litecoin"
}

# If "feathercoin" is selected, run this function:
function Feathercoin {
echo "You chose Feathercoin"
}

# If "dogecoin" is selected, run this function:
function Gogecoin {
echo "You chose Dogecoin"
}
