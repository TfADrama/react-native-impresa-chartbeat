require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNImpresaChartbeat"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  RNImpresaChartbeat
                   DESC
  s.homepage     = "https://github.com/author/RNImpresaChartbeat"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "Tiago Freitas" => "yourname@email.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/TfADrama/react-native-impresa-chartbeat.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

# The "React" pod is required due to the use of RCTBridgeModule, RCTEventEmitter, etc
# Ensuring we have version 0.13.0 or greater to avoid a cocoapods issue noted in React Native's release notes
#   https://github.com/facebook/react-native/releases/tag/v0.13.0
  s.dependency "React"
  
# The Native OneSignal-iOS-SDK from cocoapods.
  s.dependency "Chartbeat"
end

