#
# Be sure to run `pod lib lint DOSChineseStringCompare.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "DOSChineseStringCompare"
  s.version          = "1.0.1"
  s.summary          = "這是個對中文字排序的 pod"
  s.description      = "這是個對中文字排序的 pod，可以依照注音、筆畫、拼音或 Unihan 碼排序"
  s.homepage         = "https://github.com/dolphinsue319/DOSChineseStringCompare"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "dolphinsue319" => "dolphinsue@mail2000.com.tw" }
  s.source           = { :git => "https://github.com/dolphinsue319/DOSChineseStringCompare.git", :tag => "1.0.1" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  #s.resource_bundles = {
  #  'DOSChineseStringCompare' => ['Pod/Assets/*.png']
  #}

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
