//
//  UINavigationController+YDPopToVC.h
//  Eviop
//
//  Created by Think on 2018/4/19.
//  Copyright © 2018年 Think. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (YDPopToVC)
- (BOOL)popToViewControllerWithClass:(Class)toClass animated:(BOOL)animated;
@end
