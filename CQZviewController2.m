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
    
    [seg addTarget:self action:@selector(onChange:) forControlEvents:UIControlEventAllEvents];
    
    view1.frame = CGRectMake(200, 200, 200, 200);
    view1.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:view1];
    
    [self.view addSubview:seg];
    
}

-(void)onChange:(UISegmentedControl *)segmneted
{
    switch (segmneted.selectedSegmentIndex) {
        case 0:
            [self.view bringSubviewToFront:view1];
            break;
            
        default:
            break;
    }
    [self.view bringSubviewToFront:segmneted];
}


@end
