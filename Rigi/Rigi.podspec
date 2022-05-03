# Podspec for local framework building

Pod::Spec.new do |s|
  s.name              = 'Rigi'
  s.version           = '1.0.2'
  s.summary           = 'Make Rigi previews for your iOS project.'
  s.homepage          = 'https://rigi.io'
  s.author            = { 'Name' => 'dimitri@rigi.io' }
  s.license           = { :type => 'Copyright', :text => 'Copyright 2022 Rigi.io'}

  s.source            = { :git => 'https://github.com/Dimi70/Rigi-Framework.git', :tag => s.version.to_s }

  s.swift_versions    = '5.2'
  s.platform          = :ios, '10.0'
  s.frameworks        = 'UIKit'

  s.source_files      = 'Classes/**/*.{swift}'
  s.resources         = 'Assets/**'

  # Group swift files in Pod source
#  s.subspec 'Classes' do |classes|
#    classes.source_files = 'Rigi/Classes/**'
#  end

   # Add scripts folder to Xcode Pods project
#   s.subspec 'bin' do |bin|
#    bin.source_files = 'bin/**'
#  end
 
   # Add documentation folder to Xcode Pods project
#   s.subspec 'docs' do |docs|
#    docs.source_files = 'docs/**'
#  end
 
   # Add assets to Pod source
#  s.resources         = 'Rigi/Assets/**'

  # Preserve these files in the Pods folder
#  s.preserve_paths    = ['Rigi/**', 'bin/**', 'docs/**']
end
