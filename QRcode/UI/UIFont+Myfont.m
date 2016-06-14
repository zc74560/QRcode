//
//  UIFont+Myfont.m
//  QRcode
//
//  Created by 赵安 on 16/6/13.
//  Copyright © 2016年 zc. All rights reserved.
//

#import "UIFont+Myfont.h"
#import "UIView+MyView.h"

@implementation UIFont (Myfont)

+ (UIFont *)FontWithSize:(CGFloat)size {
    CGFloat realSize = size *ratio;
    return [UIFont systemFontOfSize:realSize];
}

@end
