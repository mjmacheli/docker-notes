service teamspeak start
sleep 3
echo "LOGS"
cat /usr/local/teamspeak/logs/*
sleep 1
tail -f /dev/null
