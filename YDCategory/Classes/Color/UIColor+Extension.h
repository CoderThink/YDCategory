//
//  UIColor+Extension.h
//  SZShop
//
//  Created by szgw on 16/10/25.
//  Copyright © 2016年 SZGW. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Extension)
/**
 Creates and returns a color object from hex string.
 
 @discussion:
 Valid format: #RGB #RGBA #RRGGBB #RRGGBBAA 0xRGB ...
 The `#` or "0x" sign is not required.
 The alpha will be set to 1.0 if there is no alpha component.
 It will return nil when an error occurs in parsing.
 
 Example: @"0xF0F", @"66ccff", @"#66CCFF88"
 
 @param hexStr  The hex string value for the new color.
 
 @return        An UIColor object from string, or nil if an error occurs.
 */

+ (nullable UIColor *)colorWithHexString:(NSString *)hexStr;
@end
