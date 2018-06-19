# clean dist
rm -rf dist

# create dist
mkdir dist

# build for Chrome
cd shells/chrome
zip ../../dist/chrome.zip manifest.json ../../js/* ../../icons/*

# go back to root directory
cd -

# build for Firefox
cd shells/firefox
zip ../../dist/firefox.zip manifest.json ../../js/* ../../icons/*
