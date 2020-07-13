//
//  NSString+Size.h
//  SZShop
//
//  Created by szgw on 15/10/7.
//  Copyright (c) 2015年 syshop. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Size)
//计算文本的宽高
-(CGSize)sizeWithFont:(UIFont *)font maxW:(CGFloat)maxW;

-(CGSize)sizeWithFont:(UIFont *)font;
@end
