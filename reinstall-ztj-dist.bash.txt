#riae@crceg
#bash install-7za.sh
cd /home/wancheng/code
#mkdir oldClent
mv ztj-dist oldClent/$(date +"%Y%m%dT%H%M")ztj-dist
mkdir ztj-dist
mv ztj-dist.7z ztj-dist
cd ztj-dist&&7za x ztj-dist.7z&&cd -
#####chown -R root:root ztj-dist
chmod -R 777 ztj-dist
bash nginx-restart.sh
