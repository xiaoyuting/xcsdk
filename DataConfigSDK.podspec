#
# Be sure to run `pod lib lint sdkSpec.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DataConfigSDK'
  s.version          = '0.0.6'
  s.summary          = 'A short description of sdkSpec.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/xiaoyuting/xcsdk'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Xiaoyuting' => '479072483@qq.com' }
  s.source           = { :git => 'https://github.com/xiaoyuting/xcsdk.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

 
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
 
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.vendored_frameworks = ['DataConfigSDK/DataConfigSDK.xcframework'] #自己的framework在工程中的路径
  s.resource_bundles = {
   'Resources' => ['DataConfigSDK/Assets/*.bundle']
   }
  s.dependency 'AgoraRtcEngine_iOS', '~> 4.6.0'
  s.dependency 'RongCloudIM/IMLib', '~> 5.28.0'
  s.dependency 'AliyunOSSiOS', '~> 2.11.1'
  s.dependency 'TZImagePickerController/Basic', '~> 3.8.9'
  s.dependency 'SSZipArchive', '~> 2.4.3'
 
end
