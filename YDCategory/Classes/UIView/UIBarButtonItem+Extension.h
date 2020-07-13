//
//  UIBarButtonItem+Extension.h
//  SZShop
//
//  Created by szgw on 16/10/25.
//  Copyright © 2016年 SZGW. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)

+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage;

+ (UIBarButtonItem *)nagativeSpace;

+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage title:(NSString *)title;

+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action title:(NSString *)title titleColor:(UIColor *)titleColor;

+ (UIBarButtonItem *)customItemWithTarget:(id)target action:(SEL)action title:(NSString *)title titleColor:(UIColor *)titleColor font:(UIFont *)font;
@end
