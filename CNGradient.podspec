#
# Be sure to run `pod lib lint CNGradient.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CNGradient'
  s.version          = '1.0.2'
  s.summary          = 'A simple and convenient gradient tool.'
  s.swift_version    = '5.0'
  s.description      = <<-DESC
  Generate a gradient color, image, background easily and quickly
                       DESC

  s.homepage         = 'https://github.com/CouchNut/CNGradient'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'CouchNut' => 'yit_copper@163.com' }
  s.source           = { :git => 'https://github.com/CouchNut/CNGradient.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'
  s.source_files = 'Sources/Classes/**/*'
  
end
