//
//  UINavigationController+YDPopToVC.m
//  Eviop
//
//  Created by Think on 2018/4/19.
//  Copyright © 2018年 Think. All rights reserved.
//

#import "UINavigationController+YDPopToVC.h"

@implementation UINavigationController (YDPopToVC)

- (BOOL)popToViewControllerWithClass:(Class)toClass animated:(BOOL)animated {
    for (UIViewController *controller in self.viewControllers) {
        if ([controller isKindOfClass:toClass]) {
            [self popToViewController:controller animated:animated];
            return YES;
        }
    }
    return NO;
}

@end
