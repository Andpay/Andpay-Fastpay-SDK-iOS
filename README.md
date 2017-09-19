Andpay-FastPay-SDK-iOS
===================
和付快捷支付SDK-iOS
-------------------
## 简介
lib文件夹是iOS framework文件与bundle资源包，<br/>
demo文件夹中是一个简单的接入示例，该示例仅供参考。

## 版本要求
iOS SDK 要求 iOS 8.0 及以上版本

## 接入方法
### 安装
#### 使用 CocoaPods
1. 在 `Podfile` 添加

```
pod 'AndpayFastPaySDK', '~> 1.0.0', :subspecs => ["AndpayFastpayEx001"]
```

2. 运行 `pod install`
3. 使用 `{project}.xcworkspace` 打开项目，而不是 `{project}.xcodeproj`

#### 手动导入
1. 获取 SDK<br/>
下载 SDK, lib 文件夹里面是 两个framework以及一个资源bundle包。<br/>
![](https://github.com/Andpay/Andpay-Fastpay-SDK-iOS/raw/master/img/sdkDir.png)
2. 将.framework文件与.bundle文件导入工程中
3. 在Target->General中，添加<br/>
CoreLocation.framework<br/>
Foundation.framework<br/>
Security.framework<br/>
CFNetwork.framework<br/>
QuartzCore.framework<br/>
CoreGraphics.framework<br/>

![](https://github.com/Andpay/Andpay-Fastpay-SDK-iOS/raw/master/img/dependencyFrameworks.png)

4.在Target->Build Setting->Linking->Other Linker Flags添加-ObjC<br/>
![](https://github.com/Andpay/Andpay-Fastpay-SDK-iOS/raw/master/img/otherLinkerFlags.png)
### 使用
#### 添加字段
1. Info.plist中添加行<br/>
   Key : Privacy - Location When In Use Usage Description<br/>
   Value : 使用快捷支付需要获您的取地理位置信息[文案可自行配置]<br />
2. Info.plist中添加行<br/>
	Key : Privacy - Camera Usage Description<br/>
	Value : 使用快捷支付需要使用您的摄像头[文案可自行配置]<br/>
![](https://github.com/Andpay/Andpay-Fastpay-SDK-iOS/raw/master/img/infoPlist.png)

#### 调用SDK

在AppDelegate中
#####引入头文件

```
#import <APFastPaySDK/APFastPaySdkManager.h>
```
#####初始化
在应用初始化方法中添加sdk的初始化配置

```
APFastPaySdkConfig *config = [[APFastPaySdkConfig alloc] init];
//设置快捷支付环境
config.environment = APFastPayTestEnvironment;
//如果需要调试，设置SDK的Debug参数
config.isDebug = YES;
//初始化SDK   
[APFastPaySdkManager initWithConfig:config];
```

####调用快捷支付模块接口
${yourController}是你启动sdk的页面。<br/>
${yourDelegate}是你接收sdk回调事件的代理。<br/>
${params}备用扩展字段<br/>

```
[APFastPaySdkManager startAPFastPayModuleWithProvider:${yourController} delegate:${yourDelegate} Params:${params}];
```

#### 代理回调
```

```

