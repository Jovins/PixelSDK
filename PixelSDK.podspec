Pod::Spec.new do |s|
    s.name     = 'PixelSDK'
    s.version  = '10.1.2'
    s.license  = 'https://www.pixelsdk.com/terms-of-use/'
    s.summary  = 'Pixel SDK is a photo and video editing framework written in Swift.'
    s.homepage = 'https://www.pixelsdk.com'
    s.author   = { 'Pixel SDK' => 'support@pixelsdk.com' }

    s.platform = :ios
    s.source   = { :git => 'https://github.com/GottaYotta/PixelSDK.git', :tag => s.version }
    s.vendored_frameworks = 'PixelSDK.xcframework'
    s.ios.deployment_target = '11.0'
    s.ios.dependency 'PixelSDK-GPUImage3', '~> 1.1.1'
    s.frameworks   = ['AVFoundation']
    s.swift_version = '5.0'

    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
