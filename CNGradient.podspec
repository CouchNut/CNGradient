#
# Be sure to run `pod lib lint CNGradient.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CNGradient'
  s.version          = '1.0.1'
  s.summary          = 'A simple and convenient gradient tool.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Generate a gradient color, image, background easily and quickly
                       DESC

  s.homepage         = 'https://github.com/CouchNut/CNGradient'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'CouchNut' => 'yit_copper@163.com' }
  s.source           = { :git => 'https://github.com/CouchNut/CNGradient.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.source_files = 'CNGradient/Classes/**/*'
  
  s.swift_version = '5.0'
  
  # s.resource_bundles = {
  #   'CNGradient' => ['CNGradient/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
