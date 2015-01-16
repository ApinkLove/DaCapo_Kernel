cd GalaxyS2
make mrproper
rm *.tar zImage
find . -name "*~" -exec rm {} \;
cd ..
git add .
git commit -m "Update $(date -u +%Y)-$(date -u +%M)-$(date -u +%D)-$(date -u +%H)"
git push origin master

