//
//  CQZviewController2.m
//  qq界面仿
//
//  Created by 陈求樟 on 16-4-16.
//  Copyright (c) 2016年 CQZ. All rights reserved.
//

#import "CQZviewController2.h"

@implementation CQZviewController2

@synthesize seg;

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    NSArray *array = [[NSArray alloc] initWithObjects:@"1",@"2",@"3",@"4", nil];
    seg = [[UISegmentedControl alloc] initWithItems:array];
    seg.frame = CGRectMake(0, 65, self.view.bounds.size.width, 50);
    [seg setTitle:@"热门" forSegmentAtIndex:0];
    [seg setTitle:@"分类" forSegmentAtIndex:1];
    [seg setTitle:@"榜单" forSegmentAtIndex:2];
    [seg setTitle:@"推荐" forSegmentAtIndex:3];
    
    seg.selectedSegmentIndex = 0;
    
    [seg addTarget:self action:@selector(onChange:) forControlEvents:UIControlEventValueChanged];
    //FIX:view1 没有初始化
    view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 200, 200)];
    view1.center = self.view.center;
//    view1.frame = CGRectMake(200, 200, 200, 200);
    view1.backgroundColor = [UIColor redColor];
    
    
    view2 = [[UIView alloc]initWithFrame:view1.bounds];
    view2.backgroundColor = [UIColor purpleColor];
    view2.center = view1.center;
    
    [self.view addSubview:view2];
    [self.view addSubview:view1];
    
    [self.view addSubview:seg];
    
}

-(void)onChange:(UISegmentedControl *)segmneted
{
    switch (segmneted.selectedSegmentIndex) {
        case 0:
            [self.view bringSubviewToFront:view1];
            break;
        case 1:{
            //TODO:增加动画效果
            [self.view exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
        }
        default:
            break;
    }
    [self.view bringSubviewToFront:segmneted];//NOTE:这句干嘛的？
    //TODO:每个segment关联一个view，实现点击时不同view切换的时候的动画，透明度、大小、旋转等动画。查看UIView文档
}


@end
