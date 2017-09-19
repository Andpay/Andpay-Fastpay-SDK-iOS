Pod::Spec.new do |s|

  s.name         = "AndpayFastpaySDK"
  s.version      = "0.0.5"
  s.summary      = "Andpay-Fastpay-SDK-iOS"

  s.homepage     = "https://github.com/Andpay/Andpay-Fastpay-SDK-iOS.git"

  s.license      = "Copyright (c) 2017年 Andpay."

  s.author       = { "Kelven" => "gan.chen@andpay.me" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "#{s.homepage}", :tag => "#{s.version}" }

  s.source_files  = "Classes"

  s.resource = 'lib/AndpayFastPaySDK.bundle'
  s.ios.vendored_frameworks = 'lib/APFastPaySDK.framework'
  s.framework  = "SystemConfiguration", "UIKit", "CoreLocation", "Foundation", "Security"



  s.subspec "AndpayFastpayEx001" do |ss|
    ss.ios.vendored_frameworks = 'lib/AndpayFastpayEx001.framework'
    ss.frameworks =  "CFNetwork", "QuartzCore", "CoreGraphics"
  end


end
