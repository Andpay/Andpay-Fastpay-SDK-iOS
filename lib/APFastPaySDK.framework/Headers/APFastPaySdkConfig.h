//
//  APFastPaySdkConfig.h
//  Andpay-Fastpay-SDK
//
//  Created by andpay on 2017/8/28.
//  Copyright © 2017年 com.andpay.me. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
// SDK运行环境
typedef enum{
    APFastPayTestEnvironment = 0, //测试环境
    APFastPayProductEnvironment = 1, //生产环境
}APFastPayRuntimeEnvironment;

@interface APFastPaySdkConfig : NSObject
/**
 * sdk运行环境
 */
@property (nonatomic, assign) APFastPayRuntimeEnvironment environment;

/**
 * 开启debug日志模式开关
 */
@property (nonatomic, assign) BOOL isDebug;


@end
