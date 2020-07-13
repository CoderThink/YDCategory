//
//  NSString+Extension.h
//  SZShop
//
//  Created by szgw on 16/10/25.
//  Copyright © 2016年 SZGW. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extension)
- (NSString *_Nonnull)stringByTrim;

#pragma mark - Drawing
///=============================================================================
/// @name Drawing
///=============================================================================

/**
 Returns the size of the string if it were rendered with the specified constraints.
 
 @param font          The font to use for computing the string size.
 
 @param size          The maximum acceptable size for the string. This value is
 used to calculate where line breaks and wrapping would occur.
 
 @param lineBreakMode The line break options for computing the size of the string.
 For a list of possible values, see NSLineBreakMode.
 
 @return              The width and height of the resulting string's bounding box.
 These values may be rounded up to the nearest whole number.
 */
- (CGSize)sizeForFont:(UIFont *_Nonnull)font size:(CGSize)size mode:(NSLineBreakMode)lineBreakMode;

/**
 Returns the width of the string if it were to be rendered with the specified
 font on a single line.
 
 @param font  The font to use for computing the string width.
 
 @return      The width of the resulting string's bounding box. These values may be
 rounded up to the nearest whole number.
 */
- (CGFloat)widthForFont:(UIFont *_Nonnull)font;

/**
 Returns the height of the string if it were rendered with the specified constraints.
 
 @param font   The font to use for computing the string size.
 
 @param width  The maximum acceptable width for the string. This value is used
 to calculate where line breaks and wrapping would occur.
 
 @return       The height of the resulting string's bounding box. These values
 may be rounded up to the nearest whole number.
 */
- (CGFloat)heightForFont:(UIFont *_Nonnull)font width:(CGFloat)width;

/**
 nil, @"", @"  ", @"\n" will Returns NO; otherwise Returns YES.
 */
- (BOOL)isNotBlank;

+ (BOOL)isNotBlank:(NSString *)string;

/**
 Returns YES if the target string is contained within the receiver.
 @param string A string to test the the receiver.
 
 @discussion Apple has implemented this method in iOS8.
 */
- (BOOL)containsString:(NSString *_Nonnull)string;

/**
 Returns YES if the target CharacterSet is contained within the receiver.
 @param set  A character set to test the the receiver.
 */
- (BOOL)containsCharacterSet:(NSCharacterSet *_Nonnull)set;

/**
 Returns an NSData using UTF-8 encoding.
 */
- (nullable NSData *)dataValue;

/**
 Returns NSMakeRange(0, self.length).
 */
- (NSRange)rangeOfAll;

/**
 Create a string from the file in main bundle (similar to [UIImage imageNamed:]).
 
 @param name The file name (in main bundle).
 
 @return A new string create from the file in UTF-8 character encoding.
 */
+ (nullable NSString *)stringNamed:(NSString *_Nonnull)name;

+(NSString *_Nonnull)md5:(NSString *_Nonnull)str;

//获得设备型号
+ (NSString *_Nonnull)getCurrentDeviceModel;
@end
