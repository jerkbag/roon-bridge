Notes for deploying Dell Wyze 3040 Thin Client to use as Roon Endpoints (roon-bridge) and spotify connect clients. 
Should work with other x86 based mini-pcs as well. Using Docker so everything runs under Alpine, which is tiny, quick and easy to install.
---------
1) Install Alpine Linux, get a network connection.
2) Install Docker and Docker Compose (uncomment community repository in /etc/apk/repositories)
   i) apk update
   ii) apk add docker docker-compose
   iii) rc-update add docker default
   iv) service docker start

3) pull repo, add dirs for roon and spotify
4) docker load < roon-bridge.tar.gz
5) Edit docker compose as needed (spotify connect name, usb devices, etc. . . )
6) docker compose up -d

This should give you a working roon and spotify client. 
