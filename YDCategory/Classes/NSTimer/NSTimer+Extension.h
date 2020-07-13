//
//  NSTimer+Extension.h
//  SZMap
//
//  Created by Think on 2017/4/18.
//  Copyright © 2017年 Think. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (Extension)
+ (NSTimer *)yd_scheduledTimerWithTimeInterval:(NSTimeInterval)inerval
                                        repeats:(BOOL)repeats
                                          block:(void(^)(NSTimer *timer))block;
@end
