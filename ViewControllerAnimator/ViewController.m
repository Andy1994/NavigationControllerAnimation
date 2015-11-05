//
//  ViewController.m
//  ViewControllerAnimator
//
//  Created by Double on 15/11/4.
//  Copyright © 2015年 wdabo. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+Random.h"

#define ScreenSize [UIScreen mainScreen].bounds.size

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBarHidden = YES;
    self.view.backgroundColor = [UIColor randomColor];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(push:)];
    [self.view addGestureRecognizer:tap];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, ScreenSize.width-20, ScreenSize.width-20)];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.center = CGPointMake(ScreenSize.width/2, ScreenSize.height/2);
    imageView.image = [UIImage imageNamed:@"cake.jpg"];
    [self.view addSubview:imageView];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 64, ScreenSize.width, 30)];
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"点击屏幕跳转";
    [self.view addSubview:label];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake((ScreenSize.width-100)/2, ScreenSize.height-100, 100, 50);
    [button setTitle:@"返回动画" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(pop:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)push:(UITapGestureRecognizer *)tap
{
    ViewController *vc =[[ViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)pop:(UIButton *)button
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
