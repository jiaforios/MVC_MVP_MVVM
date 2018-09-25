//
//  ShopView.m
//  MVC_Custom
//
//  Created by admin on 2018/9/25.
//  Copyright © 2018年 com. All rights reserved.
//

#import "ShopView.h"
#import "NSObject+FBKVOController.h"



@interface  ShopView ()

@property(nonatomic, strong) UILabel *titleLabel;
@property(nonatomic, strong) UILabel *descLabel;

@end


@implementation ShopView


- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor lightGrayColor];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 30)];
        _titleLabel.backgroundColor = [UIColor redColor];
        _descLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 150, 100, 30)];
        _descLabel.backgroundColor = [UIColor blueColor];
        
        [self addSubview:_titleLabel];
        [self addSubview:_descLabel];
    }
    
    return self;
}



- (void)setSModel:(ShopViewModel *)sModel{
    
    __weak typeof (self) weakSelf = self;
    
    [self.KVOController observe:sModel keyPath:@"shopName" options:NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSKeyValueChangeKey,id> * _Nonnull change) {
        weakSelf.titleLabel.text = change[NSKeyValueChangeNewKey];
    }];
    
    [self.KVOController observe:sModel keyPath:@"shopDesc" options:NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSKeyValueChangeKey,id> * _Nonnull change) {
        weakSelf.descLabel.text = change[NSKeyValueChangeNewKey];
    }];
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if ([self.delegate respondsToSelector:@selector(didClick:)]) {
        [self.delegate didClick:self];
    }
}

@end
