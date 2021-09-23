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
  s.summary          = 'A simple and convenient gradient tool, Quickly and easily generate a gradient color, image, background.'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage         = 'https://github.com/CouchNut/CNGradient'
  s.author           = { 'CouchNut' => 'yit_copper@163.com' }
  s.ios.deployment_target = '12.0'
  s.swift_version    = '5.0'
  s.source           = { :git => 'https://github.com/CouchNut/CNGradient.git', :tag => s.version.to_s }
  s.source_files     = 'Sources/Classes/**/*'
  s.requires_arc     = true

end
