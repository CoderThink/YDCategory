//
//  UITableView+YDGeneral.m
//  YDArchitectureDemo
//
//  Created by Think on 2018/11/20.
//  Copyright © 2018 Think. All rights reserved.
//

#import "UITableView+YDGeneral.h"
#import "YDGeneralColor.h"

@implementation UITableView (YDGeneral)

- (void)YDGeneral_configuration {
    self.estimatedRowHeight = 44;
    self.estimatedSectionFooterHeight = 0;
    self.estimatedSectionHeaderHeight = 0;
    
    self.separatorInset = UIEdgeInsetsMake(0, 15, 0, 0);
    [self setSeparatorColor:YDGeneralColor.seperaterColor];
    
    if (@available(iOS 11.0, *)) {
        self.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }
}

@end
