//
//  UIViewController+YDGeneral.m
//  YDArchitectureDemo
//
//  Created by Think on 2018/11/19.
//  Copyright © 2018 Think. All rights reserved.
//

#import "UIViewController+YDGeneral.h"

@implementation UIViewController (YDGeneral)

- (void)YDGeneral_baseConfig {
    self.view.backgroundColor = [UIColor whiteColor];
    self.automaticallyAdjustsScrollViewInsets = NO;
}

@end

@implementation UIViewController (YDGeneralBackItem)

- (void)YDGeneral_configBackItem {
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithTitle:nil style:UIBarButtonItemStylePlain target:self action:@selector(YDGeneral_clickBackItem:)];
    backItem.image = [[UIImage imageNamed:@"back"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.navigationItem.leftBarButtonItem = backItem;
}

- (void)YDGeneral_clickBackItem:(UIBarButtonItem *)item {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
