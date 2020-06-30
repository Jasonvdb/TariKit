#
# Be sure to run `pod lib lint TariKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TariKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of TariKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Wrapper classes for the Tari protocol.
                       DESC

  s.homepage         = 'https://github.com/Jasonvdb/TariKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jasonvdb' => 'jay@tari.com' }
  s.source        = {
    :git => "https://github.com/tari-project/wallet-ios.git",
    :tag => "#{s.version}"
  }
  s.source_files        = "TariKit/**/*.{h,m,a,swift}"
  s.public_header_files = "TariKit/Headers/TariKit.h"
  s.ios.vendored_frameworks = 'TariKit.framework'


  s.ios.deployment_target = '8.0'
end
