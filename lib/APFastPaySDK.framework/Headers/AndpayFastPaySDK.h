//
//  APFastPaySdkManager.h
//  Andpay-Fastpay-SDK
//
//  Created by andpay on 2017/8/28.
//  Copyright © 2017年 com.andpay.me. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APFastPaySdkConfig.h"
#import "APFastPayDelegate.h"

@interface AndpayFastPaySDK : NSObject
/**
 初始化sdk配置

 @param config 配置内容项
 */
+(void) initWithConfig:(APFastPaySdkConfig *)config;


/**
 启动sdk moudule

 @param provider 起始页面
 @param delegate 完成支付后的回调，如不需要可以为nil
 @param params 扩展配置参数
 */
+(void)startAPFastPayModuleWithProvider:(UIViewController *)provider delegate:(id<APFastPayEventDelegate>)delegate Params:(NSDictionary *)params;

@end
