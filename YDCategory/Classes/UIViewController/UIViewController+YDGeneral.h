//
//  UIViewController+YDGeneral.h
//  YDArchitectureDemo
//
//  Created by Think on 2018/11/19.
//  Copyright © 2018 Think. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (YDGeneral)

/** 基础配置 */
- (void)YDGeneral_baseConfig;

@end

@interface UIViewController (YDGeneralBackItem)

/** 配置通用系统导航栏返回按钮 */
- (void)YDGeneral_configBackItem;

/** 重写该方法以自定义系统导航栏返回按钮点击事件 */
- (void)YDGeneral_clickBackItem:(UIBarButtonItem *)item;

@end

NS_ASSUME_NONNULL_END
