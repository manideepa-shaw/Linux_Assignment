`cd`
echo `cat /proc/cpuinfo | grep "vendor_id" | head -1`
echo `cat /proc/cpuinfo | grep "model name" | head -1`
echo `cat /proc/cpuinfo | grep "cpu MHz" | head -1`
echo `cat /proc/cpuinfo | grep "cache size" | head -1`
