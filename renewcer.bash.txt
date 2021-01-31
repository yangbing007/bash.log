cd /var/www/netcore
systemctl stop nginx

# acme.sh --revoke -d py.goldgod.xyz --ecc
# ~/.acme.sh/acme.sh --issue --force -d py.goldgod.xyz --standalone -k ec-384
acme.sh --revoke -d zk-wenergy.com.cn
~/.acme.sh/acme.sh --issue --force -d zk-wenergy.com.cn --standalone -k 4096

# ~/.acme.sh/acme.sh --renew -d py.goldgod.xyz --force --standalone --ecc
~/.acme.sh/acme.sh --renew -d zk-wenergy.com.cn --force --standalone

cp /root/.acme.sh/zk-wenergy.com.cn/fullchain.cer v2rayfullchain.pem

# ~/.acme.sh/acme.sh --installcert --force -d py.goldgod.xyz --fullchainpath xxxxxxx/v2ray.crt --keypath xxxxxxx/v2ray.key --ecc
~/.acme.sh/acme.sh --installcert --force -d zk-wenergy.com.cn --fullchainpath xxxxxxx --keypath xxxxxxx

cp xxxxxxx xxxxxxx
cp xxxxxxx xxxxxxx
rm xxxxxxx -f
rm xxxxxxx -f
systemctl start nginx


~/.acme.sh/acme.sh --issue -d www.godprox.top --standalone -k 4096

~/.acme.sh/acme.sh --issue -d www.wanhy.cn --standalone -k 4096

ln -s  /root/acmesh/wwwwanhycn/ /root/.acme.sh/www.wanhy.cn/

ln -s  /root/acmeshwwwwanhycn/ /root/.acme.sh/www.wanhy.cn/

