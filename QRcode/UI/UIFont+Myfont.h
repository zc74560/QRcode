//
//  UIFont+Myfont.h
//  QRcode
//
//  Created by 赵安 on 16/6/13.
//  Copyright © 2016年 zc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIFont (Myfont)

/**
 *设置字体方法；根据不同手机型号，改变字体大小
 *@param   size   当前机型下字体大小
 *@return  适配的字体大小
 */
+ (UIFont *)FontWithSize:(CGFloat)size;

@end
