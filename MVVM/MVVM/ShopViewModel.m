//
//  ShopViewModel.m
//  MVVM
//
//  Created by admin on 2018/9/25.
//  Copyright © 2018年 com. All rights reserved.
//

#import "ShopViewModel.h"
#import "Shop.h"

@interface ShopViewModel ()
@property(nonatomic, copy) NSString *shopName;
@property(nonatomic, copy) NSString *shopDesc;
@end

@implementation ShopViewModel

- (void)getData{
    
    Shop *shop = [Shop new];
    shop.shopName = @"name";
    shop.shopDesc = @"desc";
    
    self.shopName = shop.shopName;
    self.shopDesc = shop.shopDesc;
    // 本地或网络
}

@end
