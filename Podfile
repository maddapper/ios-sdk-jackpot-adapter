#source 'https://github.com/CocoaPods/Specs.git'
source 'https://cdn.cocoapods.org/'
use_frameworks!

platform :ios, '11.0'

POD = 'FreestarAds-Jackpot'
POD_TEST = POD + '_Tests'

target POD do
  pod 'FreestarAds-PreRelease', :path => '../../FreestarAds-Core/FreestarAds-PreRelease.local.podspec'
#  pod 'FreestarAds-PreRelease', :path => '../../FreestarAds-Core/FreestarAds-PreRelease.podspec'
#  pod 'FreestarAds', :path => '../../FreestarAds-Core/FreestarAds.podspec'

  target POD_TEST do
    inherit! :search_paths
  end
end