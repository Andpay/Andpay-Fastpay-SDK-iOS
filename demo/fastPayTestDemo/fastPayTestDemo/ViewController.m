//
//  ViewController.m
//  fastPayTestDemo
//
//  Created by andpay on 2017/9/18.
//  Copyright © 2017年 com.andpay.me. All rights reserved.
//

#import "ViewController.h"
#import <APFastPaySDK/AndpayFastPaySDK.h>
#import <APFastPaySDK/APFastPayDelegate.h>
#import <APFastPaySDK/APFastPayEvent.h>

@interface ViewController ()<APFastPayEventDelegate>
@property (weak, nonatomic) IBOutlet UITextField *phoneInput;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)onCallsdk:(id)sender {
    NSDictionary *params = nil;

    if (self.phoneInput.text.length == 11 && [[self.phoneInput.text substringToIndex:1] isEqualToString:@"1"]) {
        params = @{@"mobileNo":self.phoneInput.text};
    }
    [AndpayFastPaySDK startAPFastPayModuleWithProvider:self delegate:self Params:params];
}

- (void)apFastPayEventResponse:(APFastPayEvent *)response{
    NSLog(@"%@",response);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
