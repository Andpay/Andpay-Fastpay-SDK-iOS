//
//  APFastPayEvent.h
//  Andpay-Fastpay-SDK-Demo
//
//  Created by andpay on 2017/9/5.
//  Copyright © 2017年 com.andpay.me. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APFastPayEvent : NSObject
@property (nonatomic, strong)NSString *eventType;
@property (nonatomic, strong)NSDictionary *eventData;
@end
