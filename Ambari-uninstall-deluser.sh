#delete user


ls -alF /home | awk  '$4=="hadoop"{print $3}' > uninstall.txt

while read LINE
do
    userdel -r $LINE;
    #echo "delete user $LINE";
done < uninstall.txt
#echo $line;
echo "DELETE USER SUCCESS"

