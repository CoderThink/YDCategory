//
//  UIButton+countDown.h
//  Weitingting
//
//  Created by Think on 2017/12/7.
//  Copyright © 2017年 Think. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (countDown)
//为外界提供一个接口
- (void)startWithTime:(NSInteger)timeCount title:(NSString *)title countDownTitle:(NSString *)subTitle;
@end
