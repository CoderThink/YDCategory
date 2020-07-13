//
//  UIViewController+YDGeneralHook.m
//  YDArchitectureDemo
//
//  Created by Think on 2018/11/19.
//  Copyright © 2018 Think. All rights reserved.
//

#import "UIViewController+YDGeneralHook.h"
#import "UIViewController+YDGeneral.h"
#import <objc/runtime.h>

@implementation UIViewController (YDGeneralHook)

+ (void)load {
    [self YDGeneralHook_exchangeImplementationsWithOriginSel:@selector(viewDidLoad) customSel:@selector(YDGeneralHook_viewDidLoad)];
}

+ (void)YDGeneralHook_exchangeImplementationsWithOriginSel:(SEL)originSel customSel:(SEL)customSel {
    Method origin = class_getInstanceMethod(self, originSel);
    Method custom = class_getInstanceMethod(self, customSel);
    if (origin && custom) {
        method_exchangeImplementations(origin, custom);
    }
}

- (void)YDGeneralHook_viewDidLoad {
    NSLog(@"进入：%@", self);
    if (self.navigationController && [self.navigationController.viewControllers indexOfObject:self] != 0) {
        [self YDGeneral_configBackItem];
        [self YDGeneral_baseConfig];
    }
    
    [self YDGeneralHook_viewDidLoad];
}


@end
