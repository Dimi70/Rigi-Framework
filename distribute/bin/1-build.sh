DEST=$(dirname $0)/../builds/

rm -rf "$DEST/Rigi.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/Rigi.framework"
rm -rf "$DEST/Rigi.framework-iphoneos.xcarchive/Products/Library/Frameworks/Rigi.framework"
rm -rf "$DEST/Rigi.xcframework"

xcodebuild archive \
-scheme Rigi \
-configuration Release \
-destination "generic/platform=iOS" \
-archivePath "$DEST/Rigi.framework-iphoneos.xcarchive" \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

xcodebuild archive \
-scheme Rigi \
-configuration Release \
-destination "generic/platform=iOS Simulator" \
-archivePath "$DEST/Rigi.framework-iphonesimulator.xcarchive" \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

xcodebuild -create-xcframework \
-framework "$DEST/Rigi.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/Rigi.framework" \
-framework "$DEST/Rigi.framework-iphoneos.xcarchive/Products/Library/Frameworks/Rigi.framework" \
-output "$DEST/Rigi.xcframework"
