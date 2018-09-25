//
//  MVCTableViewController.m
//  MVC_apple
//
//  Created by admin on 2018/9/25.
//  Copyright © 2018年 com. All rights reserved.
/*
 
 【model】<-【controller】->【view】
         ->              <-
 
 UITableViewController 是苹果对 其 MVC 模式的完美诠释
 controller 持有view(tableView)
    view 从controller中获取数据 (dataSource)
    view 可以将事件反馈到controller (delegate)
 
 controller 持有model
    model 传递数据给controller
 
 view 与model 之间没关系
 view 与model 都可以重复利用、可以独立使用

 缺点是：

 如果view 过于复杂，controller 处理 view 与model 的关系就复杂，导致controller 臃肿
 
 
*/

#import "MVCTableViewController.h"
#import "Shop.h"

@interface MVCTableViewController ()
@property(nonatomic, strong) NSMutableArray *shopDatas;

@end

@implementation MVCTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadData];
}

- (void)loadData{
    
    self.shopDatas = [NSMutableArray array];
    for (int i=0; i<20; i++) {
        Shop *shop = [[Shop alloc] init];
        shop.shopName  = [NSString stringWithFormat:@"商品名称 -%d",i];
        shop.shopDesc = [NSString stringWithFormat:@"商品描述 - %d",i];
        [self.shopDatas addObject:shop];
    }
    
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.shopDatas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    Shop *shop = self.shopDatas[indexPath.row];
    cell.textLabel.text = shop.shopName;
    cell.detailTextLabel.text = shop.shopDesc;
    return cell;
}


@end
