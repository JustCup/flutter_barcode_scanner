#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_barcode_scanner.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_barcode_scanner'
  s.version          = '0.0.1'
  s.summary          = 'A plugin for barcode scanning support on Android and iOS. Supports barcodes, QR codes, etc.'
  s.description      = <<-DESC
A plugin for barcode scanning support on Android and iOS. Supports barcodes, QR codes, etc.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
