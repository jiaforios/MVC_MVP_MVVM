//
//  ViewController.m
//  MVC_Custom
//
//  Created by admin on 2018/9/25.
//  Copyright © 2018年 com. All rights reserved.
/*
 变种版 MVC 隐藏了view的实现，view 通过delegate 将事件通知到 controller
 同时也改善了controller的臃肿问题
 
 缺点是：view 依赖 model 二者绑定在一起，不利于复用
 
 */

#import "ViewController.h"
#import "ShopView.h"
#import "Shop.h"


@interface ViewController ()<ShopViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    Shop *shop = [Shop new];
    shop.shopName = @"name";
    shop.shopDesc = @"desc";
    
    ShopView *sv = [[ShopView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    sv.delegate = self;
    sv.shop = shop;
    [self.view addSubview:sv];

}

-(void)didClick:(ShopView *)shopView{
    NSLog(@" shop view did click");
}


@end
