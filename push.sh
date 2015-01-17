cd GalaxyS2
make mrproper
rm *.tar zImage
find . -name "*~" -exec rm {} \;
cd ..
git add .
git commit -m "Update $(date -u +%Y)-$(date -u +%m)-$(date -u +%d)-$(date -u +%H)"
git push -f

