Pod::Spec.new do |s|
  s.name         = "iAdHelper"
  s.version      = "0.1"
  s.summary      = "Objective-C Helper class to ease integration with iAD for Cocos2D v3 "
  s.description  = <<-DESC
                   I wrote iAdHelper to make it easy to include iAds in
                   new game projects. 
                   ### Usage
                   include iAdHelper.h and iAdHelper.m and the iAd framework in your project, and then simply add the following line in your didLoadFromCCB method:
                   #[iAdHelper sharedHelper];#
                   DESC
  s.homepage     = "https://github.com/svenanders/iAdHelper"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { "Sven Anders Robbestad" => "robbestad@gmail.com" }
  s.social_media_url = "http://twitter.com/svenardocom"
  s.platform     = :ios
  s.source       = { :git => "https://github.com/svenanders/iAdHelper.git", :tag => "0.1" }
  s.source_files  = 'Classes', 'iAdHelper/**/*.{h,m}'
  s.exclude_files = 'Classes/Exclude'
  s.framework  = 'iAd'
end
