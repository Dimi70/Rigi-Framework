
Pod::Spec.new do |s|
  s.name              = 'Rigi'
  s.version           = '1.4.0'
  s.summary           = 'Make Rigi previews for your iOS project.'
  s.homepage          = 'https://rigi.io'
  s.author            = { 'Name' => 'dimitri@rigi.io' }
  s.license           = { :type => 'Copyright', :text => 'Copyright 2022 Rigi.io'}

  s.source            = { :http => 'https://github.com/Dimi70/Rigi-Framework/raw/main/distribute/Rigi-1.4.0.zip' }

  s.swift_versions    = '5.2'
  s.platform          = :ios, '10.0'
  s.frameworks        = 'UIKit'

  s.vendored_frameworks    = 'Rigi/Frameworks/Rigi.xcframework'

  s.subspec 'bin' do |bin|
    bin.source_files = 'Rigi/bin/**'
  end
 
  s.subspec 'docs' do |docs|
    docs.source_files = 'Rigi/docs/**'
  end
 
  s.preserve_paths    = ['Rigi/bin/**', 'Rigi/docs/**']
end
