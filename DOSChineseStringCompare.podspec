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
  s.version          = "1.0.7"
  s.summary          = "這是個對中文字排序及算筆畫的的 pod"
  s.description      = "這是個對中文字排序的 pod，可以依照注音、筆畫、拼音或 Unihan 碼排序。還可以回傳某個中文字是幾劃。"
  s.homepage         = "https://github.com/dolphinsue319/DOSChineseStringCompare"
  s.license          = 'MIT'
  s.author           = { "dolphinsue319" => "dolphinsue@mail2000.com.tw" }
  s.source           = { :git => "https://github.com/dolphinsue319/DOSChineseStringCompare.git", :tag => "1.0.7" }

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
