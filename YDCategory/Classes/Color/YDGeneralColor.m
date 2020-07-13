//
//  YDGeneralColor.m
//  YDArchitectureDemo
//
//  Created by Think on 2018/11/19.
//  Copyright © 2018 Think. All rights reserved.
//

#import "YDGeneralColor.h"
#import "UIColor+Extension.h"

@implementation YDGeneralColor

+ (UIColor *)themeColor {
    return [UIColor orangeColor];
}

+ (UIColor *)navigationBarColor {
    return [UIColor colorWithHexString:@"#06A0FF"];
}

+ (UIColor *)navigationBarTitleColor {
    return [UIColor whiteColor];
}

+ (UIColor *)tabBarTitleNormalColor {
    return [UIColor colorWithHexString:@"#999999"];
}

+ (UIColor *)tabBarTitleSelectedColor {
    return [UIColor colorWithHexString:@"#159DFC"];
}

+ (UIColor *)seperaterColor {
    return [UIColor groupTableViewBackgroundColor];
}

@end
