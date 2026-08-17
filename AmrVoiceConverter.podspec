Pod::Spec.new do |s|
  s.name             = "AmrVoiceConverter"
  s.version          = "0.2.0"
  s.summary          = "AMR-NB and WAV voice conversion for iOS."

  s.description      = <<-DESC
A voice converter between AMR-NB and WAV formats.
DESC

  s.homepage         = "https://github.com/pfndesign/AmrVoiceConverter"
  s.license          = { :type => "MIT" }
  s.author           = { "pfndesign" => "pfndesign@gmail.com" }

  s.source = {
    :git => "https://github.com/pfndesign/AmrVoiceConverter.git",
    :tag => s.version.to_s
  }

  s.platform = :ios, "16.4"
  s.requires_arc = true

  s.source_files = [
    "sources/**/*.{h,m,mm,c,cc,cpp}"
  ]

  s.public_header_files = [
    "sources/VoiceConverter.h"
  ]

  s.vendored_frameworks = [
    "Frameworks/opencore-amrnb.xcframework"
  ]

  s.pod_target_xcconfig = {
    "DEFINES_MODULE" => "YES",
    "CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES" => "YES",
    "CLANG_CXX_LANGUAGE_STANDARD" => "c++11",
    "OTHER_CPLUSPLUSFLAGS" => "-std=c++11"
  }
end