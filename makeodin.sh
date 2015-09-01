tar -H ustar -c recovery.img > recovery.tar
md5sum -t recovery.tar >> recovery.tar
mv recovery.tar recovery.tar.md5
