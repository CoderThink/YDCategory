//
//  UIButton+BgColor.h
//  BaoZhang
//
//  Created by Think on 2019/8/31.
//  Copyright © 2019 Think. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (BgColor)
- (void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state;

@property (nonatomic, strong) NSString * titleName;

@end

NS_ASSUME_NONNULL_END
