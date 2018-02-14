#/bin/bash

apt-get update && apt-get install -y python-m2crypto libgcrypt20 libgcrypt20-dev git gcc libnl-genl-3-dev

cd /tmp
git clone https://github.com/donyshow/wireless.git
cd wireless/wireless-regdb/
make && cp -f regulatory.bin /lib/crda/regulatory.bin

cp root.key.pub.pem /lib/crda/pubkeys/
cd /tmp	
rm -r wireless
echo "DONE"
