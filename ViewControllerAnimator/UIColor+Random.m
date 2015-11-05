//
//  UIColor+Random.m
//  SofaTime
//
//  Created by Double on 15/10/19.
//  Copyright (c) 2015年 wdabo. All rights reserved.
//

#import "UIColor+Random.h"

@implementation UIColor (Random)

+ (UIColor *)randomColor
{
    CGFloat red = arc4random()%255/255.0;
    CGFloat green = arc4random()%255/255.0;
    CGFloat blue = arc4random()%255/255.0;
    return [UIColor colorWithRed:red green:green blue:blue alpha:1];
}

@end
