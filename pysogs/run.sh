export DEBIAN_FRONTEND=noninteractive
cd /sogs
#apt-get -y install sogs-standalone
#cp /usr/share/doc/python3-sogs/uwsgi-sogs-standalone.ini .
#cp /usr/share/doc/python3-sogs/sogs.ini.sample sogs.ini

/etc/init.d/uwsgi start &
sleep 3
python3 -msogs --initialize
/usr/bin/uwsgi -s 8000 --ini /sogs/sogs.ini &
sleep 3
python3 -msogs --add-room fish --name "Fishing" --description "Australian fisheries chat"
#python3 -msogs --rooms + --add-moderators SESSIONID --admin --hidden
# /lib/systemd/system/sogs-standalone.service # /usr/bin/uwsgi --ini /etc/sogs/uwsgi-standalone.ini
# /var/lib/session-open-group-server/key_x25519
# /etc/init.d/uwsgi start
# /var/lib/dpkg/info/sogs-standalone.config
