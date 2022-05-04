
Pod::Spec.new do |s|
  s.name              = 'Rigi'
  s.version           = 'VERSION'
  s.summary           = 'Make Rigi previews for your iOS project.'
  s.homepage          = 'https://rigi.io'
  s.author            = { 'Name' => 'dimitri@rigi.io' }
  s.license           = { :type => 'Copyright', :text => 'Copyright 2022 Rigi.io'}

  s.source            = { :http => 'https://github.com/Dimi70/rigi-ios/raw/master/Releases/Rigi-VERSION.zip' }

  s.swift_versions    = '5.2'
  s.platform          = :ios, '10.0'
  
  #s.frameworks        = 'UIKit'

  s.vendored_frameworks     = 'Rigi/Frameworks/Rigi.xcframework'
  s.preserve_paths          = ['Rigi/bin/**', 'Rigi/docs/**']

  # This will generate a compile error: 'Multiple commands produce xxx/Assets.car'
  # But even without this the assets are available in the app. So it seems ok..
  # s.resources = 'Rigi/Resources/Assets.xcassets' 
  
  # These will generate a compile error:  Multiple commands produce ... 
  # How can we include these folders in the Pods section in Xcode?

  # s.subspec 'bin' do |bin|
  #   bin.source_files = 'Rigi/bin/**'
  # end
 
  # s.subspec 'docs' do |docs|
  #   docs.source_files = 'Rigi/docs/**'
  # end
 
end
