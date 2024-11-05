# disable TESTBOOT from .bashrc
sed -i 's/export TESTBOOT=true/export TESTBOOT=false/' ~/.bashrc

# replace /etc/logrotate.d/rsyslog with the provided file
sudo cp ./etc/logrotate.d/rsyslog /etc/logrotate.d/rsyslog

# restart logrotate timer and service
sudo systemctl restart logrotate.service
sudo systemctl restart logrotate.timer

# cleanup nginx config, we shouldnt need it at all imo
# depends on fixing up the Positioning API service.
# Just a post 80 listen on positioning's app.sock (unix socket)

