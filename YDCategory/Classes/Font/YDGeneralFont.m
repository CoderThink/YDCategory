//
//  YDGeneralFont.m
//  YDArchitectureDemo
//
//  Created by Think on 2018/11/19.
//  Copyright © 2018 Think. All rights reserved.
//

#import "YDGeneralFont.h"

@implementation YDGeneralFont

+ (UIFont *)navigationBarTitleFont {
    return [self fontWithMediumSize:18];
}

+ (UIFont *)fontWithRegularSize:(CGFloat)fontSize{
    return [UIFont fontWithName:@"PingFangSC-Regular" size:fontSize];
}

+ (UIFont *)fontWithSemiboldSize:(CGFloat)fontSize{
    return [UIFont fontWithName:@"PingFangSC-Semibold" size:fontSize];
}

+ (UIFont *)fontWithMediumSize:(CGFloat)fontSize{
    return [UIFont fontWithName:@"PingFangSC-Medium" size:fontSize];
}

@end
