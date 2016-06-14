//
//  Header.h
//  QRcode
//
//  Created by 赵安 on 16/6/13.
//  Copyright © 2016年 zc. All rights reserved.
//

#ifndef Header_h
#define Header_h

#import "UIFont+MyFont.h"
#import "UIView+MyView.h"
#import "SystemFunctions.h"

#define kBgImgX             112*ratio
#define kBgImgY             (160+150)*ratio
#define kBgImgWidth         575*ratio

#define kScrollLineHeight   50*ratio

#define kTipY               (kBgImgY+kBgImgWidth+kTipHeight)
#define kTipHeight          100*ratio

#define kLampX              ([[UIScreen mainScreen] bounds].size.width-kLampWidth)/2
#define kLampY              ([[UIScreen mainScreen] bounds].size.height-kLampWidth-75*ratio)
#define kLampWidth          160*ratio

#define kshowQRX              (90*ratio)
#define kshowQRY              ([[UIScreen mainScreen] bounds].size.height-kLampWidth-75*ratio)
#define kshowQRWidth          160*ratio

#define kphotoX              ([[UIScreen mainScreen] bounds].size.width-90*ratio-kLampWidth)
#define kphotoY              ([[UIScreen mainScreen] bounds].size.height-kLampWidth-75*ratio)
#define kphotoWidth          160*ratio

#define kBgAlpha            0.6

static NSString *bgImg_img = @"image.bundle/scanBackground";
static NSString *Line_img = @"image.bundle/scanLine";
static NSString *turn_on = @"image.bundle/turn_on";
static NSString *turn_off = @"image.bundle/turn_off";
static NSString *QR=@"image.bundle/QR";
static NSString *myPhoto=@"image.bundle/myPhoto";
static NSString *ringPath = @"image.bundle/ring";
static NSString *ringType = @"wav";

#endif /* Header_h */
