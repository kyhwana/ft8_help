#Grep out a bunch of stuff
while [ 1 ]; do cat /tmp/calls | tail -n 300 | grep Decode | grep CQ | awk '{ print $12 }'| grep -v POTA | grep -v "^ZL" | grep -v "^DX"  | grep -v "^AK" | grep -v "^4" | xargs -I CALLS grep CALLS latestpskreporter.txt | grep ZL4KYH | awk '{print $2}' | sort | uniq >/tmp/calls3 ; sleep 30 ; done
