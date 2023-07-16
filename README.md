
# PySogs on Docker

## Install

## Prerequires
### Configure DHCP Router to have static address
### Configure Router Port Forarding : 
  External : 8000 > Internal : 8000


### Replace SESSIONID in run.sh
### Replace <public_ip> in sogs.ini

## RUN
docker compose up
docker attach pysogs
./run.sh

<public_ip>:8000

