//
//  ShowQRViewController.h
//  QRcode
//
//  Created by 赵安 on 16/6/13.
//  Copyright © 2016年 zc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShowQRViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *input;
@property (strong, nonatomic) IBOutlet UIImageView *QRImg;
- (IBAction)StartBtnClicked:(id)sender;

@end
