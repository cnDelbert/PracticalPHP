git add .
git commit -m "Update and push automatically"
git push

gitbook build
cp -apu ./_book/* ./_git/ 
cd _git/
git add .
git commit -m "Update and push automatically"
git push
cd ..
