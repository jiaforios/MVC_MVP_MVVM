//
//  ShopView.m
//  MVC_Custom
//
//  Created by admin on 2018/9/25.
//  Copyright © 2018年 com. All rights reserved.
//

#import "ShopView.h"

@interface  ShopView ()
@property(nonatomic, strong)  UILabel*titleLabel;
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


- (void)setName:(NSString *)name desc:(NSString *)desc{
    self.titleLabel.text = name;
    self.descLabel.text = desc;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if ([self.delegate respondsToSelector:@selector(didClick:)]) {
        [self.delegate didClick:self];
    }
}

@end
