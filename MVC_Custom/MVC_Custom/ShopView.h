//
//  ShopView.h
//  MVC_Custom
//
//  Created by admin on 2018/9/25.
//  Copyright © 2018年 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class Shop,ShopView;


@protocol ShopViewDelegate <NSObject>

@optional
- (void)didClick:(ShopView *)shopView;


@end

@interface ShopView : UIView

@property(nonatomic, strong) Shop *shop;
@property(nonatomic, weak) id<ShopViewDelegate> delegate;


@end

NS_ASSUME_NONNULL_END
