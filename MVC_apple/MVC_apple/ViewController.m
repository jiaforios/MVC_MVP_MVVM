//
//  ViewController.m
//  MVC_apple
//
//  Created by admin on 2018/9/25.
//  Copyright © 2018年 com. All rights reserved.
/*
 MVC_apple
 */

#import "ViewController.h"
#import "MVCTableViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UILabel *label =[[ UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 100)];
    label.text = @"点击进入MVC_APPLE";
    label.textColor = [UIColor redColor];
    [self.view addSubview:label];

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self.navigationController pushViewController:[MVCTableViewController new] animated:YES];
}

@end
