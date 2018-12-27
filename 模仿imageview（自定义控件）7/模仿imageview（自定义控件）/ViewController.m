//
//  ViewController.m
//  模仿imageview（自定义控件）
//
//  Created by apple on 16/7/18.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "ZPImageView.h"

@interface ViewController ()

@property (nonatomic, strong) ZPImageView *imageView;

@end

@implementation ViewController

#pragma mark ————— 生命周期 —————
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.imageView = [[ZPImageView alloc] init];
    self.imageView.image = [UIImage imageNamed:@"aa"];
    self.imageView.frame = CGRectMake(100, 100, 200, 200);
    
//    self.imageView = [[ZPImageView alloc] initWithImage:[UIImage imageNamed:@"aa"]];
    
    [self.view addSubview:self.imageView];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //点击控制器的View的时候会更换图片
    self.imageView.image = [UIImage imageNamed:@"bb"];
}

@end
