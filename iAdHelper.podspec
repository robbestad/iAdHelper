Pod::Spec.new do |s|
  s.name         = "iAdHelper"
  s.version      = "0.1"
  s.summary      = "Objective-C Helper class to ease integration with iAd for Cocos2D v3"
  s.homepage     = "https://github.com/svenanders/iAdHelper"
  s.license      = { :type => "MIT", :file => "LICENSE"}
  s.author       = { "Sven Anders Robbestad" => "robbestad@gmail.com" }
  s.source       = { :git => "https://github.com/svenanders/iAdHelper.git", :tag => "1.0" }

  s.source_files = 'Classes', 'iAdHelper/*.{h,m}'
  s.requires_arc = true
  s.frameworks = 'iAd'
end
