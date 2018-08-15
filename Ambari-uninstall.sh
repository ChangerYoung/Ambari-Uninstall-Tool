echo "STOP AMBARI AGENT"
ambari-agent stop 
yum erase ambari-agent  -y

echo "STOP AMBARI SERVER"
ambari-server stop
ambari-server reset
yum erase ambari-server -y

Ambari-uninstall-ambari.sh
Ambari-uninstall-hdp.sh
Ambari-uninstall-deluser.sh

echo "ambari and hdp uninstall finished, please delete dir manually"
