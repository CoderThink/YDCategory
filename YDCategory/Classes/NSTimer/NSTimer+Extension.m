//
//  NSTimer+Extension.m
//  SZMap
//
//  Created by Think on 2017/4/18.
//  Copyright © 2017年 Think. All rights reserved.
//

#import "NSTimer+Extension.h"

@implementation NSTimer (Extension)
+ (NSTimer *)yd_scheduledTimerWithTimeInterval:(NSTimeInterval)inerval repeats:(BOOL)repeats block:(void (^)(NSTimer *timer))block{
    
    return [NSTimer scheduledTimerWithTimeInterval:inerval target:self selector:@selector(yd_blcokInvoke:) userInfo:[block copy] repeats:repeats];
}

+ (void)yd_blcokInvoke:(NSTimer *)timer {
    
    void (^block)(NSTimer *timer) = timer.userInfo;
    
    if (block) {
        block(timer);
    }
}
@end
