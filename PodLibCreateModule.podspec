#
# Be sure to run `pod lib lint PodLibCreateModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PodLibCreateModule'
  s.version          = '0.3.0'
  s.summary          = 'A short subspec of PodLibCreateModule.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
PodLibCreateModule is using to use protocol for pod by subspec
                       DESC

  s.homepage         = 'https://github.com/lihaifengdoushi/PodLibCreateModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lihaifengdoushi' => '2975745207@qq.com' }
  s.source           = { :git => 'https://github.com/lihaifengdoushi/PodLibCreateModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.3'

  s.subspec 'ProtocolMediator' do |protocolMediator|
  protocolMediator.source_files = 'PodLibCreateModule/Classes/ProtocolMediator/**/*'
 # protocolMediator.dependency 'AFNetworking', '~> 3.0'
 # protocolMediator.dependency 'YYModel
  end

  s.subspec 'CustomDefinedProtocol' do |customDefinedProtocol|
  customDefinedProtocol.source_files = 'PodLibCreateModule/Classes/CustomDefinedProtocol/**/*'
# 设置依赖 依赖自己的ProtocolMediator子组件
 customDefinedProtocol.dependency 'PodLibCreateModule/ProtocolMediator'
  end

 # s.source_files = 'PodLibCreateModule/Classes/**/*'
  
   s.resource_bundles = {
     'PodLibCreateModule' => ['PodLibCreateModule/Assets/**/*']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
