cd ~/devops/lesson1
mkdir -p critical_service
echo "CONFIDENTIAL DATA" > critical_service/config.db
chmod 777 critical_service/config.db
dd if=/dev/zero of=critical_service/garbage.data bs=1M count=100 2>/dev/null
sleep 3600 &
echo "System Sabotaged. Good luck."

chmod 600 config.db
rm garbage.data
kill -9 3956
ls
