//
//  UIImage+Extension.h
//  SZMap
//
//  Created by Think on 2017/4/18.
//  Copyright © 2017年 Think. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;

+ (instancetype)imageOriginalWithName:(NSString *)imageName;

- (instancetype)sz_circleImage;

+ (instancetype)sz_circleImageNamed:(NSString *)name;
@end
