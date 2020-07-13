//
//  YDRefreshHeader.m
//  Weitingting
//
//  Created by Think on 2017/12/14.
//  Copyright © 2017年 Think. All rights reserved.
//

#import "YDRefreshHeader.h"

@implementation YDRefreshHeader

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        // 隐藏时间
        self.lastUpdatedTimeLabel.hidden = YES;
        // 自动切换透明度
        self.automaticallyChangeAlpha = YES;
    }
    return self;
}

@end
