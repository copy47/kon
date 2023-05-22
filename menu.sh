#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;37m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
COLOR1='\033[0;34m'
COLBG1='\033[0;36m'
# =========================================
vlx=$(grep -c -E "^#& " "/etc/xray/config.json")
let vla=$vlx/2
vmc=$(grep -c -E "^### " "/etc/xray/config.json")
let vma=$vmc/2
ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"

trx=$(grep -c -E "^#! " "/etc/xray/config.json")
let tra=$trx/2
ssx=$(grep -c -E "^## " "/etc/xray/config.json")
let ssa=$ssx/2




# // Exporting IP Address
export IP=$( curl -s https://ipinfo.io/ip/ )

# // SSH Websocket Proxy
#ssh_ws=$( systemctl status ws-epro | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
#if [[ $ssh_ws == "running" ]]; then
#    status_ws="${GREEN}ON${NC}"
#else
#    status_ws="${RED}OFF${NC}"
#fi

# // nginx
nginx=$( systemctl status nginx | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $nginx == "running" ]]; then
    status_nginx="${GREEN}ON${NC}"
else
    status_nginx="${RED}OFF${NC}"
fi

# // SSH Websocket Proxy
xray=$(/etc/init.d/ssh status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
if [[ $xray == "running" ]]; then
    status_xray="${GREEN}ON${NC}"
else
    status_xray="${RED}OFF${NC}"
fi
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
tram=$( free -m | awk 'NR==2 {print $2}' )
uram=$( free -m | awk 'NR==2 {print $3}' )
fram=$( free -m | awk 'NR==2 {print $4}' )
clear
clear
function add-host(){
clear
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1│ ${COLBG1}               • ADD VPS HOST •                ${NC} $COLOR1│$NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
read -rp "  New Host Name : " -e host
echo ""
if [ -z $host ]; then
echo -e "  [INFO] Type Your Domain/sub domain"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo ""
read -n 1 -s -r -p "  Press any key to back on menu"
menu
else
echo "IP=$host" > /var/lib/ssnvpn-pro/ipvps.conf
echo ""
echo "  [INFO] Dont forget to renew cert"
echo ""
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo ""
read -n 1 -s -r -p "  Press any key to Renew Cret"
crtxray
fi
}
clear
clear
echo -e "$COLOR1┌────────────────────────────────────────────────────────────┐${NC}"
echo -e "${COLBG1}                      • INFORMASI VPS •                    \E[0m"
echo -e "$COLOR1└────────────────────────────────────────────────────────────┘${NC}"
echo -e "  ${BLUE}• ${GREEN}Sever Uptime        ${BLUE}• ${NC}$( uptime -p  | cut -d " " -f 2-10000 ) "
echo -e "  ${BLUE}• ${GREEN}Current Time        ${BLUE}•${NC} $( date -d "0 days" +"%d-%m-%Y | %X" )"
echo -e "  ${BLUE}• ${GREEN}Operating System    ${BLUE}• ${NC}$( cat /etc/os-release | grep -w PRETTY_NAME | sed 's/PRETTY_NAME//g' | sed 's/=//g' | sed 's/"//g')( $(uname -m))"
echo -e "  ${BLUE}• ${GREEN}Current Domain      ${BLUE}• ${NC}$( cat /etc/xray/domain )"
echo -e "  ${BLUE}• ${GREEN}Total Amount Of Ram ${BLUE}•${NC} $tram MB"
echo -e "  ${BLUE}• ${GREEN}Used Ram            ${BLUE}•${NC} $uram MB"
echo -e "  ${BLUE}• ${GREEN}Free Ram            ${BLUE}•${NC} $fram MB"
echo -e "  ${BLUE}• ${GREEN}Server IP           ${BLUE}•${NC} ${IP}"
echo -e "  ${BLUE}• ${GREEN}ISP-VPS             ${BLUE}•${NC} ${ISP}"
echo -e "  ${BLUE}• ${GREEN}Clients Name        ${BLUE}• ${NC}Nbc-Group${NC}"
echo -e "  ${BLUE}• ${GREEN}Script Exp          ${BLUE}• ${NC}Life-Time ${NC}"
echo -e "  ${BLUE}• ${GREEN}Version             ${BLUE}• ${NC}MultiPort  ${NC}"
echo -e "$COLOR1┌────────────────────────────────────────────────────────────┐${NC}"
echo -e "${COLBG1}                      • STATUS SERVICE •                    \E[0m"
echo -e "$COLOR1┌────────────────────────────────────────────────────────────┐${NC}"
echo -e "      ${COLOR2}[ SSH Websocket${NC}: ${GREEN}ON ${NC}]  [ NGINX${NC}: ${status_nginx} ] [ XRAY${NC} : ${status_xray} ] "
echo -e "$COLOR1└────────────────────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌────────────────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1│  ${GREEN}SSH     VMESS       VLESS      TROJAN       SHADOWSOCKS$NC  $COLOR1 │"
echo -e "$COLOR1│ \033[0m ${NC} $ssh1        $vma           $vla          $tra               $ssa   $NC    $COLOR1│"
echo -e "$COLOR1└────────────────────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌────────────────────────────────────────────────────────────┐${NC}"
echo -e "${COLBG1}                      • MENU PILIHAN •                    \E[0m"
echo -e "$COLOR1└────────────────────────────────────────────────────────────┘${NC}"
echo -e "  ${CYAN}[01]${NC} • ${NC}${PURPLE} MENU SSH${NC}${NC}             ${CYAN}[07]${NC} • ${NC}${PURPLE} MENU SETING${NC} "
echo -e "  ${CYAN}[02]${NC} • ${NC}${PURPLE} MENU VMESS${NC}${NC}           ${CYAN}[08]${NC} • ${NC}${PURPLE} INFORMATION${NC} "
echo -e "  ${CYAN}[03]${NC} • ${NC}${PURPLE} MENU VLESS${NC}${NC}           ${CYAN}[09]${NC} • ${NC}${PURPLE} ADD HOST/DOMAIN ${NC} "
echo -e "  ${CYAN}[04]${NC} • ${NC}${PURPLE} MENU TROJAN${NC}${NC}          ${CYAN}[10]${NC} • ${NC}${PURPLE} CERT XRAY  ${NC} "
echo -e "  ${CYAN}[05]${NC} • ${NC}${PURPLE} MENU SSWS${NC}${NC}            ${CYAN}[11]${NC} • ${NC}${PURPLE} AUTO REBOOT ${NC} "
echo -e "  ${CYAN}[06]${NC} • ${NC}${PURPLE} CEK RUN    ${NC}${NC}          ${CYAN}[12]${NC} • ${NC}${PURPLE} EXIT ${NC} "
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "${COLBG1}                   ꧁࿇ SCRIPT ARYA BLITAR ࿇꧂                     \E[0m"
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
echo -ne " Select menu : "; read opt
case $opt in
01 | 1) clear ; menu-ssh ;;
02 | 2) clear ; menu-vmess ;;
03 | 3) clear ; menu-vless ;;
04 | 4) clear ; menu-trojan ;;
05 | 5) clear ; menu-ss ;;
06 | 6) clear ; htop ;;
07 | 7) clear ; menu-set ;;
08 | 8) clear ; info ;;
09 | 9) clear ; add-host ;;
10) clear ; crtxray ;;
11) clear ; autoboot ;;
12) clear ; exit ;;
20) clear ; $ressee ;;
999) clear ; $up2u ;;
00 | 0) clear ; menu ;;
*) clear ; menu ;;
esac
