//
//  UILabel+LineSpaceAndWordSpace.m
//  SZShop
//
//  Created by szgw on 16/11/3.
//  Copyright © 2016年 SZGW. All rights reserved.
//

#import "UILabel+LineSpaceAndWordSpace.h"

@implementation UILabel (LineSpaceAndWordSpace)
+ (void)lineSpaceForLabel:(UILabel *)label space:(float)space {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:label.text];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:space];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [label.text length])];
    label.attributedText = attributedString;
    [label sizeToFit];
    
}

+ (void)wordSpaceForLabel:(UILabel *)label space:(float)space {
    
    NSString *labelText = label.text;
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:labelText attributes:@{NSKernAttributeName:@(space)}];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [labelText length])];
    label.attributedText = attributedString;
    [label sizeToFit];
    
}

+ (void)spaceForLabel:(UILabel *)label lineSpace:(float)lineSpace wordSpace:(float)wordSpace {
    
    NSString *labelText = label.text;
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:labelText attributes:@{NSKernAttributeName:@(wordSpace)}];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:lineSpace];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [labelText length])];
    label.attributedText = attributedString;
    [label sizeToFit];
    
}

@end
