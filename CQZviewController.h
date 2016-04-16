//
//  CQZviewController.h
//  qq界面仿
//
//  Created by 陈求樟 on 16-4-16.
//  Copyright (c) 2016年 CQZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CQZviewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)UITableView *tableview;
@property(nonatomic, strong)NSArray *array;


@end
