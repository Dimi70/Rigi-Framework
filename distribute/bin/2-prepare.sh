if [ -z $1 ] 
then
    echo "Error: specify release number"
    echo "Command failed 💥"
    exit 1
fi

BUILDS=$(dirname $0)/../builds
RELEASE=$(dirname $0)/../releases/$1
RESOURCES=$(dirname $0)/../resources
ASSETS=$(dirname $0)/../../Rigi/Assets

echo "Create new release folder:"
echo "  release/releases/$1"
echo

rm -rf "$RELEASE"
mkdir "$RELEASE"
mkdir "$RELEASE/Rigi"
mkdir "$RELEASE/Rigi/bin"
mkdir "$RELEASE/Rigi/docs"
mkdir "$RELEASE/Rigi/Frameworks"
mkdir "$RELEASE/Rigi/Resources"

echo "Copy all assets to release"
echo

cp -r "$RESOURCES/bin" "$RELEASE/Rigi/"
cp -r "$RESOURCES/docs" "$RELEASE/Rigi/"
cp -r "$BUILDS/Rigi.xcframework" "$RELEASE/Rigi/Frameworks"
cp -r "$ASSETS/Assets.xcassets" "$RELEASE/Rigi/Resources"

echo "Create release pod zip"
echo "  release/releases/$1/Rigi-$1.zip"
echo

pushd "$RELEASE"
zip -r "Rigi-$1.zip" Rigi
popd

echo
echo "Create release podspec"
echo "  release/releases/$1/Rigi.podspec"
echo

cp -r "$RESOURCES/Rigi.podspec" "$RELEASE/"
sed -i '' "s/VERSION/$1/" "$RELEASE/Rigi.podspec"

echo "Done 🚀"