cd /var/www/netcore
systemctl stop nginx
~/.acme.sh/acme.sh --issue --force -d zk-wenergy.com.cn --standalone -k 4096
~/.acme.sh/acme.sh --renew -d zk-wenergy.com.cn --force --standalone
cp /root/.acme.sh/zk-wenergy.com.cn/fullchain.cer v2rayfullchain.pem
~/.acme.sh/acme.sh --installcert --force -d zk-wenergy.com.cn --fullchainpath /etc/v2ray/v2ray.crt --keypath /etc/v2ray/v2ray.key
cp /etc/v2ray/v2ray.crt /etc/v2ray/v2rayfullchain.pem
cp /etc/v2ray/v2ray.key /etc/v2ray/v2rayprivate.pem
rm /etc/v2ray/v2ray.crt -f
rm /etc/v2ray/v2ray.key -f
systemctl start nginx
