#
# Be sure to run `pod lib lint RiotApi.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "RiotApi"
  s.version          = "0.1.0"
  s.summary          = "An Objective-C Library for utilizing the Riot Games API (https://developer.riotgames.com)"
  s.description      = <<-DESC
                       RiotApi-ObjC isn't endorsed by Riot Games and doesn't reflect the views or opinions of Riot Games or anyone officially involved in producing or managing League of Legends. League of Legends and Riot Games are trademarks or registered trademarks of Riot Games, Inc. League of Legends © Riot Games, Inc.
                       DESC
  s.homepage         = "https://github.com/WxWatch/RiotApi-ObjC"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "James Glenn" => "jglenn1@gmail.com" }
  s.source           = { :git => "https://github.com/WxWatch/RiotApi-ObjC.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'RiotApi' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
    s.dependency 'AFNetworking', '~> 2.3'
    s.dependency 'Lockbox'
    s.dependency 'RMMapper'
end
