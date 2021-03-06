#
# Be sure to run `pod lib lint KVLanguageSwitcher.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KVLanguageSwitcher'
  s.version          = '0.1.0'
  s.summary          = 'A light weight library used to change language independent with the language in OS setting'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  To use this library
  1.Declare your own loclize string file < This library current version only support english and vietnamese >
  2.Decalre a KVLanguageManager object from [KVLanguageManager sharedInstance]
  3.Declare a KVLocale object from availableLocales array < english or vietnamese >
  4.Use setLanguageWithLocale: for your KVLanguageManager object with your locale
  5.Finally use KVLocalisedString("Key",comment) to re-config your UI base on you chosen language
                       DESC

  s.homepage         = 'https://github.com/thangpham26394/KVLanguageSwitcher'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'thangpham26394' => 'thang.pd@citigo.com.vn' }
  s.source           = { :git => 'https://github.com/thangpham26394/KVLanguageSwitcher.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'KVLanguageSwitcher/Classes/**/*'
  
  # s.resource_bundles = {
  #   'KVLanguageSwitcher' => ['KVLanguageSwitcher/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
