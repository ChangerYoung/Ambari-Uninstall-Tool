#uninstall ambari
yum list | grep ambari | awk '{print $1}' > uninstall.txt
line="";
while read LINE
do
    line=${line}" "$LINE;
done < uninstall.txt
yum remove $line;
#echo $line;
echo "uninstal AMBARI COMPONENT SUCCESS"
