Pod::Spec.new do |spec|
  spec.name         = "mamaSDK"
  spec.version      = "3.5.2.1"
  spec.summary      = "an adSDK for media"

  spec.description  = <<-DESC
	mamaSDK is a product provided by Alibaba Group for monetizing advertisements for external media.                   
			DESC

  spec.homepage     = "https://github.com/yueyue721/mamaSDK.git"
  spec.license      = {
    :type => 'Copyright',
    :text => "Alibaba-INC copyright"
  }
  spec.source       = { :git => "https://github.com/yueyue721/mamaSDK.git", :tag => "#{spec.version}" }
  spec.author       = { "tongyuecheng" => "wb-tyc866331@alibabapictures.com" }
  spec.platform     = :ios, "10.0"
  spec.ios.deployment_target = "12.0"

  # 指向现有目录
  spec.source_files='mamaSDK/**/*'
  spec.vendored_frameworks = 'mamaSDK/mamaSDK/TanxSDK.library/*.framework'

end
