#uninstall hdp componemt
yum list | grep HDP | awk '{print $1}' >  uninstall.txt

line="";
while read LINE
do
    line=${line}" "$LINE;
    #yum remove $LINE;
done < uninstall.txt
yum remove $line;
#echo $line;
echo "UNINSTALL HDP COMPONENT SUCCESS"

