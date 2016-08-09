//
//  ViewController.m
//  BannerView
//
//  Created by houzhijun on 16/6/24.
//  Copyright © 2016年 houzhijun. All rights reserved.
//

#import "ViewController.h"
#import "LBBannerView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //模拟数据源
    NSArray *imagesArray = @[[UIImage imageNamed:@"kobe1.jpg"],
                             [UIImage imageNamed:@"kobe2.jpg"],
                             [UIImage imageNamed:@"kobe3.jpg"],
                             [UIImage imageNamed:@"kobe4.jpg"],
                             [UIImage imageNamed:@"kobe5.jpg"],
                             [UIImage imageNamed:@"kobe6.jpg"]];
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 300)];
    view.backgroundColor = [UIColor clearColor];
    
    

    //创建轮播器控件
    LBBannerView *bannerView = [[LBBannerView alloc] initViewWithFrame:CGRectMake(20, 44, self.view.frame.size.width, 220) autoPlayTime:2.0f imagesArray:imagesArray clickCallBack:^(NSInteger index) {
//        NSLog(@"点击了第%ld张图片",index);
        if (index == 1) {
            NSLog(@"1");
        }else if (index == 2){
            NSLog(@"2");
        }else if (index == 3){
            
        }
        
        
    }];
    [view addSubview:bannerView];

    [self.view addSubview:view];

    
}



@end
