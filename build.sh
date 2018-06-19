# clean dist
rm -rf dist

# create dist
mkdir dist

# copy common files
cp -R js/ dist
cp -R icons/ dist

# build for Chrome
cp shells/chrome/manifest.json dist/
cd dist
zip chrome.zip manifest.json js/* icons/*

# delete chrome's manifest and copy firefox's
rm -f manifest.json
cp ../shells/firefox/manifest.json .

# build for Firefox
zip firefox.zip manifest.json js/* icons/*

# delete copied files
rm -rf js/ icons/
rm -f manifest.json
