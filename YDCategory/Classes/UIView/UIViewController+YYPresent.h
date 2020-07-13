//
//  UIViewController+YYPresent.h
//  MY WULING
//
//  Created by Think on 2019/10/11.
//  Copyright © 2019 yonyouios. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (YYPresent)

/// 如果以后迭代版本想全部用系统原来样式，统一返回NO即可
/// rentrn BOOL UIImagePickerController/UIAlertController is NO，others is YES
+ (BOOL)ddy_GlobalAutoSetModalPresentationStyle;

/// 具体某个控制器不想更改了(想用系统默认)设置NO
/// return BOOL [Class ddy_GlobalAutoSetModalPresentationStyle];
@property (nonatomic, assign) BOOL ddy_AutoSetModalPresentationStyle;

@end

NS_ASSUME_NONNULL_END
