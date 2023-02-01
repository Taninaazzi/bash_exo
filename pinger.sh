ip=10.0.2
online_count=0
offline_count=0

for i in {1..255}
do
ping -c 1 $ip.$i
if [ $? = 0 ]
then
echo $ip.$i >> /home/kali/Desktop/online.txt
online_count=$((online_count+1))
else
echo $ip.$i >> /home/kali/Desktop/offline.txt
offline_count=$((offline_count+1))
fi
done

echo "Number of online hosts: $online_count"