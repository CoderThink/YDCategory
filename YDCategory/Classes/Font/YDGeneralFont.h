//
//  YDGeneralFont.h
//  YDArchitectureDemo
//
//  Created by Think on 2018/11/19.
//  Copyright © 2018 Think. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface YDGeneralFont : NSObject

/** 导航栏标题字体 */
+ (UIFont *)navigationBarTitleFont;

+ (UIFont *)fontWithRegularSize:(CGFloat)fontSize;

+ (UIFont *)fontWithSemiboldSize:(CGFloat)fontSize;

+ (UIFont *)fontWithMediumSize:(CGFloat)fontSize;

@end

NS_ASSUME_NONNULL_END
