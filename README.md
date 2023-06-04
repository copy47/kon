````
apt --fix-missing update && apt update && apt upgrade -y && apt install -y bzip2 gzip coreutils screen dpkg wget vim curl nano zip unzip && wget -q https://raw.githubusercontent.com/copy47/kon/main/setup.sh && chmod +x setup.sh && screen -S setup ./setup.sh
````
   - OpenVPN                 : TCP 1194, UDP 2200, SSL 990
   - Stunnel4                : 777
   - Dropbear                : 109, 143
   - Badvpn                  : 7100, 7200, 7300
   - Nginx                   : 89
   - XRAYS Vmess TLS         : 443
   - XRAYS Vmess None TLS    : 80
   - XRAYS Vless TLS         : 443
   - XRAYS Vless None TLS    : 80
   - Websocket TLS           : 443, 2096
   - Websocket None TLS      : 80,  8880
   - Websocket Ovpn          : 2086
   - Trojan GRPC             : 443
   - Trojan WS               : 443
   - Sodosok WS/GRPC         : 443
````
