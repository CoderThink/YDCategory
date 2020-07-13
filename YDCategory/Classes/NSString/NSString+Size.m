//
//  NSString+Size.m
//  SZShop
//
//  Created by szgw on 15/10/7.
//  Copyright (c) 2015年 syshop. All rights reserved.
//

#import "NSString+Size.h"

@implementation NSString (Size)
-(CGSize)sizeWithFont:(UIFont *)font maxW:(CGFloat)maxW
{
    NSMutableDictionary *attrs=[NSMutableDictionary dictionary];
    attrs[NSFontAttributeName]=font;
    CGSize maxSize = CGSizeMake(maxW, MAXFLOAT);
    // 算文字的尺寸
    return [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading attributes:attrs context:nil].size;
}

-(CGSize)sizeWithFont:(UIFont *)font
{
    return [self sizeWithFont:font maxW:MAXFLOAT];
}
@end
