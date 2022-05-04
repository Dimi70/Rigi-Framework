if [ -z $1 ] 
then
    echo "Error: specify release number"
    echo "Command failed 💥"
    exit 1
fi

RELEASE=$(dirname $0)/../releases/$1
DISTRIBUTION=$(dirname $0)/../../../Rigi-Distribution

echo "Copy release to distribution repos"
echo

cp "$RELEASE/Rigi-$1.zip" "$DISTRIBUTION/Releases/"

echo "Pushing to git distribution repos with tag $1"
echo

pushd "$DISTRIBUTION"

git add --all
git commit -m "Release $1"
git tag "$1"
git push
git push --tags

popd

echo
echo "Done 🚀"