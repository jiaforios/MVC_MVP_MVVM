//
//  ShopViewModel.m
//  MVVM
//
//  Created by admin on 2018/9/25.
//  Copyright © 2018年 com. All rights reserved.
//

#import "ShopViewModel.h"
#import "ShopView.h"
#import "Shop.h"

@interface ShopViewModel ()<ShopViewDelegate>
@property(nonatomic, copy) NSString *shopName;
@property(nonatomic, copy) NSString *shopDesc;
@end

@implementation ShopViewModel

- (instancetype)initWithController:(UIViewController *)controller{
    if (self = [super init]) {
        ShopView *sv = [[ShopView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
        sv.delegate = self;
        sv.sModel = self;
        
        Shop *shop = [Shop new];
        shop.shopName = @"name";
        shop.shopDesc = @"desc";
        
        self.shopName = shop.shopName;
        self.shopDesc = shop.shopDesc;
        
        [controller.view addSubview:sv];
        
    }
    
    return self;
}


-(void)didClick:(ShopView *)shopView{
    
    NSLog(@"ShopViewModel did click");
}
@end
