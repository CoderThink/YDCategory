//
//  YDExpansionButton.m
//  Eviop
//
//  Created by Think on 2018/1/16.
//  Copyright © 2018年 Think. All rights reserved.
//

#import "YDExpansionButton.h"

@implementation YDExpansionButton

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent*)event
{
    //获取当前button的实际大小
    CGRect bounds = self.bounds;
    
    //若原热区小于44x44，则放大热区，否则保持原大小不变
    CGFloat widthDelta = MAX(44.0 - bounds.size.width, 0);
    CGFloat heightDelta = MAX(44.0 - bounds.size.height, 0);
    
    //扩大bounds(注意这里是负数，扩大了之前的bounds的范围)
    bounds = CGRectInset(bounds, -0.5 * widthDelta, -0.5 * heightDelta);
    
    //如果点击的点在新的bounds里，就返回YES
    return CGRectContainsPoint(bounds, point);
    
}

@end
