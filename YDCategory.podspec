#
# Be sure to run `pod lib lint YDCategory.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YDCategory'
  s.version          = '0.1.0'
  s.summary          = 'YDCategory.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = '常用的工具类，方便快速开发'

  s.homepage         = 'https://github.com/yangdong@163.com/YDCategory'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yangdong@163.com' => 'yangdong@163.com' }
  s.source           = { :git => 'https://github.com/yangdong@163.com/YDCategory.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'YDCategory/Classes/**/*'
  
  # s.resource_bundles = {
  #   'YDCategory' => ['YDCategory/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'MJRefresh'
   s.dependency 'MBProgressHUD'
end