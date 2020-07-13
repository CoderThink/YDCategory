//
//  MBProgressHUD+Add.h
//  SZShop
//
//  Created by szgw on 16/10/31.
//  Copyright © 2016年 SZGW. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (Add)
+ (void)showError:(NSString *)error toView:(UIView *)view;
+ (void)showSuccess:(NSString *)success toView:(UIView *)view;

+ (MBProgressHUD *)showMessag:(NSString *)message toView:(UIView *)view;

+ (MBProgressHUD *)showTip:(NSString *)message toView:(UIView *)view;

+ (void)showSuccess:(NSString *)success;
+ (void)showError:(NSString *)error;
+ (void)showMoreRowMessage:(NSString *)message;
@end
