#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip);

function menu1(){
    clear
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1│ $NC$COLBG1                • AUTO REBOOT •                $COLOR1 │$NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e " $COLOR1┌───────────────────────────────────────────────┐${NC}"
FILE=/etc/cron.d/re_otm
if [ -f "$FILE" ]; then
rm -f /etc/cron.d/re_otm
else 
re="ok"
fi
rm -f /etc/cron.d/auto_reboot
echo "*/30 * * * * root /usr/bin/rebootvps" > /etc/cron.d/auto_reboot && chmod +x /etc/cron.d/auto_reboot
echo -e " $COLOR1│$NC [INFO] Auto Reboot Active Successfully"
echo -e " $COLOR1│$NC [INFO] Auto Reboot : Every 30 Min"
echo -e " $COLOR1│$NC [INFO] Active & Running Automaticly"
echo -e " $COLOR1└───────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌────────────────────── BY ───────────────────────┐${NC}"
echo -e "$COLOR1│${NC}                 • RstoreVPN •                 $COLOR1│$NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}" 
echo ""
read -n 1 -s -r -p "  Press any key to back on menu"
autoboot  
}
function menu2(){
        clear
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1│ $NC$COLBG1                • AUTO REBOOT •                $COLOR1 │$NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e " $COLOR1┌───────────────────────────────────────────────┐${NC}"
FILE=/etc/cron.d/re_otm
if [ -f "$FILE" ]; then
rm -f /etc/cron.d/re_otm
else 
re="ok"
fi
rm -f /etc/cron.d/auto_reboot
echo "0 * * * * root /usr/bin/rebootvps" > /etc/cron.d/auto_reboot && chmod +x /etc/cron.d/auto_reboot
echo -e " $COLOR1│$NC [INFO] Auto Reboot Active Successfully"
echo -e " $COLOR1│$NC [INFO] Auto Reboot : Every 1 Hours"
echo -e " $COLOR1│$NC [INFO] Active & Running Automaticly"
echo -e " $COLOR1└───────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌────────────────────── BY ───────────────────────┐${NC}"
echo -e "$COLOR1│${NC}                 • RstoreVPN •                 $COLOR1│$NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}" 
echo ""
read -n 1 -s -r -p "  Press any key to back on menu"
autoboot  
}
function menu3(){
        clear
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1│ $NC$COLBG1                • AUTO REBOOT •                $COLOR1 │$NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e " $COLOR1┌───────────────────────────────────────────────┐${NC}"
FILE=/etc/cron.d/re_otm
if [ -f "$FILE" ]; then
rm -f /etc/cron.d/re_otm
else 
re="ok"
fi
rm -f /etc/cron.d/auto_reboot
echo "0 */12 * * * root /usr/bin/rebootvps" > /etc/cron.d/auto_reboot && chmod +x /etc/cron.d/auto_reboot
echo -e " $COLOR1│$NC [INFO] Auto Reboot Active Successfully"
echo -e " $COLOR1│$NC [INFO] Auto Reboot : Every 12 Hours"
echo -e " $COLOR1│$NC [INFO] Active & Running Automaticly"
echo -e " $COLOR1└───────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌────────────────────── BY ───────────────────────┐${NC}"
echo -e "$COLOR1│${NC}                 • RstoreVPN •                 $COLOR1│$NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}" 
echo ""
read -n 1 -s -r -p "  Press any key to back on menu"
autoboot  
}
function menu4(){
        clear
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1│ $NC$COLBG1                • AUTO REBOOT •                $COLOR1 │$NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e " $COLOR1┌───────────────────────────────────────────────┐${NC}"
FILE=/etc/cron.d/re_otm
if [ -f "$FILE" ]; then
rm -f /etc/cron.d/re_otm
else 
re="ok"
fi
rm -f /etc/cron.d/auto_reboot
echo "0 0 * * * root /usr/bin/rebootvps" > /etc/cron.d/auto_reboot && chmod +x /etc/cron.d/auto_reboot
echo -e " $COLOR1│$NC [INFO] Auto Reboot Active Successfully"
echo -e " $COLOR1│$NC [INFO] Auto Reboot : Every 24 Hours"
echo -e " $COLOR1│$NC [INFO] Active & Running Automaticly"
echo -e " $COLOR1└───────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌────────────────────── BY ───────────────────────┐${NC}"
echo -e "$COLOR1│${NC}                 • RstoreVPN •                 $COLOR1│$NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}" 
echo ""
read -n 1 -s -r -p "  Press any key to back on menu"
autoboot  
}
clear
echo -e "$PURPLE┌─────────────────────────────────────────────────┐${NC}"
echo -e "$PURPLE│ ${BLUE}                $NC•$BLUE AUTO REBOOT $NC•                $PURPLE │$NC"
echo -e "$PURPLE└─────────────────────────────────────────────────┘${NC}"
echo -e " $PURPLE┌───────────────────────────────────────────────┐${NC}"
echo -e " $PURPLE│$NC   ${COLOR1}[${BLUE}01${NC}]  Every 30 Min  "
echo -e " $PURPLE│$NC   ${COLOR1}[${BLUE}02${NC}]  Every 60 Min  "
echo -e " $PURPLE│$NC   ${COLOR1}[${BLUE}03${NC}]  Every 12 H/s "
echo -e " $PURPLE│$NC   ${COLOR1}[${BLUE}04${NC}]  Every 24 H/s"
echo -e " $PURPLE│$NC "
echo -e " $PURPLE│$NC   ${COLOR1}[${BLUE}00${NC}]  Go Back"
echo -e " $PURPLE└───────────────────────────────────────────────┘${NC}"
echo -e "$PURPLE┌──────────────────────${NC} BY $PURPLE───────────────────────┐${NC}"
echo -e "$PURPLE│${BLUE}                 $NC•$BLUE RstoreVPN $NC•                $PURPLE│$NC"
echo -e "$PURPLE└─────────────────────────────────────────────────┘${NC}" 
echo -e ""
read -p "  Select menu :  "  opt
echo -e ""
case $opt in
01 | 1) clear ; menu1 ;;
02 | 2) clear ; menu2 ;;
03 | 3) clear ; menu3 ;;
04 | 4) clear ; menu4 ;;
00 | 0) clear ; menu-set ;;
*) clear ; autoboot ;;
esac


