Pod::Spec.new do |spec|
  spec.name         = "mamaSDK"
  spec.version      = "3.5.4"
  spec.summary      = "an adSDK for media"
  spec.description  = <<-DESC
mamaSDK is a product provided by Alibaba Group for monetizing advertisements for external media.
  DESC
  spec.homepage     = "https://github.com/yueyue721/mamaSDK.git"
  spec.license      = { :type => 'Copyright', :text => "Alibaba-INC copyright" }
  spec.source       = { :git => "https://github.com/yueyue721/mamaSDK.git", :tag => "#{spec.version}" }
  spec.author       = { "tongyuecheng" => "wb-tyc866331@alibabapictures.com" }
  spec.platform     = :ios, "10.0"
  spec.ios.deployment_target = "12.0"

  # 指向现有目录
  spec.vendored_frameworks = 'mamaSDK/TanxSDK.library/*.framework'
  spec.resources = ['mamaSDK/TanxSDK.library/TanxSDK.framework/TanxID.bundle/**/*']

  # 添加以下代码将构建限制在 iOS
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end