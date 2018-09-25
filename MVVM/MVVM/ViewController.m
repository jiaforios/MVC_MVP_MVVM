//
//  ViewController.m
//  MVVM
//
//  Created by admin on 2018/9/25.
//  Copyright © 2018年 com. All rights reserved.
/*
 MVVM 类似MVP
 
 viewModel 充当 presenter的角色
 特别之处是：view 会引入 viewModel,
 view 会监听viewModel中值的变化
 有公司使用 rac + mvvm, 但是rac 框架太重
 可选 mvvm + kvoController (facebook)
 */

#import "ViewController.h"
#import "ShopViewModel.h"


@interface ViewController ()
@property(nonatomic, strong) ShopViewModel *shopModel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.shopModel = [[ShopViewModel alloc] initWithController:self];
}

@end
