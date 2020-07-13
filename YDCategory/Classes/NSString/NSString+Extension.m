//
//  NSString+Extension.m
//  SZShop
//
//  Created by szgw on 16/10/25.
//  Copyright © 2016年 SZGW. All rights reserved.
//

#import "NSString+Extension.h"
#import <CommonCrypto/CommonDigest.h>
#include <sys/types.h>
#include <sys/sysctl.h>

@implementation NSString (Extension)
- (NSString *)stringByTrim {
    NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    return [self stringByTrimmingCharactersInSet:set];
}

- (CGSize)sizeForFont:(UIFont *)font size:(CGSize)size mode:(NSLineBreakMode)lineBreakMode {
    CGSize result;
    if (!font) font = [UIFont systemFontOfSize:12];
    if ([self respondsToSelector:@selector(boundingRectWithSize:options:attributes:context:)]) {
        NSMutableDictionary *attr = [NSMutableDictionary new];
        attr[NSFontAttributeName] = font;
        if (lineBreakMode != NSLineBreakByWordWrapping) {
            NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
            paragraphStyle.lineBreakMode = lineBreakMode;
            attr[NSParagraphStyleAttributeName] = paragraphStyle;
        }
        CGRect rect = [self boundingRectWithSize:size
                                         options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                      attributes:attr context:nil];
        result = rect.size;
    } else {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        result = [self sizeWithFont:font constrainedToSize:size lineBreakMode:lineBreakMode];
#pragma clang diagnostic pop
    }
    return result;
}

- (CGFloat)widthForFont:(UIFont *)font {
    CGSize size = [self sizeForFont:font size:CGSizeMake(HUGE, HUGE) mode:NSLineBreakByWordWrapping];
    return size.width;
}

- (CGFloat)heightForFont:(UIFont *)font width:(CGFloat)width {
    CGSize size = [self sizeForFont:font size:CGSizeMake(width, HUGE) mode:NSLineBreakByWordWrapping];
    return size.height;
}

- (BOOL)isNotBlank {
    NSCharacterSet *blank = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    for (NSInteger i = 0; i < self.length; ++i) {
        unichar c = [self characterAtIndex:i];
        if (![blank characterIsMember:c]) {
            return YES;
        }
    }
    return NO;
}

+ (BOOL)isNotBlank:(NSString *)string {
    if (string == nil || string == NULL) {
        return NO;
    }
    if ([string isKindOfClass:[NSNull class]]) {
        return NO;
    }
    
    NSCharacterSet *blank = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    for (NSInteger i = 0; i < string.length; ++i) {
        unichar c = [string characterAtIndex:i];
        if (![blank characterIsMember:c]) {
            return YES;
        }
    }
    return NO;
}


- (BOOL)containsString:(NSString *)string {
    if (string == nil) return NO;
    return [self rangeOfString:string].location != NSNotFound;
}

- (BOOL)containsCharacterSet:(NSCharacterSet *)set {
    if (set == nil) return NO;
    return [self rangeOfCharacterFromSet:set].location != NSNotFound;
}

- (NSData *)dataValue {
    return [self dataUsingEncoding:NSUTF8StringEncoding];
}

- (NSRange)rangeOfAll {
    return NSMakeRange(0, self.length);
}


+ (NSString *)stringNamed:(NSString *)name {
    NSString *path = [[NSBundle mainBundle] pathForResource:name ofType:@""];
    NSString *str = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:NULL];
    if (!str) {
        path = [[NSBundle mainBundle] pathForResource:name ofType:@"txt"];
        str = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:NULL];
    }
    return str;
}

+(NSString *)md5:(NSString*)str
{
    const char *cStr = [str UTF8String];
    unsigned char result[16];
    CC_MD5(cStr, (int)strlen(cStr), result);
    
    return [[NSString stringWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
             result[0], result[1], result[2], result[3],
             result[4], result[5], result[6], result[7],
             result[8], result[9], result[10], result[11],
             result[12], result[13], result[14], result[15]
             ] lowercaseString];
    
}

//获得设备型号
+ (NSString *)getCurrentDeviceModel
{
    int mib[2];
    size_t len;
    char *machine;

    mib[0] = CTL_HW;
    mib[1] = HW_MACHINE;
    sysctl(mib, 2, NULL, &len, NULL, 0);
    machine = malloc(len);
    sysctl(mib, 2, machine, &len, NULL, 0);

    NSString *platform = [NSString stringWithCString:machine encoding:NSASCIIStringEncoding];
    free(machine);
    // iPhone
    if ([platform isEqualToString:@"iPhone1,1"]) return @"iPhone2G";
    if ([platform isEqualToString:@"iPhone1,2"]) return @"iPhone3G";
    if ([platform isEqualToString:@"iPhone2,1"]) return @"iPhone3GS";
    if ([platform isEqualToString:@"iPhone3,1"]) return @"iPhone4";
    if ([platform isEqualToString:@"iPhone3,2"]) return @"iPhone4";
    if ([platform isEqualToString:@"iPhone3,3"]) return @"iPhone4";
    if ([platform isEqualToString:@"iPhone4,1"]) return @"iPhone4S";
    if ([platform isEqualToString:@"iPhone5,1"]) return @"iPhone5";
    if ([platform isEqualToString:@"iPhone5,2"]) return @"iPhone5";
    if ([platform isEqualToString:@"iPhone5,3"]) return @"iPhone5c";
    if ([platform isEqualToString:@"iPhone5,4"]) return @"iPhone5c";
    if ([platform isEqualToString:@"iPhone6,1"]) return @"iPhone5s";
    if ([platform isEqualToString:@"iPhone6,2"]) return @"iPhone5s";
    if ([platform isEqualToString:@"iPhone7,2"]) return @"iPhone6";
    if ([platform isEqualToString:@"iPhone7,1"]) return @"iPhone6Plus";
    if ([platform isEqualToString:@"iPhone8,1"]) return @"iPhone6s";
    if ([platform isEqualToString:@"iPhone8,2"]) return @"iPhone6sPlus";
    if ([platform isEqualToString:@"iPhone8,3"]) return @"iPhoneSE";
    if ([platform isEqualToString:@"iPhone8,4"]) return @"iPhoneSE";
    if ([platform isEqualToString:@"iPhone9,1"]) return @"iPhone7";
    if ([platform isEqualToString:@"iPhone9,2"]) return @"iPhone7Plus";
    return platform;
}
@end
