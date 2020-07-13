//
//  NSLayoutConstraintOnePixelLine.m
//  SZShop
//
//  Created by Think on 2017/7/31.
//  Copyright © 2017年 Think. All rights reserved.
//

#import "NSLayoutConstraintOnePixelLine.h"
#import "UIView+Extension.h"

@implementation NSLayoutConstraintOnePixelLine

- (void)awakeFromNib
{
    [super awakeFromNib];
    if (self.constant == 1) {
        self.constant = OnePixelToPoint();
    }
}

@end
