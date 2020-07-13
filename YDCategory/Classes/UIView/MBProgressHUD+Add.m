////
////  MBProgressHUD+Add.m
////  SZShop
////
////  Created by szgw on 16/10/31.
////  Copyright © 2016年 SZGW. All rights reserved.
////
//
////#import "MBProgressHUD+Add.h"
//#import <MBProgressHUD/MBProgressHUD.h>
//
//@implementation MBProgressHUD (Add)
//#pragma mark 显示信息
//+ (void)show:(NSString *)text icon:(NSString *)icon view:(UIView *)view
//{
//    if (view == nil) view = [UIApplication sharedApplication].keyWindow;
//    // 快速显示一个提示信息
//    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
//    hud.label.text = text;
//    // 设置图片
//    //    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"MBProgressHUD.bundle/%@", icon]]];
//    // 再设置模式
//    hud.mode = MBProgressHUDModeCustomView;
//    
//    // 隐藏时候从父控件中移除
//    hud.removeFromSuperViewOnHide = YES;
//    
//    // 1秒之后再消失
//    [hud hideAnimated:YES afterDelay:1.0];
//}
//
//#pragma mark 显示错误信息
//+ (void)showError:(NSString *)error toView:(UIView *)view{
//    [self show:error icon:@"error.png" view:view];
//}
//
//+ (void)showSuccess:(NSString *)success toView:(UIView *)view
//{
//    [self show:success icon:@"success.png" view:view];
//}
//
//+ (void)showMoreRowMessage:(NSString *)message
//{
//    [self showMoreRowMessag:message toView:nil];
//}
//
//#pragma mark 显示一些信息
//+ (MBProgressHUD *)showMessag:(NSString *)message toView:(UIView *)view {
//    if (view == nil) view = [UIApplication sharedApplication].keyWindow;
//    // 快速显示一个提示信息
//    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
//    
//    hud.label.text = message;
//    // 隐藏时候从父控件中移除
//    hud.removeFromSuperViewOnHide = YES;
//    // YES代表需要蒙版效果
////    hud.backgroundColor = [UIColor blackColor];
//    return hud;
//}
//
//+ (MBProgressHUD *)showMoreRowMessag:(NSString *)message toView:(UIView *)view {
//    if (view == nil) view = [UIApplication sharedApplication].keyWindow;
//    // 快速显示一个提示信息
//    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
//    hud.mode = MBProgressHUDModeText;
//    hud.detailsLabel.font = [UIFont boldSystemFontOfSize:14];
//    hud.detailsLabel.text = message;
//    // 隐藏时候从父控件中移除
//    hud.removeFromSuperViewOnHide = YES;
//    // YES代表需要蒙版效果
//    [hud hideAnimated:YES afterDelay:1.0];
//    return hud;
//}
//
//
//+ (void)showSuccess:(NSString *)success
//{
//    [self showSuccess:success toView:nil];
//}
//
//+ (void)showError:(NSString *)error
//{
//    [self showError:error toView:nil];
//}
//
//+ (MBProgressHUD *)showTip:(NSString *)message toView:(UIView *)view
//{
//    if (view == nil) view = [UIApplication sharedApplication].keyWindow;
//    // 快速显示一个提示信息
//    MBProgressHUD *hud = [[MBProgressHUD alloc] initWithView:view];
//    hud.label.text = message;
//    // 隐藏时候从父控件中移除
//    hud.removeFromSuperViewOnHide = YES;
//    // YES代表需要蒙版效果
//    return hud;
//    
//}
//@end
