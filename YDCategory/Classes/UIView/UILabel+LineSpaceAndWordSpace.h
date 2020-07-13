//
//  UILabel+LineSpaceAndWordSpace.h
//  SZShop
//
//  Created by szgw on 16/11/3.
//  Copyright © 2016年 SZGW. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (LineSpaceAndWordSpace)
/**
 *  改变行间距
 */
+ (void)lineSpaceForLabel:(UILabel *)label space:(float)space;

/**
 *  改变字间距
 */
+ (void)wordSpaceForLabel:(UILabel *)label space:(float)space;

/**
 *  改变行间距和字间距
 */
+ (void)spaceForLabel:(UILabel *)label lineSpace:(float)lineSpace wordSpace:(float)wordSpace;

@end
