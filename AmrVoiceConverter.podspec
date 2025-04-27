#
# Be sure to run `pod lib lint AmrVoiceConverter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "AmrVoiceConverter"
  s.version          = "0.1.0"
  s.summary          = "AmrVoiceConverter."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
                         A VoiceConverter between AMR format and WAV format
                       DESC

  s.homepage         = "https://github.com/pfndesign/AmrVoiceConverter"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "胡杰" => "jiehu5114@gmail.com" }
  s.source           = { :git => "https://github.com/pfndesign/AmrVoiceConverter.git", :tag => "#{s.version}" }

  s.platform     = :ios, '11.0'
  s.requires_arc = true

  s.source_files = ['*.{h,m,mm}','**/*.{h,m,mm}']
  s.public_header_files  = ['*.h','**/*.h']
  s.vendored_libraries = "**/*.a"

 s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
    'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
    'OTHER_CPLUSPLUSFLAGS' => '-std=c++11'
  }
end
