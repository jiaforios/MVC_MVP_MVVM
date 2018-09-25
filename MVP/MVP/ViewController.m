//
//  ViewController.m
//  MVP
//
//  Created by admin on 2018/9/25.
//  Copyright © 2018年 com. All rights reserved.
/*
 MVP 模式能够实现 controller 的进一步瘦身，将view 与 model 封装到presenter中
 view 将事件反馈到presenter
 
 多个模块可以选择多个presenter
 
 
 其中view 与model 之间解耦，利用presenter 实现model与view的交互
 相当于将原 MVC 模式下的 view与model 可复用，可独立，优点体现出来
 同时 view 与model 赋值过程 分presenter 隔离开，优化了 controller的y臃肿
 
 但是 presenter 之间view 布局变得麻烦了，可以将按一屏界面分presenter，便于布局

 presenter 与controller之间 尽量不要交互
 
 */



/*
 
 该MVP 模式不够合理
 P 中应该只处理数据逻辑
 
 应该类似 MVVM 不过没有 监听方案，可以值返回处理
 
 */

#import "ViewController.h"
#import "ShopPresenter.h"
#import "OtherShopPresenter.h"


@interface ViewController ()

@property(nonatomic, strong) ShopPresenter *presenter;
@property(nonatomic, strong) OtherShopPresenter *otherPresenter;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.presenter = [[ShopPresenter alloc] initWithController:self];
    self.otherPresenter = [[OtherShopPresenter alloc] initWithController:self];
    
}


@end
