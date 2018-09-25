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
 
 
 viewController 尽量不涉及业务逻辑，让 viewModel 去做这些事情。
 viewController 只是一个中间人，接收 view 的事件、调用 viewModel 的方法、响应 viewModel 的变化。
 viewModel 绝对不能包含视图 view（UIKit.h），不然就跟 view 产生了耦合，不方便复用和测试。
 
 viewModel之间可以有依赖。
 
 viewModel避免过于臃肿，否则重蹈Controller的覆辙，变得难以维护。

 
 
 */

#import "ViewController.h"
#import "ShopViewModel.h"
#import "ShopView.h"

@interface ViewController ()<ShopViewDelegate>
@property(nonatomic, strong) ShopViewModel *shopModel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // view
    ShopView *sv = [[ShopView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    sv.delegate = self;
    
    // 创建viewModel 拿到数据  view 持有viewModel,view 内部监听viewModel 属性值 实现绑定
    // view 和 view controller 都不能直接引用model，而是引用视图模型（viewModel）
    
    //    view 引用viewModel ，但反过来不行求，必须满足）
    
    //    viewModel 引用model，但反过来不行
    
    ShopViewModel *viewModel = [[ShopViewModel alloc] init];
    
    sv.sModel = viewModel;
    [viewModel getData];
    [self.view addSubview:sv];
    
}

// 接收 view 的事件
-(void)didClick:(ShopView *)shopView{
    
    
}

@end
