//
//  Regular.h
//  Alumni
//
//  Created by liujunlin on 14-8-12.
//  Copyright (c) 2014年 wtsc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Regular : NSObject

+ (BOOL) validateEmail:(NSString *)email;

+ (BOOL) validateMobile:(NSString *)mobile;

+ (BOOL) validateCarNo:(NSString *)carNo;

+ (BOOL) validateCarType:(NSString *)CarType;

+ (BOOL) validateUserName:(NSString *)name;

+ (BOOL) validatePassword:(NSString *)passWord;

+ (BOOL) validateNickname:(NSString *)nickname;

+ (BOOL) validateIdentityCard: (NSString *)identityCard;

+ (BOOL)validateBankCard:(NSString *)cardNumber;

@end
