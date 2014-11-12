git add .
if [$1 = ""]
then git commit -m "Update and push automatically"
else
git commit -m "$1"
fi
git push

gitbook build
cp -apu ./_book/* ./_git/ 
cd _git/
git add .
if [$1 = ""]
then git commit -m "Update and push automatically"
else
git commit -m "$1"
fi
git push
cd ..
