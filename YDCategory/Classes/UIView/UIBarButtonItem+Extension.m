//
//  UIBarButtonItem+Extension.m
//  SZShop
//
//  Created by szgw on 16/10/25.
//  Copyright © 2016年 SZGW. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)
/**
 *  创建一个item
 *
 *  @param target    点击item后调用哪个对象的方法
 *  @param action    点击item后调用target的哪个方法
 *  @param image     图片
 *  @param highImage 高亮的图片
 *
 *  @return 创建完的item
 */
+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:image]  forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    [btn sizeToFit];
//    btn.wtt_size = CGSizeMake(70, 30);
//    btn.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
//    btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}

+ (UIBarButtonItem *)nagativeSpace
{
    UIBarButtonItem *spaceButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    spaceButton.width = -16;
    
    return spaceButton;
}

+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage title:(NSString *)title
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    [btn setTitle:title forState:UIControlStateNormal];
    
    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    
    // 让按钮内部的所有内容左对齐
    btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    
    btn.titleEdgeInsets = UIEdgeInsetsMake(0, 5, 0, 0);
    
    [btn sizeToFit];
    btn.titleLabel.font = [UIFont systemFontOfSize:14];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}

+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action title:(NSString *)title titleColor:(UIColor *)titleColor
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    [btn setTitle:title forState:UIControlStateNormal];
    
    // 让按钮内部的所有内容左对齐
    btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    
//    btn.titleEdgeInsets = UIEdgeInsetsMake(0, 5, 0, 0);
    
    [btn sizeToFit];
    btn.titleLabel.font = [UIFont systemFontOfSize:16];
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}

+ (UIBarButtonItem *)customItemWithTarget:(id)target action:(SEL)action title:(NSString *)title titleColor:(UIColor *)titleColor font:(UIFont *)font
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    [btn setTitle:title forState:UIControlStateNormal];
    
    // 让按钮内部的所有内容左对齐
    btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    
    //    btn.titleEdgeInsets = UIEdgeInsetsMake(0, 5, 0, 0);
    
    [btn sizeToFit];
    btn.titleLabel.font = font;
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}

@end
