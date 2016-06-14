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
    _SaveBtn.enabled=NO;
}

- (IBAction)StartBtnClicked:(id)sender {
    [_input resignFirstResponder];
    _QRImg.image = [CreateQRCode createQRCodeWithString:_input.text ViewController:self];
    if(_QRImg.image!=nil){
        _SaveBtn.enabled=YES;
    }
}

- (IBAction)SaveBtnClicked:(id)sender {
    UIImageWriteToSavedPhotosAlbum(_QRImg.image, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_input resignFirstResponder];
}

-(void)image: (UIImage *) image didFinishSavingWithError: (NSError *) error contextInfo: (void *) contextInfo{
    NSString *msg=nil;
    if(error!=NULL){
        msg=@"保存失败";
    }else{
        msg=@"保存成功";
    }
    UIAlertController *alrtController =[UIAlertController alertControllerWithTitle:@"保存图片结果" message:msg preferredStyle:UIAlertControllerStyleAlert];
    [alrtController addAction:[UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:nil]];
    [self presentViewController:alrtController animated:YES completion:nil];
}

@end
