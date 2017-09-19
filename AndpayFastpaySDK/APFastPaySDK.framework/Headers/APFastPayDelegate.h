//
//  APFastPayDelegate.h
//  Andpay-Fastpay-SDK-Demo
//
//  Created by andpay on 2017/9/7.
//  Copyright © 2017年 com.andpay.me. All rights reserved.
//

#ifndef APFastPayDelegate_h
#define APFastPayDelegate_h
@class APFastPayEvent;
@protocol APFastPayEventDelegate <NSObject>

@optional
-(void)apFastPayEventResponse:(APFastPayEvent *)response;

@end

#endif /* APFastPayDelegate_h */
