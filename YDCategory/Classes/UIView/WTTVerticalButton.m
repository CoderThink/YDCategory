//
//  WTTVerticalButton.m
//  Weitingting
//
//  Created by Think on 2017/11/7.
//  Copyright © 2017年 Think. All rights reserved.
//

#import "WTTVerticalButton.h"

@implementation WTTVerticalButton

- (void)setup
{
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    [self setup];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    // Center image
    CGPoint center = self.imageView.center;
    center.x = self.frame.size.width / 2;
    center.y = self.imageView.frame.size.height / 2 + 13;
    self.imageView.center = center;
    
    //Center text
    CGRect newFrame = [self titleLabel].frame;
    newFrame.origin.x = 0;
    newFrame.origin.y = self.imageView.frame.size.height + 5 + 15;
    newFrame.size.width = self.frame.size.width;
    
    self.titleLabel.frame = newFrame;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
}

- (void)setHighlighted:(BOOL)highlighted
{
    
}
@end
