//
//  BZVerticalButton.m
//  Weitingting
//
//  Created by Think on 2017/11/7.
//  Copyright © 2017年 Think. All rights reserved.
//

#import "BZVerticalButton.h"

@implementation BZVerticalButton

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
    
    
    CGRect imageRect = self.imageView.frame;
    
    imageRect.size = CGSizeMake(55, 55);
    imageRect.origin.x = (self.frame.size.width - 55) * 0.5;
    imageRect.origin.y = 0;
    
    self.imageView.frame = imageRect;
    
    //Center text
    CGRect newFrame = [self titleLabel].frame;
    newFrame.origin.x = 0;
    newFrame.origin.y = self.imageView.frame.size.height + 7;
    newFrame.size.width = self.frame.size.width;
    newFrame.size.height = 16;

    self.titleLabel.frame = newFrame;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
}

- (void)setHighlighted:(BOOL)highlighted
{
    
}
@end
