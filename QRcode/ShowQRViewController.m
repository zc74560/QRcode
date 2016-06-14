//
//  ShowQRViewController.m
//  QRcode
//
//  Created by 赵安 on 16/6/13.
//  Copyright © 2016年 zc. All rights reserved.
//

#import "ShowQRViewController.h"
#import "CreateQRCode.h"

@interface ShowQRViewController ()

@end
@implementation ShowQRViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _QRImg.layer.borderColor = [[UIColor yellowColor] CGColor];
    _QRImg.layer.borderWidth = 1.0;
}

- (IBAction)StartBtnClicked:(id)sender {
    [_input resignFirstResponder];
    _QRImg.image = [CreateQRCode createQRCodeWithString:_input.text ViewController:self];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_input resignFirstResponder];
}

@end
