//
//  UICollectionView+YDGeneral.m
//  YDArchitectureDemo
//
//  Created by Think on 2018/11/20.
//  Copyright © 2018 Think. All rights reserved.
//

#import "UICollectionView+YDGeneral.h"

@implementation UICollectionView (YDGeneral)

- (void)YDGeneral_configuration {
    if (@available(iOS 11.0, *)) {
        self.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }
}

@end
