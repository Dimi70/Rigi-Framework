if [ -z $1 ] 
then
    echo "Error: specify release number"
    echo "Command failed 💥"
    exit 1
fi

RELEASE=$(dirname $0)/../releases/$1

pod lib lint "$RELEASE/Rigi.podspec"
