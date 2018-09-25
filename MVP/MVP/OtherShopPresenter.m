//
//  OtherShopPresenter.m
//  MVP
//
//  Created by admin on 2018/9/25.
//  Copyright © 2018年 com. All rights reserved.
//

#import "OtherShopPresenter.h"
#import "ShopView.h"
#import "Shop.h"

@interface OtherShopPresenter ()<ShopViewDelegate>

@property(nonatomic, strong)  UILabel*titleLabel;
@property(nonatomic, strong) UILabel *descLabel;
@property(nonatomic, weak) UIViewController *controller;

@end

@implementation OtherShopPresenter
- (instancetype)initWithController:(UIViewController *)controller{
    if (self = [super init]) {
        
        Shop *shop = [Shop new];
        shop.shopName = @"name";
        shop.shopDesc = @"desc";
        
        ShopView *sv = [[ShopView alloc] initWithFrame:CGRectMake(100, 400, 200, 200)];
        sv.delegate = self;
        [sv setName:shop.shopName desc:shop.shopName];
        [controller.view addSubview:sv];
    }
    
    return self;
}

- (void)didClick:(ShopView *)shopView{
    NSLog(@"other presenter did click");
}
@end
