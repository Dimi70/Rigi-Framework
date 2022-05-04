xcodebuild archive \
-scheme Rigi \
-configuration Release \
-destination 'generic/platform=iOS' \
-archivePath './build/Rigi.framework-iphoneos.xcarchive' \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

xcodebuild archive \
-scheme Rigi \
-configuration Release \
-destination 'generic/platform=iOS Simulator' \
-archivePath './build/Rigi.framework-iphonesimulator.xcarchive' \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

rm -rf ./build/Rigi.xcframework

xcodebuild -create-xcframework \
-framework './build/Rigi.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/Rigi.framework' \
-framework './build/Rigi.framework-iphoneos.xcarchive/Products/Library/Frameworks/Rigi.framework' \
-output './build/Rigi.xcframework'
