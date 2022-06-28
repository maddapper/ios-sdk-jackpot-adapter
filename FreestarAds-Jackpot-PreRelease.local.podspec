Pod::Spec.new do |spec|
  spec.name                = "FreestarAds-Jackpot-PreRelease"
  spec.version             = "1.0.0.1-beta-1"
  spec.author              = 'Freestar'
  spec.license             =  { :type => 'Apache2.0', :file => 'LICENSE' }
  spec.homepage            = 'http://www.freestar.com'
  spec.summary             = 'The Freestar Jackpot adapter'
  spec.platform            = :ios, '11.0'

  spec.vendored_frameworks  = 'build/FreestarAds-Jackpot.xcframework'
  spec.dependency "FreestarAds-PreRelease", "~> 5.12-beta"

  spec.source = { :git => '' }

end
