Pod::Spec.new do |s|

  s.name         = "AndpayFastpaySDK"
  s.version      = "1.0.1"
  s.summary      = "Andpay-Fastpay-SDK-iOS"

  s.homepage     = "https://github.com/Andpay/Andpay-Fastpay-SDK-iOS.git"

  s.license      = "Copyright (c) 2017年 Andpay."

  s.author       = { "Kelven" => "gan.chen@andpay.me" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "#{s.homepage}", :tag => "#{s.version}" }


  s.default_subspec = 'AndpayFastpay'


  s.subspec "AndpayFastpay" do |base|
    base.source_files  = 'AndpayFastpaySDK/AndpayFastPay.h'
    base.resource = 'AndpayFastpaySDK/AndpayFastPaySDK.bundle'
    base.ios.vendored_frameworks = 'AndpayFastpaySDK/APFastPaySDK.framework'
    base.framework  = "SystemConfiguration", "UIKit", "CoreLocation", "Foundation", "Security"
  end

  s.subspec "AndpayFastpayEx001" do |ss|
    ss.source_files  = 'AndpayFastpaySDK/AndpayFastPay.h'
    ss.resource = 'AndpayFastpaySDK/AndpayFastPaySDK.bundle'
    ss.ios.vendored_frameworks = 'AndpayFastpaySDK/APFastPaySDK.framework', 'AndpayFastpaySDK/AndpayFastpayEx001.framework'
    ss.frameworks = "SystemConfiguration", "UIKit", "CoreLocation", "Foundation", "Security", "CFNetwork", "QuartzCore", "CoreGraphics"
  end


end
